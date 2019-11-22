ggplot(employeeAbsentism, aes(employeeAbsentism$Reason_for_absence)) +
  geom_bar() +
  labs(title = "Bar graph of reasons for absence", x = "Reason", y = "Count") + 
  coord_flip() +
  theme_bw()

# Categorical vars
ggplot(employeeAbsentism, aes(x = Month_of_absence, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Month of Absence",
       x = "Month of Absence", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("J","F","M","A","M","J","J","A","S","O","N","D","N/A")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Day_of_the_week, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Weekday of Absence",
       x = "Weekday of Absence", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("Mon","Tues","Wed","Thu","Fri")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Season, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Season of Absence",
       x = "Season of Absence", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("Spring","Summer","Autumn","Winter")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Education, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Level of Education",
       x = "Level of Education", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("No formal education/\nSecondary school","Undergrad","Postgrad","PhD/MBA")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Children, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Number of Children",
       x = "Number of Children", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Smoker, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Smoker Status",
       x = "Smoker Status", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("Smoker","Non Smoker")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Alcohol, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Alcohol Comsumption",
       x = "Social Drinker", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("Yes","No")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = NoOfPets, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Number of Pets",
       x = "Number of Pets", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

ggplot(employeeAbsentism, aes(x = Absent, fill = is.na(Reason_for_absence))) +
  geom_bar(position = "fill") +
  labs(title = "Percentage Occurences of Missing\nReasons per Absence Period Length",
       x = "Length of Absence", y = "Percentage of Values Missing") +
  scale_y_continuous(breaks=c(0,0.25,0.5,0.75,1), labels = scales::percent(c(0,0.25,0.5,0.75,1))) + 
  scale_x_discrete(labels = c("0-1","1-2","2-3","4+")) +
  scale_fill_discrete(name="Reason For Absence", labels=c("Yes","No")) +
  theme_economist()

# Numerical vars
ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = TravelCost)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Travel Costs\nby Missing Reason",
       y = "Travel Cost", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = CommuteDistance)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Commute Distance\nby Missing Reason",
       y = "Commute Distance", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = YearsService)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Years Served\nby Missing Reason",
       y = "Years Served", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = WorkLoad)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Workload\nby Missing Reason",
       y = "Workload", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = Target)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Target Performance\nby Missing Reason",
       y = "Target Performance", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

ggplot(employeeAbsentism, aes(x = is.na(Reason_for_absence), y = BodyWeight)) +
  geom_boxplot(width = 0.5) +
  labs(title = "Distribution of Body Weight\nby Missing Reason",
       y = "Body Weight", x = "Missing Reason") +
  scale_x_discrete(labels = c("No","Yes")) +
  coord_flip() +
  theme_economist()

