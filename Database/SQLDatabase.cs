using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Web_BanHang.Database
{
    /// <summary>
    /// Thực hiện các phương thức với database: lấy, gán chuỗi kết nối, thực hiện truy vấn select, insert, update, delete
    /// </summary>
    public class SQLDatabase
    {
        // Chuỗi kết nối trực tiếp
        private static readonly string connectionString = "Provider=SQLOLEDB;Data Source=DESKTOP-8LMO6HU\\KIMCHAM;Initial Catalog=WebBanHang;Integrated Security=SSPI;Encrypt=True;Trust Server Certificate=True";

        // Phương thức tạo kết nối
        public static OleDbConnection GetConnection()
        {
            OleDbConnection conn = new OleDbConnection(connectionString);
            conn.Open();
            return conn;
        }

        // Thực hiện truy vấn không cần trả về kết quả (delete, update, insert)
        public static void ExecuteNoneQuery(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                using (OleDbConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    cmd.ExecuteNonQuery();
                }
            }
        }

        // Phương thức lấy dữ liệu trả về DataTable
        public static DataTable GetData(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                using (DataSet ds = new DataSet())
                {
                    using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds.Tables[0];
                    }
                }
            }
            else
            {
                using (OleDbConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using (DataSet ds = new DataSet())
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds.Tables[0];
                        }
                    }
                }
            }
        }

        // Phương thức lấy dữ liệu trả về tất cả các DataTable
        public static DataSet GetData_OverDataset(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                using (DataSet ds = new DataSet())
                {
                    using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
            else
            {
                using (OleDbConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using (DataSet ds = new DataSet())
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds;
                        }
                    }
                }
            }
        }
    }


        /*
        //lấy chuỗi kết nối
        private static string _connectionString = string.Empty;
        public static string ConnectionString
        {
            get
            {
                if (_connectionString.Equals(""))
                {
                    _connectionString = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
                }
                return _connectionString;
            }
            set
            {
                _connectionString = value;
            }
        }

        // mở chuỗi kết nối
        public static OleDbConnection GetConnection()
        {
            OleDbConnection conn = new OleDbConnection();
            conn.ConnectionString = ConnectionString;
            conn.Open();
            return conn;
        }



        //thực hiện truy vấn ko cần trả về kết quả (delete,update,inser)
        public static void ExecuteNoneQuery(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                OleDbConnection conn = GetConnection();
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
            }
        }

        //phương thức lấy dữ liệu trả về dataTable
        public static DataTable GetData(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                using (DataSet ds = new DataSet())
                {
                    using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds.Tables[0];
                    }
                }
            }
            else
            {
                using (OleDbConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using (DataSet ds = new DataSet())
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds.Tables[0];
                        }
                    }
                }
            }
        }

        //phương thức lấy dữ liệu trả về tất cả các dataTable
        public static DataSet GetData_OverDataset(OleDbCommand cmd)
        {
            if (cmd.Connection != null)
            {
                using (DataSet ds = new DataSet())
                {
                    using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                    {
                        da.Fill(ds);
                        return ds;
                    }
                }
            }
            else
            {
                using (OleDbConnection conn = GetConnection())
                {
                    cmd.Connection = conn;
                    using (DataSet ds = new DataSet())
                    {
                        using (OleDbDataAdapter da = new OleDbDataAdapter(cmd))
                        {
                            da.Fill(ds);
                            return ds;
                        }
                    }
                }
            }
        */


    }