package DAO.daoImpl;

import Bean.Admin;
import DAO.AdminDao;

public class AdminDaoImp implements AdminDao {
    @Override
    public Admin login(String adname, String adpassword) {
        return new Admin();
    }
}
