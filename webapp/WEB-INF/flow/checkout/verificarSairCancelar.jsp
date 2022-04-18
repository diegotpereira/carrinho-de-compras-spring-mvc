<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="/WEB-INF/pagina/navbar.jsp" />
<%@ page isELIgnored="false"%>

<div class="container-wrapper">
    <div class="container" style="margin-bottom: 180px">
        <section>
            <div class="jumbotrom">
                <div class="container">
                    <h1 class="alert alert-danger">Check-out cancelado!</h1>
                    <p>Seu processo de checkout foi cancelado! Você pode continuar Shopping.</p>
                </div>
            </div>
        </section>

        <div class="container">
            <p>
                <center><a href="<c:url value="/getTodosProdutos" />" class="btn btn-default">Ir para a página de produtos</a></center>
            </p>
        </div>
    </div>
</div>