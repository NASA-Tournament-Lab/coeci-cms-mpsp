<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<input type="hidden" name="formNames" value="<%= ViewStatics.MEMBER_INFO_FORM %>">
<c:set var="selectedMarkup" value='selected="selected"' />
<c:set var="askBGSInfo" value="${viewModel.tabModels[viewModel.currentTab].formSettings['Member Information Form'].settings['askBGSInfo']}"></c:set>
<c:set var="askUMPIorNPI" value="${viewModel.tabModels[viewModel.currentTab].formSettings['Member Information Form'].settings['askUMPIorNPI']}"></c:set>

<div id="membersTable">
<c:set var="formName" value="_16_memberSize"></c:set>

<c:forEach begin="1" end="${requestScope[formName]}" varStatus="status">
<div class="newEnrollmentPanel practicePanel memberInfoPanel">
    <div class="section">
        <c:set var="formName" value="_16_objectId_${status.index - 1}"></c:set>
        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
        <input type="hidden" name="${formName}" value="${formValue}"/>
    
        <div class="">
            <div class="row requireField">
                <label>NPI/UMPI<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_16_npi_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="umpiMasked smallInput" name="${formName}" value="${formValue}" maxlength="10"/>
                <a href="javascript:;" class="purpleBtn NPILook"><span class="btR"><span class="btM"><span class="icon">
                <c:choose>
                	<c:when test="${askUMPIorNPI}">
                		NPI/UMPI Lookup
                	</c:when>
                	<c:otherwise>
                		NPI Lookup
                	</c:otherwise>
                </c:choose>
                </span></span></span></a>
                <span class="errorMsg">No records found with NPI number <span></span></span>
            </div>
        </div>
        <div class="leftCol">
            <div class="row requireField">
                <label>Individual Provider Type<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_16_providerType_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <select name="${formName}">
                	<c:choose>
	                	<c:when test="${onlyPharmacist}">
	                		<option value="Pharmacist">Pharmacist</option>
	                	</c:when>
	                	<c:otherwise>
	                		<option value="">Please select</option>
		                    <c:forEach var="opt" items="${individualMemberProviderTypes}">
		                       <option ${formValue eq opt.description ? selectedMarkup : ''} value="${opt.description}"><c:out value="${opt.description}" /></option>
		                    </c:forEach>
	                	</c:otherwise>
                	</c:choose>
                </select>
            </div>
            <div class="row requireField">
                <label>Date of Birth<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                            
                    <c:set var="formName" value="_16_dob_${status.index - 1}"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            </div>
            <div class="row requireField">
                <label>Start Date<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                    <c:set var="formName" value="_16_startDate_${status.index - 1}"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            </div>
            <div class="clearFixed"></div>
        </div>
        <div class="rightCol">
            <!--<div class="row ">-->
                <!--<label class="">&nbsp;</label>-->
            <!--</div>-->
            <div class="row requireField">
                <label class="">Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_16_name_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="row requireField">
                <label class="">Social Security Number<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_16_ssn_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="ssnMasked normalInput" name="${formName}" value="${formValue}" maxlength="11"/>
            </div>
            <c:if test="${askBGSInfo == true}">
            	<div class="row requireField">
	                <label class="">BGS Study ID<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                <c:set var="formName" value="_16_bgsStudyId_${status.index - 1}"></c:set>
	                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
	                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="75"/>
	            </div>
            	<div class="row requireField">
                <label>BGS Clearance Date<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                    <c:set var="formName" value="_16_bgsClearanceDate_${status.index - 1}"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            	</div>
            </c:if>
            <div class="clearFixed"></div>
        </div>
        <div class="clear"></div>
    </div>
    <!-- /.section -->
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
    <a href="javascript:" class="closeSection"></a>
</div>
</c:forEach>
</div>

<div class="hide">
<div class="newEnrollmentPanel practicePanel memberInfoPanel" id="memberPanelTemplate">
    <div class="section">
        <c:set var="formName" value="_16_objectId"></c:set>
        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
        <input type="hidden" name="${formName}" value="${formValue}"/>
    
        <div class="">
            <div class="row requireField">
                <label>NPI/UMPI<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_16_npi"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="umpiMasked smallInput" name="${formName}" value="${formValue}" maxlength="10"/>
                <a href="javascript:;" class="purpleBtn NPILook"><span class="btR"><span class="btM"><span class="icon"></span>
                <c:choose>
                	<c:when test="${askUMPIorNPI}">
                		NPI/UMPI Lookup
                	</c:when>
                	<c:otherwise>
                		NPI Lookup
                	</c:otherwise>
                </c:choose>
                </span></span></a>
                <span class="errorMsg">No records found with NPI number <span></span></span>
            </div>
        </div>
        <div class="leftCol">
            <div class="row requireField">
                <label>Individual Provider Type<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_16_providerType"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <select name="${formName}">
                	<c:choose>
	                	<c:when test="${onlyPharmacist}">
	                		<option value="Pharmacist">Pharmacist</option>
	                	</c:when>
	                	<c:otherwise>
	                		<option value="">Please select</option>
		                    <c:forEach var="opt" items="${individualMemberProviderTypes}">
		                       <option ${formValue eq opt.description ? selectedMarkup : ''} value="${opt.description}"><c:out value="${opt.description}" /></option>
		                    </c:forEach>
	                	</c:otherwise>
                	</c:choose>
                </select>
            </div>
            <div class="row requireField">
                <label>Date of Birth<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                            
                    <c:set var="formName" value="_16_dob"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            </div>
            <div class="row requireField">
                <label>Start Date<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                    <c:set var="formName" value="_16_startDate"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            </div>
            <div class="clearFixed"></div>
        </div>
        <div class="rightCol">
            <!--<div class="row ">-->
                <!--<label class="">&nbsp;</label>-->
            <!--</div>-->
            <div class="row requireField">
                <label class="">Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_16_name"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="row requireField">
                <label class="">Social Security Number<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_16_ssn"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="ssnMasked normalInput" name="${formName}" value="${formValue}" maxlength="11"/>
            </div>
            <c:if test="${askBGSInfo == true}">
            	<div class="row requireField">
	                <label class="">BGS Study ID<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                <c:set var="formName" value="_16_bgsStudyId"></c:set>
	                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
	                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="75"/>
	            </div>
            	<div class="row requireField">
                <label>BGS Clearance Date<span class="required">*</span>
                    <span class="label">(MM/DD/YYYY)</span>
                </label>
                <span class="floatL"><b>:</b></span>
                            <span class="dateWrapper floatL">
                    <c:set var="formName" value="_16_bgsClearanceDate"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                                    </span>
            	</div>
            </c:if>
            <div class="clearFixed"></div>
        </div>
        <div class="clear"></div>
    </div>
    <!-- /.section -->
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
    <a href="javascript:" class="closeSection"></a>
</div>

<c:url var="lookupUrl" value="/provider/enrollment/lookupProvider" />
<input type="hidden" id="memberLookupURL" value="${lookupUrl}"/>

</div>

<div class="tableBottom">
    <a href="javascript:;" id="addMember">+ Add Another Individual Member</a>
</div>