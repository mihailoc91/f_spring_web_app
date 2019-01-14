<%-- 
    Document   : login
    Created on : Dec 10, 2018, 3:31:28 PM
    Author     : Mihailo
--%>

 <%@include file="commons/header.jsp" %>
    <body>
        <%@include file="commons/navigation.jsp" %>
        
        <div class="container">
            <h1>Add a todo</h1>
            <form:form method="POST" commandName="todo">
                <form:hidden path="id"/>
                <fieldset class="form-group">
                    <form:label path="desc">Description</form:label>
                    <form:input path="desc" name="desc" type="text" class="form-control" required="required"/>
                    <form:errors path="desc" cssClass="text-warning"/>
                     <form:label path="targetDate">Target date</form:label>
                    <form:input path="targetDate" name="targetDate" type="text" class="form-control" required="required"/>
                    <form:errors path="targetDate" cssClass="text-warning"/>
                </fieldset>
                <input class="btn btn-success" type="submit" value="Submit"/>
            </form:form>
        </div>
       <%@include file="commons/footer.jsp" %>
