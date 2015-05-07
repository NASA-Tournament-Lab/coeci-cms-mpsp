<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<c:if test="${requestScope['_34_bound'] eq 'Y'}">
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<table cellpadding="0" cellspacing="0" class="generalTable noInput">
    <colgroup>
        <col width="284"/>
        <col width="128"/>
        <col width="128"/>
    </colgroup>
    <thead>
        <tr>
            <th>Certification/Contract<span class="sep"></span></th>
            <th>Begin Date<span class="sep"></span></th>
            <th>End Date<span class="sep"></span></th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${requestScope['_34_certificateInd_0'] eq 'Y'}">
		    <tr>
		        <c:set var="formName" value="_34_contractType_0"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_beginDate_0"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_endDate_0"></c:set>
		        <td>${requestScope[formName]}</td>
		    </tr>
        </c:if>
        <c:if test="${requestScope['_34_certificateInd_1'] eq 'Y'}">
		    <tr>
		        <c:set var="formName" value="_34_contractType_1"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_beginDate_1"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_endDate_1"></c:set>
		        <td>${requestScope[formName]}</td>
		    </tr>
        </c:if>
        <c:if test="${requestScope['_34_certificateInd_2'] eq 'Y'}">
		    <tr>
		        <c:set var="formName" value="_34_contractType_2"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_beginDate_2"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_endDate_2"></c:set>
		        <td>${requestScope[formName]}</td>
		    </tr>
        </c:if>
        <c:if test="${requestScope['_34_certificateInd_3'] eq 'Y'}">
		    <tr>
		        <c:set var="formName" value="_34_contractType_3"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_beginDate_3"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_endDate_3"></c:set>
		        <td>${requestScope[formName]}</td>
		    </tr>
        </c:if>
        <c:if test="${requestScope['_34_certificateInd_4'] eq 'Y'}">
		    <tr>
		        <c:set var="formName" value="_34_contractType_4"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_beginDate_4"></c:set>
		        <td>${requestScope[formName]}</td>
		        <c:set var="formName" value="_34_endDate_4"></c:set>
		        <td>${requestScope[formName]}</td>
		    </tr>
        </c:if>
    </tbody>
</table>
<!-- /.section -->
<div class="clearFixed"></div>
</c:if>