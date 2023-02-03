/*
 * package com.mpc.user.service;
 * 
 * public class UserService implements IUserService { import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Service;
 * 
 * import com.mpc.user.dao.UserRepository; import com.mpc.user.model.PetModel;
 * import com.mpc.user.model.UserModel;
 * 
 * @Service public class UserService1 implements UserServiceImpl {
 * 
 * @Autowired UserRepository repositoryDao;
 * 
 * //회원정보 입력
 * 
 * @Override public void signup(UserModel user) {
 * 
 * repositoryDao.signup(user); }
 * 
 * //아이디중복체크
 * 
 * @Override public int idChk(UserModel userid) { int result =
 * repositoryDao.idChk(userid); System.out.println("result: " + result); return
 * result; }
 * 
 * // 펫정보 입력
 * 
 * @Override public void petInsert(PetModel model) {
 * repositoryDao.petInsert(model); }
 * 
 * @Override public int nickChk() {
 * 
 * repositoryDao.nickChk(); return 0; }
 * 
 * @Override public int emailChk() {
 * 
 * repositoryDao.emailChk(); return 0; }
 * 
 * @Override public int pwValChk() {
 * 
 * repositoryDao.pwValChk(); return 0; }
 * 
 * @Override public void petUpdate() {
 * 
 * repositoryDao.petUpdate(); }
 * 
 * @Override public void petAdd() { // TODO Auto-generated method stub
 * repositoryDao.petAdd(); }
 * 
 * @Override public void likeList() { // TODO Auto-generated method stub
 * repositoryDao.likeList(); }
 * 
 * @Override public void scrapList() { // TODO Auto-generated method stub
 * repositoryDao.scrapList(); }
 * 
 * @Override public void followList() { // TODO Auto-generated method stub
 * repositoryDao.followList(); }
 * 
 * @Override public UserModel login(String userId) { return
 * repositoryDao.login(userId); }
 * 
 * 
 * @Override public ManagerVO selectManagerInfo(String managerId) { return
 * managerDAO.selectManagerInfo(managerId); }
 * 
 * 
 * @Override public void logout() { // TODO Auto-generated method stub
 * repositoryDao.logout(); }
 * 
 * @Override public void myPageSearch() { // TODO Auto-generated method stub
 * repositoryDao.myPageSearch(); }
 * 
 * @Override public void myPageUpdate() { // TODO Auto-generated method stub
 * repositoryDao.myPageSearch(); }
 * 
 * 
 * 
 * }
 */