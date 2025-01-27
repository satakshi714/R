install.packages('sqldf')
require(sqldf)
??sqldf
data("UCBAdmissions")
View(UCBAdmissions)
str(UCBAdmissions)
summary(UCBAdmissions)

#must be data frame
ucb <- as.data.frame(UCBAdmissions)
str(ucb)
sqldf("Select * from ucb")

#return female student admission result
sqldf("select * from ucb where Gender = 'Female'")

#return the admitted students for female categories
sqldf("select * from ucb where admit = 'Admitted' and gender = 'Female'")

#order admissions
sqldf("SELECT * FROM ucb WHERE ADMIT = 'Admitted' ORDER BY FREQ DESC")

#departments in the Data set
sqldf("select dept from ucb group by dept")
sqldf("select distinct Dept from ucb")

#aggregate Queries
#total admitted student
sqldf("select sum(freq) from ucb where admit = 'Admitted'")
sqldf("select admit, sum(freq) from ucb where gender = 'Male' group by admit")

#admitted students in dept E
sqldf("select dept, sum(freq) from ucb where admit = 'Admitted' and dept = 'E'")


#department wise total admitted students
sqldf("select dept, sum(freq) from ucb where admit = 'Admitted' group by dept")

#department wise total rejected students
#total rejected students
sqldf("select sum(freq) from ucb where admit = 'Rejected'")

#return total admitted males
sqldf("select sum(freq) as total_dudes from ucb where admit = 'Admitted' AND gender = 'Male'")

#return total rejected females
sqldf("select sum(freq) as total_ladies from ucb where Admit = 'Rejected' AND Gender = 'Female'")

#average number of admitted students by dept (usually mean)
sqldf("select Dept, avg(freq) as average_admitted from ucb where Admit = 'Admitted' group by Dept")

#create another data table, named majors
majors <- data.frame(major = c("math", "biology", "engineering", "computer science", "history", "architecture"),
                     DEPT = c(LETTERS[1:5], "Other"),
                     Faculty = round(runif(6, min = 10, max = 30)))
majors

sqldf("select * from ucb")

#how many majors are there
sqldf("select distinct count(dept)from ucb")

#minimum amount if students rejected
sqldf("select min(Freq) from ucb where Admit = 'Rejected'")

#wild card match queries
#pattern matching - case insensitive
sqldf("select * from ucb where Freq between 20 AND 100")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Gender Like '%male%'")
sqldf("select * from ucb where Gender Like 'Ma%'")
sqldf("select * from ucb where Gender Like 'Fe%'")
sqldf("select * from ucb where Gender = 'Female' AND Freq >= 100")
sqldf("select * from ucb where Gender Like '_ale'")
sqldf("select * from ucb where Gender NOT Like 'M_l_'")


#Manipulation and nested queries



#Join Queries ---where clause in not used
#join two tables together by common key
sqldf("select * from ucb inner join majors on ucb.Dept = majors.Dept")

#join table on the left with resultant null's on the right table   ----left outer join
sqldf("select * from ucb left join majors on ucb.Dept = majors.Dept")
sqldf("select * from majors left join ucb on ucb.Dept = majors.Dept")

 #join table on the left with resultant null's on the left table    ----right outer join
sqldf("select * from majors right join ucb on ucb.Dept = majors.Dept")
sqldf("select * from ucb right join majors on ucb.Dept = majors.Dept")

#cross join 
sqldf("select * from ucb join majors")

#self join
sqldf("select * from ucb inner join ucb on ucb.Dept = ucb.Dept")

