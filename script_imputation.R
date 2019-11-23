str(employeeAbsentism)

employeeAbsentism = employeeAbsentism %>% mutate(Reason_for_absence = as.factor(Reason_for_absence),
                                                 Month_of_absence = as.factor(Month_of_absence),
                                                 Day_of_the_week = as.factor(Day_of_the_week),
                                                 Season = as.factor(Season),
                                                 TravelCost = as.numeric(TravelCost),
                                                 CommuteDistance = as.numeric(CommuteDistance),
                                                 YearsService = as.numeric(YearsService),
                                                 WorkLoad = as.numeric(WorkLoad),
                                                 Target = as.numeric(Target),
                                                 Education = as.factor(Education),
                                                 Children = as.numeric(Children),
                                                 Alcohol = as.factor(Alcohol),
                                                 Smoker = as.factor(Smoker),
                                                 NoOfPets = as.numeric(NoOfPets),
                                                 BodyWeight = as.numeric(BodyWeight),
                                                 Absent = as.factor(Absent))

init = mice(employeeAbsentism, maxit=0) 
meth = init$method
predM = init$predictorMatrix

meth[c("Reason_for_absence")]="polyreg"
meth[c("Month_of_absence")]="polyreg"
meth[c("Day_of_the_week")]=""
meth[c("Season")]=""
meth[c("TravelCost")]=""
meth[c("CommuteDistance")]=""
meth[c("YearsService")]=""
meth[c("WorkLoad")]=""
meth[c("Target")]=""
meth[c("Education")]=""
meth[c("Children")]=""
meth[c("Alcohol")]=""
meth[c("Smoker")]=""
meth[c("NoOfPets")]=""
meth[c("BodyWeight")]=""
meth[c("Absent ")]=""

set.seed(103)
imputed = mice(employeeAbsentism, method=meth, predictorMatrix=predM, m=5)
