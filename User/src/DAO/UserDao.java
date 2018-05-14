package DAO;

import Bean.User;

import java.util.List;

public interface UserDao {

    /**
     * 查看所有用户的信息
     * @return 返回集合，集合中含有所有用户
     */
    List<User> findAllUser();

    /**
     * 添加一个用户
     * @param user
     * @return
     */
    boolean addUser(User user);

    /**
     * 删除用户
     * @param id
     * @return 返回受影响的数目
     */
    int deleteUser(int id);


    /**
     * 通过id查询对应的User
     * @param uid
     * @return 返回该User对象
     */
    User findUserById(int uid);


    /**
     * 更新用户信息，使用事务的方法
     * @param user
     * @return 更新结果是否成功
     */
    boolean updateUser(User user);


    /**
     * 通过用户名查找用户
     * @param username
     * @return返回该用户对象集合
     */
    List<User> findUserByName(String username);
}
