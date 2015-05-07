<%--
 Copyright (C) 2012 TopCoder Inc., All Rights Reserved.

 @author TCSASSEMBLER
 @version 1.0

 The search result section page.
--%>
<%@ include file="/WEB-INF/pages/admin/includes/taglibs.jsp" %>

<div class="tabSection" id="searchResultsSection">
    <div class="sectionHeader">
        <h2>Search Results</h2>
        <div class="tl"></div>
        <div class="tr"></div>
    </div>
    <div class="tabContent">
        <%@ include file="/WEB-INF/pages/admin/includes/top-pagination-section.jsp" %>
        <c:if test="${hasFilterPanel }">
            <%@ include file="/WEB-INF/pages/admin/includes/filter-panel.jsp" %>
        </c:if>
        <c:choose>
        <c:when test="${results.total == 0}">
            <%@ include file="/WEB-INF/pages/admin/includes/no-result-section.jsp" %>
        </c:when>
        <c:otherwise>
        <div class="tableContainer">
          <div class="tableMain">
            <table cellpadding="0" cellspacing="0" class="generalTable" id="userAccountResultsTable">
                <colgroup>
                    <col width="35"/>
                    <col width="125"/>
                    <col width="115"/>
                    <col width="135"/>
                    <col width="120"/>
                    <col width="120"/>
                    <col width="135"/>
                </colgroup>
                <thead>
                    <tr>
                        <th class="alignCenter">
                            <input type="checkbox" name="search" class="selectAll"/>
                            <span class="sep"></span>
                        </th>
                        <%@ include file="/WEB-INF/pages/admin/includes/sortable-table-headers.jsp" %>
                        <th>Email<span class="sep"></span></th>
                        <th>Role<span class="sep"></span></th>
                        <th class="alignCenter">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${results.items}">
                    <tr>
                        <td class="alignCenter">
                            <input type="checkbox" value="${item.userId}" name="providers"/>
                        </td>
                        <td><a href="<c:url value='/admin/user/details?role=${item.role.description}&userId=${item.userId}' />">${item.username}</a></td>
                        <td>${item.lastName}</td>
                        <td>${item.firstName}</td>
                        <td>${item.email}</td>
                        <td>${item.role.description}</td>
                        <td class="alignCenter">
                            <a href="<c:url value='/admin/user/edit?role=${item.role.description}&userId=${item.userId}' />">Edit</a>
                            <span class="sep">|</span>
                            <a href="javascript:;" class="deleteLink">Delete</a>
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
          </div>
        </div>
        <!-- /.tableContainer -->
        </c:otherwise>
        </c:choose>
        <%@ include file="/WEB-INF/pages/admin/includes/bottom-pagination-section.jsp" %>
    </div>
</div>
<!-- /.tabSection -->