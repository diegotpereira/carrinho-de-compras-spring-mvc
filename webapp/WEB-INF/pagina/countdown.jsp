<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="ISO-8859-1">

            <!-- CSS  -->
            <link href="${pageContext.request.contextPath}/resource/countdown/demo.css?v=1.0.0.0" rel="stylesheet">
            <link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
            <link href="${pageContext.request.contextPath}/resource/countdown/jquery.countdown.css?v=1.0.0.0" rel="stylesheet">

            <!-- JS  -->
            <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
            <script src="${pageContext.request.contextPath}/resource/countdown/jquery.countdown.min.js?v=1.0.0.0"></script>
            <title>Shop Online</title>
        </head>

        <body>
            <ul id="example">
                <li>
                    <span class="days">00</span>
                    <p class="days_text">Dias</p>
                </li>

                <li class="seperator">:</li>

                <li>
                    <span class="hours">00</span>
                    <p class="hours_text">Horas</p>
                </li>

                <li class="seperator">:</li>
                <li>
                    <span class="minutes">00</span>
                    <p class="minutes_text">Minutos</p>
                </li>

                <li class="seperator">:</li>
                <li>
                    <span class="seconds">00</span>
                    <p class="seconds_text">Segundos</p>
                </li>
            </ul>

            <script>
                $$('#example').countdown({
                    date: '19/04/2022 15:30:30',
                    offset: -8,
                    day: 'Day',
                    days: 'Days'
                }, function() {
                    alert('DOne!')
                })
            </script>
            <script type="text/javascript">
                var _qaq = _qaq || []
                _qaq.push(['_setAccount', 'UA-36251023-1'])
                _gaq.push(['_setDomainName', 'jqueryscript.net']);
                _gaq.push(['_trackPageview']);

                (function() {
                    var ga = document.createElement('script');
                    ga.type = 'text/javascript';
                    ga.async = true;
                    ga.src = ('https:' == document.location.protocol ? 'https://ssl' :
                            'http://www') +
                        '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0];
                    s.parentNode.insertBefore(ga, s);
                })();
            </script>
        </body>

        </html>