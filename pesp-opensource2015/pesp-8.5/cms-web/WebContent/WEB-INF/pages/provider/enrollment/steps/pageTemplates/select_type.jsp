<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="tabSection">
    <form action="" id="enrollmentForm" method="post">
        <%@include file="/WEB-INF/pages/provider/enrollment/steps/errors.jsp" %>
        
     <div class="detailPanel firstRegistrant" style="width: 940px;">
     
         <%@include file="/WEB-INF/pages/provider/enrollment/steps/pageTemplates/default/provider_type.jsp" %>
         
         <!-- /.section -->
         <div class="tl"></div>
         <div class="tr"></div>
         <div class="bl"></div>
         <div class="br"></div>
     </div>
     
     <div class="buttonBox">
            <input type="hidden" name="pageName" value="${pageName}"/>
         <c:url var="nextPageUrl" value="/provider/enrollment/steps/next" />
         <a id="nextBtn" class="greyBtn" href="javascript:submitFormById('enrollmentForm', '${nextPageUrl}')"><span class="btR"><span class="btM"><span class="icon">Next</span></span></span></a>
     </div>
    </form>
</div>
