<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isELIgnored="false"%>
        <jsp:include page="/WEB-INF/pagina/navbar.jsp" />

        <div class="container-wrapper" style="margin-bottom: 180px">
            <div class="container">
                <section>
                    <div class="jumbotron">
                        <div class="container">
                            <h1>Carrinho Inválido</h1>
                        </div>
                    </div>
                </section>
                <section class="container">
                    <p>
                        <center><a href="<spring:url value="/getTodosProdutos"/>" class="btn btn-default">Procurar Produtos</a></center>
                    </p>
                </section>
            </div>
        </div>