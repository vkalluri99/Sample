using System;
using System.Collections.Generic;

using System.Data;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer.Management.Common;
using System.Data.SqlClient;
namespace GPRSGPSServer
{
    public class DBMgr
    {
        string ConnectionString;
        public SqlConnection conn = new SqlConnection();
        List<string> data = new List<string>();
        //  public string UserName = "";
        object obj_lock = new object();

        public DBMgr()
        {
            //conn.ConnectionString = @" SERVER=localhost;DATABASE=schoolmanagement;UID=root;PASSWORD=bsr@123radhA";
            //conn.ConnectionString = @" SERVER=asntech;DATABASE=schoolmanagement;UID=root;PASSWORD=bsr@123radhA";
            //conn.ConnectionString = @" SERVER=122.175.32.16;DATABASE=schoolmanagement;UID=root;PASSWORD=bsr@123radhA";
            //conn.ConnectionString = @"server=128.199.234.63;UserId=root;PASSWORD=bsr@123radhA;Persist Security Info=True;database=schoolmanagement";
            //conn.ConnectionString = @"server=127.0.0.1;UserId=root;PASSWORD=2611;Persist Security Info=True;database=schoolmanagement";
            //conn.ConnectionString = @"server=198.71.225.54;UserId=Raja2616;PASSWORD=Raja_2616;Persist Security Info=True;database=Raja2616";
            //conn.ConnectionString = @"server=myadppdemo.database.windows.net;User Id=rajashekar;PASSWORD=Raja1234;Persist Security Info=True;database=MyAppdemo";
            conn.ConnectionString = @"server=184.168.194.64;User Id=Mirchi;PASSWORD=Mirchi123;Persist Security Info=True;database=MirchiDB";
            //conn.ConnectionString = @"server=198.71.225.56;UserId=apnachatbhavan;PASSWORD=apna6020;Persist Security Info=True;database=apnachat";
        }
        public bool insert(SqlCommand _cmd)
        {
            lock (conn)
            {
                SqlCommand cmd = _cmd;
                try
                {

                    cmd.Connection = conn;
                    if (cmd.Connection.State == ConnectionState.Open)
                        cmd.Connection.Close();
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                    cmd.Connection.Close();

                    return true;
                }
                catch (Exception ex)
                {
                    cmd.Connection.Close();
                    throw new ApplicationException(ex.Message);
                }
            }
            //}
        }

        public long insertScalar(SqlCommand _cmd)
        {
            long sno = 0;
            SqlCommand cmd = _cmd;
            try
            {
                cmd = _cmd;
              
                //    cmd.Connection = conn;
                //if (cmd.Connection.State == ConnectionState.Open)
                //    cmd.Connection.Close();
                //cmd.Connection.Open();
                //sno = (int)cmd.ExecuteScalar();
                //cmd.Connection.Close();
                return sno;
            }
            catch (Exception ex)
            {
                cmd.Connection.Close();
                throw new ApplicationException(ex.Message);
            }
            //}
        }

        public DataSet SelectQuery(SqlCommand _cmd)
        {
            lock (conn)
            {
                SqlCommand cmd = _cmd;


              
                    try
                    {
                        DataSet ds = new DataSet();
                        cmd.Connection = conn;
                        conn.Open();
                        //cmd.ExecuteNonQuery();
                        SqlDataAdapter sda = new SqlDataAdapter();
                        sda.SelectCommand = cmd;
                        sda.Fill(ds, "Table");
                        conn.Close();
                        return ds;
                    }
                    catch (Exception ex)
                    {
                        conn.Close();
                        throw new ApplicationException(ex.Message);
                    }
              
            }
        }

        public int Update(SqlCommand _cmd)
        {
            SqlCommand cmd = _cmd;
            lock (conn)
            {
                try
                {
                    int i = 0;
                   
                        cmd.Connection = conn;
                        if (cmd.Connection.State == ConnectionState.Open)
                            cmd.Connection.Close();
                        cmd.Connection.Open();
                        i = cmd.ExecuteNonQuery();
                        cmd.Connection.Close();
                        return i;
                }
                catch (Exception ex)
                {
                    cmd.Connection.Close();
                    throw new ApplicationException(ex.Message);
                }
            }
        }

        public void Delete(SqlCommand _cmd)
        {
            lock (conn)
            {
                SqlCommand cmd = _cmd;
                try
                {
                    cmd = _cmd;
                    cmd.Connection = conn;
                    if (cmd.Connection.State == ConnectionState.Open)
                        cmd.Connection.Close();
                    cmd.Connection.Open();
                    int ii = cmd.ExecuteNonQuery();
                    cmd.Connection.Close();
                }
                catch (Exception ex)
                {
                    cmd.Connection.Close();
                    throw new ApplicationException(ex.Message);
                }
            }
        }

        public static DateTime GetTime(SqlConnection conn)
        {

            DataSet ds = new DataSet();
            DateTime dt = DateTime.Now;
            SqlCommand cmd = new SqlCommand("SELECT NOW()");
            cmd.Connection = conn;
            if (cmd.Connection.State == ConnectionState.Open)
            {
                cmd.Connection.Close();
            }
            conn.Open();
            //cmd.ExecuteNonQuery();
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Table");
            conn.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                dt = (DateTime)ds.Tables[0].Rows[0][0];
            }
            return dt;

        }

        internal bool checkDBConn()
        {
            try
            {
                conn.Open();
                conn.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        static public DateTime GetLowDate(DateTime dt)
        {
            double Hour, Min, Sec;
            DateTime DT = DateTime.Now;
            DT = dt;
            Hour = -dt.Hour;
            Min = -dt.Minute;
            Sec = -dt.Second;
            DT = DT.AddHours(Hour);
            DT = DT.AddMinutes(Min);
            DT = DT.AddSeconds(Sec);
            return DT;

        }

        static public DateTime GetHighDate(DateTime dt)
        {
            double Hour, Min, Sec;
            DateTime DT = DateTime.Now;
            Hour = 23 - dt.Hour;
            Min = 59 - dt.Minute;
            Sec = 59 - dt.Second;
            DT = dt;
            DT = DT.AddHours(Hour);
            DT = DT.AddMinutes(Min);
            DT = DT.AddSeconds(Sec);
            return DT;

        }

        
    }
}