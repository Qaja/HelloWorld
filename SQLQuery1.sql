Select * From Health_Plan_Code where LOGO IS NOT NULL


 Select id,username,first_name,last_name,email From Users where ID in
 ( Select Distinct [User_ID] from User2Provider where Unique_Provider_ID in 
 (Select Distinct M.Unique_Provider_ID from Member  M JOin Health_Plan_Code HPC
ON M.Health_Plan_Identifier = HPC.HP_ID
 where HPC.LOGO is not null  ) )

 Select * from User2Provider where Unique_Provider_ID in 
 (Select Distinct
 M.Unique_Provider_ID from Member  M JOin Health_Plan_Code HPC
ON M.Health_Plan_Identifier = HPC.HP_ID
 where HPC.LOGO is not null)





 (Select Distinct M.Unique_Provider_ID from Member  M JOin Health_Plan_Code HPC
ON M.Health_Plan_Identifier = HPC.HP_ID
 where HPC.LOGO is not null)A,
