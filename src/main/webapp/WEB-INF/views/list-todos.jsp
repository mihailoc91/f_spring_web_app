 <%@include file="commons/header.jsp" %>
    <body>
         <%@include file="commons/navigation.jsp" %>
        <div class="container">
           
            <h1>Welcome ${name}</h1>


            <table class="table table-striped">
                <caption> <spring:message code="todo.caption"/> </caption>
                <thead>
                    <tr>
                        <th>Description</th>
                        <th>Target Date</th>
                        <th>Is Completed</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.desc}</td>
                            <td><fmt:formatDate pattern="dd/MM/yyyy" value="${todo.targetDate}"/></td>
                            <td>${todo.isDone}</td>
                            <td>
                                <a href="/first-web-applicationn/update-todo?id=${todo.id}" class="btn btn-success">Update</a>
                                <a href="/first-web-applicationn/delete-todo?id=${todo.id}" class="btn btn-danger">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div>
                <a class="btn btn-success" href="/first-web-applicationn/add-todo">Add a todo</a>
            </div>

            
        </div>
                                <%@include file="commons/footer.jsp" %>
