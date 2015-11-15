<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Slow News</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="/wro/all.css">
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="/js/main.js"></script>
</head>
<body>
    <nav id="header" class="site-header">
        <ul class="site-header__list site-header--normal-mode__list">
            <li class="site-header__item">
                <a class="site-header__link" href="/recent">Recent</a>
            </li>
            <li class="site-header__item">
                <a class="site-header__link" href="/archive">Archive</a>
            </li>
            <c:if test="${not empty userName}">
                <li class="site-header__item right">
                    <a class="site-header__link" href="/signout">Sign out</a>
                </li>
            </c:if>
            <c:if test="${empty userName}">
                <li class="site-header__item right">
                    <a class="site-header__link" href="/signin">Sign in</a>
                </li>
            </c:if>
        </ul>
        <ul class="site-header__list site-header--select-mode__list">
            <li class="site-header__item site-header__button-important right">
                <a class="site-header__link" id="select-mode-cancel" href="#">Cancel</a>
            </li>
            <li class="site-header__item site-header__button-success right">
                <a class="site-header__link" id="select-mode-save" href="#">Save</a>
            </li>
        </ul>
    </nav>
    <div class="content l-constrained">
        <form id="select-news-form" action="/save" method="POST">
            <ul class="news-list">
                <c:forEach items="${recentNews}" var="newsItem" varStatus="newsItemStatus">
                    <li class="news-item row">
                        <div class="col-4">
                            <img class="news-item__image" src="${newsItem.imageLink}">
                        </div>
                        <div class="col-7">
                            <h1 class="news-item__title">${newsItem.title}</h1>
                            <span class="news-item__body">${newsItem.body}</span>
                        </div>
                        <div class="col-1 l-action-column">
                            <a href="#" class="news-item__action-button">Save</a>
                            <label class="massive-checkbox">
                                <input hidden type="checkbox" name="${newsItemStatus.index}" />
                                <span></span>
                            </label>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </form>
    </div>
</body>
</html>
