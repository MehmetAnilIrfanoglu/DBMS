This file is created for tutorial how to setup this project.
First thing you need to do is openning the project with netbeans.
I am using netbeans 8.2 and ı will explain according to this version. netbeans 8.2 can be downloaded from https://www.oracle.com/technetwork/java/javase/downloads/jdk-netbeans-jsp-3413139-esa.html
first , open netbeans and select open project and select the given folder which is "Homework3"
it might give import error due to mysql connector in "Connecting.java" class.
in order to solve this , you need to right click on libraries and you must say Add Jar/folder and you must add mysql connector to libraries.
ı added the needed connector which is mysql connector file. it is in a zip file which is "mysql-connector-java-8.0.24.zip". you must export it and in zip file you must choose "mysql-connector-java-8.0.24.jar" file in order to connect mysql to netbeans.


next thing is , ı added a sql file which is for creating neccessary table for app. it is called "ddl.sql"
you must create a schema in your database with name "data". you can give other name but if you do so, you must change dbname in Connecting.java file. after creating schema and after clicking two times on it,
you must open sql script which is "ddl.sql" file and you must run that file in that created schema. after that, you must open netbeans and in netbeans , you must open Connecting.java class. in that class , ı added additional notes but 
if you changed database name , you must change dbname here and you must enter your own mysql password ing iven area because it is releated with your mysql.
after changing the neccessary things , you can run the project.

I added comments in my code. you can find ddl codes in ddl.sql file and ı will explain dml codes here.
for dml part , for insert part , ı used "INSERT INTO `users`(`Name`, `username`, `password`, `Gender`, `Phone`, `email`) VALUES (?,?,?,?,?,?)" command to insert element , question marks are coming from prepared statement and they provide sql injection protection.
for update part , ı use "UPDATE `users` SET `Name`=?,`password`=?,`Gender`=?,`Phone`=?,`email`=? WHERE `username` = ?" command for updating and again , question marks are for sql injection protection , they will be filled in coming process.
for select statements , ı used "SELECT * FROM `users` WHERE `username` = ? AND `password` = ?" in login form in order to check person. in register part , ı am using "SELECT * FROM `users` WHERE `username`= ?" in order to check if user exist.

you can find ddl codes in ddl.sql file. ı think there is no need to explain because there is only one table for user.

ıf you have any trouble , please contact me via mehmetanil.irfanoglu@agu.edu.tr