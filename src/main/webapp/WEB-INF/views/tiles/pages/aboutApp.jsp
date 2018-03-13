<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table class="table table-sm">
    <tr>
        <th scope="col"><h3>Description:</h3></th>
    </tr>
    <tr>
        <td>
            PL
            <p>Aplikacja pozwala zarządzać umowami(zamówieniami) oraz systemami wewnątrz firmy. W aplikacji została
                zaimplementowana możliwość utworzenia, edycji, usunięcia i wyszukania umowy oraz systemu. Możliwe jest
                także pokazanie wszystkich aktycznych umów. Użytkownik może wyszukiwać umowy po różnych parametrach.</p>
            <br>
            <p>Umowa może zawierać : numer umowy , system, datę rozpoczęcie , datę wygaśnięcia umowy, ratę za
                użytkowanie, okres płatnosci oraz informację o tym czy umowa jest aktywana.</p>
            <br>
            <p>Możliwy jest wybór trzech typów okresu płatności MONTHLY - miesięczny, QUARTERLY-kwartalny oraz ANNUAL-
                roczny. Okres płatności został zaprezentowany za pomocą typu wyliczeniowego Settlement.</p>
            <br>
            <p>Daty wporwadzane oraz wyświetlane są w formacie "yyyy-MM-dd".</p>
            <br>
            <p>System zawiera : Nazwę systemu, krótki opis oraz rodzaj technologii.</p>
        </td>
    </tr>
    <tr>
        <td>
            ENG
            <p> application allows management orders and systems inside the company. It is possibility to create, edit,
                delete, and search orders and system. There is also an opption to show all active orders. User could
                search Order or System by different parameters.</p>
            <br>
            <p>Order can contains : the order number, the system, the data of the begining of the order, oredr
                termination date, installment for the order, payment period and the information abut the state of order
                is it active or not.</p>
            <br>
            <p>There are three kinds of payment period to choose: monthly, quarterly and annual. period of payment is
                represented by enumeration type Settlement.</p>
            <br>
            <p> For all dates formate is"yyyy-MM-dd".</p>
            <br>
            <p> System contains: System name, short description and a technology used.</p>
        </td>
    </tr>

    </tbody>
    <thead>
    <tr>
        <th scope="col" colspan="6"><h3>Application technologies and details:</h3></th>
    </tr>
    </thead>
    <tbody>

    <tr>
        <td>Language:</td>
        <td colspan="5">Java</td>
    </tr>
    <tr>
        <td>IDE used</td>
        <td>IntelliJ Idea</td>
    </tr>
    <tr>
        <td>packaging</td>
        <td>WAR</td>
    </tr>
    <tr>
        <td>Java web container:</td>
        <td colspan="5">Apache Tomcat</td>
    </tr>
    <tr>
        <td>Build automation tool:</td>
        <td colspan="5">Maven</td>
    <tr>
        <td>Framework:</td>
        <td colspan="5">Spring</td>
    </tr>
    <tr>
        <td>ORM framework:</td>
        <td colspan="5">Hibernate</td>
    </tr>
    <tr>
        <td>Data base</td>
        <td colspan="5">PostgreSQL</td>
    </tr>
    <tr>
        <td>(JQuery + UI)</td>
        <td colspan="5">?</td>
    </tr>
    <tr>
        <td>(JQuery DataTable)</td>
        <td colspan="5">?</td>
    </tr>
    <tr>
        <td>Front-end:</td>
        <td>jsp</td>
        <td>Bootstrap</td>
        <td>CSS</td>
        <td>others:</td>
        <td>Apache Tiles</td>
    </tr>
    <tr>
        <td>Author:</td>
        <td>Marcin Szpak</td>
    </tr>
    </tbody>
</table>
<table class="table table-sm">
    <thead>
    <tr>
        <th scope="col"><h3>Package:</h3></th>
        <th scope="col"><h3>Class(/Enum):</h3></th>
        <th scope="col"><h3>Description:</h3></th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td rowspan="4">tiles</td>
        <td>ApplicationInitializer:</td>
        <td>responsible for initialize the application</td>
    </tr>
    <tr>
        <td>HibernateConfig:</td>
        <td>Contains data to configure hibernate</td>
    </tr>
    <tr>
        <td>TilesConfig:</td>
        <td>Contains data to configure hibernate</td>
    </tr>
    <tr>
        <td>WebConfig:</td>
        <td>Contains data to configure tails. Path to tiles.xml file that mapps controllers and jsp files</td>
    </tr>
    <tr>
        <td>util</td>
        <td>DateUtil:</td>
        <td>Class contains a method to convert String to Data in format: yyyy-MM-dd</td>
    </tr>
    <tr>
        <td rowspan="3">model</td>
        <td>Order:</td>
        <td>Class contains all required fields for order</td>
    </tr>
    <tr>
        <td>System:</td>
        <td>Class contains all required fields for system</td>
    </tr>
    <tr>
        <td>Settlement:</td>
        <td>Thats the Enum type that represents a period of payment: Monthly, Quarterly and annual</td>
    </tr>
    <tr>
        <td rowspan="4">dao</td>
        <td>OrderDao:</td>
        <td>That's the Interface that contain a requarements for OrderDao</td>
    </tr>
    <tr>
        <td>OrderDaoImpl:</td>
        <td>Contains queries to data base allows show all orders, search orders, add, edit and delete orders
            implements OrderDao Interface
        </td>
    </tr>
    <tr>
        <td>SystemDao:</td>
        <td>That's the Interface that contains requarements for SyestemDao</td>
    </tr>

    <tr>
        <td>SysteDaoImpl:</td>
        <td>Contains queries to data base allows show all systems, search systems, add, edit and delete systems
            implements OrderDao Interface
        </td>
    </tr>
    <tr>
        <td rowspan="2">service</td>
        <td>OrderService:</td>
        <td>Contains methods connects the repository layout and controller</td>
    </tr>
    <tr>
        <td>SystemService:</td>
        <td>Contains methods connects the repository layout and controller</td>
    </tr>
    <tr>
        <td rowspan="4">Controller</td>
        <td>OrderController:</td>
        <td>Defines the url-s and bound them with views</td>
    </tr>
    <tr>
        <td>SystemController:</td>
        <td>Defines the url-s and bound them with views</td>
    </tr>
    <tr>
        <td>HomeController:</td>
        <td>Defines the url for home page and bound it with view</td>
    </tr>
    <tr>
        <td>HomeController:</td>
        <td>Defines the url for application description page and bound it with view</td>
    </tr>


</table>