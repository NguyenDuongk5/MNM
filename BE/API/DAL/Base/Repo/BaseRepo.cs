using DAL.Base.IRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Reflection;
using System.Runtime.Intrinsics.Arm;
using static Dapper.SqlMapper;
using MySqlConnector;
namespace DAL.Base.Repo
{
    public class BaseRepo<Entity, Dto> : IBaseRepo<Entity, Dto>
    {
        public const string _connectionString = "Server=localhost;Database=du_an;UserID=root;Password=2402;";
        //public const string _connectionString = "Server=localhost;Port=3306;Database=du_an;User=root;Password=admin123;";

        private string GetNameTable()
        {
            try
            {
                // Lấy attribute [Table] của class
                var tableAttr = typeof(Entity)
                    .GetCustomAttribute<TableAttribute>();

                return tableAttr.Name;
            }
            catch
            {
                throw new Exception("Đm mày khai báo table cho tao");
            }
        }
        public async Task<List<Entity>> GetAll()
        {
            using var conn = new MySqlConnection(_connectionString);
            await conn.OpenAsync();

            var tableName = GetNameTable();
            var sql = $"SELECT * FROM {tableName};";

            var result = await conn.QueryAsync<Entity>(sql);
            return result.AsList();
        }

        public async Task<int> Insert(Entity entity)
        {
            using var conn = new MySqlConnection(_connectionString);
            await conn.OpenAsync();
            var tableName = GetNameTable();
            var props = typeof(Entity).GetProperties()
                .Where(p =>
                    p.CanRead &&
                    p.GetValue(entity) != null &&
                    !Attribute.IsDefined(p, typeof(NotMappedAttribute))

                );

            /// Ghép danh sách tên cột: "Name,Age,Address"
            var columns = string.Join(",", props.Select(p => p.Name));
            /// Ghép danh sách tham số: "@Name,@Age,@Address"
            var values = string.Join(",", props.Select(p => "@" + p.Name));

            var sql = $"INSERT INTO {tableName} ({columns})" +
                $"VALUE({values})";
            var result = await conn.ExecuteAsync(sql, entity);
            return result; // 
        }

        public async Task<int> Delete(Guid pkId)
        {
            using var conn = new MySqlConnection(_connectionString);
            await conn.OpenAsync();

            /// Lấy tên bảng từ Entity (theo convention class = table)
            var tableName = GetNameTable();
            /// Tìm property được đánh dấu [Key] (khóa chính)
            var keyProp = typeof(Entity).GetProperties(BindingFlags.Public | BindingFlags.Instance)
                           .FirstOrDefault(p => Attribute.IsDefined(p, typeof(KeyAttribute)));
            if (keyProp == null)
                throw new Exception("Entity phải có property [Key] để làm WHERE clause");
            var sql = $"DELETE FROM {tableName} WHERE {keyProp.Name} = @{keyProp.Name}";

            var param = new Dictionary<string, object>
            {
                { $"@{keyProp.Name}", pkId.ToString() }
            };

            var result = await conn.ExecuteAsync(sql, param);

            await conn.CloseAsync();
            return result; 
        }

        public async Task<Entity?> GetById(Guid pkId)
        {
            using var conn = new MySqlConnection(_connectionString);
            await conn.OpenAsync();

            // lấy tên bảng
            var tableName = GetNameTable();

            // tìm property có [Key]
            var keyProp = typeof(Entity)
                .GetProperties(BindingFlags.Public | BindingFlags.Instance)
                .FirstOrDefault(p => Attribute.IsDefined(p, typeof(KeyAttribute)));

            if (keyProp == null)
                throw new Exception("Entity phải có [Key]");

            // tạo SQL
            var sql = $"SELECT * FROM {tableName} WHERE {keyProp.Name} = @{keyProp.Name} LIMIT 1";

            // param
            var param = new Dictionary<string, object>{{ keyProp.Name, pkId }};
            var result = await conn.QueryFirstOrDefaultAsync<Entity>(sql, param);

            return result;
        }

        //public async Task<int> Update(Entity entity)
        //{
        //    using var conn = new MySqlConnection(_connectionString);
        //    await conn.OpenAsync();

        //    var tableName = GetNameTable();

        //    // tìm khóa chính
        //    var keyProp = typeof(Entity)
        //        .GetProperties(BindingFlags.Public | BindingFlags.Instance)
        //        .FirstOrDefault(p => Attribute.IsDefined(p, typeof(KeyAttribute)));

        //    if (keyProp == null)
        //        throw new Exception("Entity phải có [Key]");

        //    var keyName = keyProp.Name;
        //    var keyValue = keyProp.GetValue(entity);

        //    if (keyValue == null)
        //        throw new Exception("Key value không được null");

        //    // lấy các field update (trừ key)
        //    var props = typeof(Entity)
        //        .GetProperties()
        //        .Where(p =>
        //            p.CanRead &&
        //            !Attribute.IsDefined(p, typeof(KeyAttribute)) &&
        //            !Attribute.IsDefined(p, typeof(NotMappedAttribute))
        //        );

        //    // tạo SET clause
        //    var setClause = string.Join(", ", props.Select(p => $"{p.Name} = @{p.Name}"));

        //    var sql = $"UPDATE {tableName} SET {setClause} WHERE {keyName} = @{keyName}";

        //    var result = await conn.ExecuteAsync(sql, entity);

        //    return result;
        //}

    }


}
