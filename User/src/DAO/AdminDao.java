package DAO;

import Bean.Admin;

public interface AdminDao {

    /**
     * 管理员登陆
     * @param adname
     * @param adpassword
     * @return 返回该管理员对象
     */
    Admin login(String adname, String adpassword);
}
