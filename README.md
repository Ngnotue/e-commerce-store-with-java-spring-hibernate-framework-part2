# e-commerce-store-with-java-spring-hibernate-framework-part2
-Using H2 Database : http://www.h2database.com/html/main.html
<bean id="dataSource" class="org.springframework.jdbc.datasource.DriverManagerDataSource">
        <property name="driverClassName" value="org.h2.Driver" />
        <property name="url" value="jdbc:h2:tcp://localhost/~/test" />
        <property name="username" value="sa" />
        <property name="password" value="" />
    </bean>
    
 -In order to run Database install H2 Database on your machine and set the url property from your local machine:
 eg: <property name="url" value="jdbc:h2:tcp://localhost/~/test" />
