# **Analysis – Pewlett Hackard Analysis**
## **Background Breakdown**
Employee turnover is a huge concern for any company, but the size and scope of Pewlett Hackard means that it becomes a tenuous situation. As it stands, there are concerns that large portions of the company’s workforce are reaching retirement age.
Bobby, an HR Analyst, reached out to us for help; the biggest goal of this analysis was to find out and breakdown how many employees are starting to hit retirement age, and how many positions we need to prepare to promote, hire, and train in the coming months and years.
Using SQL and building a database, our focus was on the short term: who will most likely start to consider retirement in the next few years. Expanding on that, we can hopefully collect and organize enough data to start putting a plan together.
## **Results**
   - The biggest issue in the immediate future is filling the spots of the engineers and staff – both senior and general. Pewlett Hackard is a large company, with over 300,000 employees. Unfortunately, almost all the employees within the files we were given were born before 1965 – which means there’s a good chance for a nearly full turnover in the next ten years.
   - As it stands, the ‘baby boomer’ generation is a bit larger than initially calculated, which increases the size of potential retirees substantially.
   - Unfortunately, the number of mentors we pulled together is less than satisfactory. There are just over 1,500 employees who meet the current qualifications for mentorship, which is less than 1% of employees.
   - The disparity between the various job titles is also concerning. Currently, there are 104% more Senior Engineers than there are Senior Staff who are heading towards retirement, and mover 200% (206.82%) more Senior Engineers than general Engineers . Looking at some of the other positions, there are two managers who are going to reach retirement soon. Which is, in theory, good; except the total number of managers is ridiculously small – according to the employee list, there are currently nine managers across the entire company, which means nearly a fourth (22%) of the managers are close to retirement.

Please see the Summary section for a fuller breakdown of the number of positions which will open up in the coming years.
## **Summary**
1. Overall, the number of titled staff positions which will need to be filled is just about 90,400 when only including employees born between 1952 and 1955 which expands to just about 238,500 openings when taking into account employees born in or before 1964.
   - Senior Engineers will have the largest number of open positions, accounting for 32.54% (1952-1955) and 35.8% (1946-1964).
   - Senior Staff has the second largest portion of to-be retirees, with around 31.25% (1952-1955) and 34.14% (1946-1964).
   - Engineers will come in far lower than Senior Staff or Senior Engineers, representing 15.73% (1952-1955) and 12.91% (1946-1964) respectively.
   - General Staff make up 13.54% (1952-1955) and 10.63% (1946-1964) overall, and the last three categories make up 6.93% (1952-1955) and 6.52% (1946-1964) when added together.
     -Technique Leaders account for 4.98% (1952-1955) versus 5.02% (1946-1964) while Assistant Engineers make up 1.95% % (1952-1955) and 1.49% (1946-1964), and Managers make up less than a percentage in both data sets (0.002% in the 1952-1955 range, and 0.004% in the 1946-1964 range).
2. The short answer is yes. There are more than enough people who should be capable of mentoring incoming hires.
   - The longer answer is that with the updated breakdown, the department with the smallest number of potential retirees is the Finance department with just over 12,700 employees reaching retirement age. Human Resources is the second smallest, and they have around 300 more employees reaching the same milestones. Development has the largest, accounting for just under 26% of the total employees reaching retirement age.


![Retirement Breakdown by Department (1952-1955)](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/Breakdown_by_Department_52_55.png)

![Retirement Breakdown by Department (1946-1964)](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/Breakdown_by_Department_46_64.png)

![Staff Positions (1952-1955 range)](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/Staff_Openings_1952_1955.png)

![Staff Positions (1946-1964 range)](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/Staff_Openings_1946_1964.png)

## **Supplemental Data**
The biggest stumbling block in this analysis is the definition of baby boomer; a web search gives us a date range, courtesy of Wikipedia, which states that the "baby boomer" generation is generally dated between 1946 and 1964, which makes sense as most conventional definitions of 'generation' are divided into roughly 20 year segments.  Now, we calculate out the ages. Assuming this analysis will affect the next fiscal year (2022), we can find the range of ages to expect from the 'boomer' generation:  employees between the ages of 58 and 76 should be on their way to retirement in the next couple of years. However, according to the Social Security Administration, the Normal Retirement Age of anyone born in 1960 and older is 67. This means within the next ten years, there's a high likelihood that anyone born prior to 1964 will retire by 2030 - which is eight more years than we accounted for in our previous query. In order to plan further ahead, we can make a secondary query, expanding the date range to include any employees born in or before 1964, and after 1946. This expands the retirement list dramatically, going from roughly 90,000 employees hitting retirement age (turning 67 to 70 in the coming year) to over 220,000 who were born before or in 1964; this breaks down to around 27.5 thousand retiring employees per year!
![Extended Retirement Query](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/D03_expanded_retirement_query01.png)

A good secondary query to build after this is the breakdown of retirees by department. This will allow us to make a multifaceted plan in order to minimize the number of issues as transfers and training happen; breaking down what each department needs will give us a better idea of how to focus hiring, and what resources are needed to get new employees up to speed.
![Retirement Breakdown by Department](https://github.com/ltkdobbs/pewlett_hackard_analysis/blob/main/Supplemental_Info/D03_expanded_retirement_query02.png)

