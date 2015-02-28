<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<input type="hidden" name="formNames" value="<%= ViewStatics.PROVIDER_SETUP_FORM %>">
<c:set var="selectedMarkup" value='selected="selected"' />

<div id="setupTable">
<c:set var="formName" value="_20_payToSize"></c:set>

<c:forEach begin="1" end="${requestScope[formName]}" varStatus="status">
<div class="newEnrollmentPanel practicePanel memberInfoPanel">
    <div class="section">
        <c:set var="formName" value="_20_objectId_${status.index - 1}"></c:set>
        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
        <input type="hidden" class="objectIdInput" name="${formName}" value="${formValue}"/>
    
        <div class="">
            <div class="row requireField">
                <label>NPI<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_npi_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="npiMasked smallInput" name="${formName}" value="${formValue}" maxlength="10"/>
                <a href="javascript:;" class="purpleBtn NPISetupLookup"><span class="btR"><span class="btM"><span class="icon">NPI Lookup</span></span></span></a>
                <span class="errorMsg">No records found with NPI number <span></span></span>
            </div>
        </div>
        <div class="leftCol">
            <div class="row requireField">
                <label>Pay-to Provider Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_name_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="row requireField">
                <label>Contact Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_contactName_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="contactNameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="clearFixed"></div>
        </div>
        <div class="rightCol">
            <!--<div class="row ">-->
                <!--<label class="">&nbsp;</label>-->
            <!--</div>-->
            <div class="row requireField">
                <label class="">Effective Date<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <span class="dateWrapper floatL">
                    <c:set var="formName" value="_20_effectiveDate_${status.index - 1}"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                </span>
            </div>
            <div class="row requireField">
                <label>Phone Number<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_20_phone1_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone1Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_20_phone2_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone2Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_20_phone3_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone3Input smallInputP" name="${formName}" value="${formValue}" maxlength="4"/>
                <span class="sep"><strong>ext.</strong></span>
                <c:set var="formName" value="_20_phone4_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone4Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
            </div>
            <div class="row requireField">
                <label class="multiLine">Choose One<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_20_type_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <label class="inline"><input type="radio" ${formValue eq 'Claim' ? 'checked' : ''} name="${formName}" value="Claim"/>Claim</label>
                <label class="inline"><input type="radio" ${formValue eq 'ERA' ? 'checked' : ''} name="${formName}" value="ERA"/>ERA</label>
                <label class="inline"><input type="radio" ${formValue eq 'Both' ? 'checked' : ''} name="${formName}" value="Both"/>Both</label>
            </div>
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
<div class="newEnrollmentPanel practicePanel memberInfoPanel" id="setupTemplate">
<div class="section">
        <c:set var="formName" value="_20_objectId_${status.index - 1}"></c:set>
        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
        <input type="hidden" class="objectIdInput" name="${formName}" value="${formValue}"/>
    
        <div class="">
            <div class="row requireField">
                <label>NPI<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_npi_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="npiMasked smallInput" name="${formName}" value="${formValue}" maxlength="10"/>
                <a href="javascript:;" class="purpleBtn NPISetupLookup"><span class="btR"><span class="btM"><span class="icon">NPI Lookup</span></span></span></a>
                <span class="errorMsg">No records found with NPI number <span></span></span>
            </div>
        </div>
        <div class="leftCol">
            <div class="row requireField">
                <label>Pay-to Provider Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_name_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="nameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="row requireField">
                <label>Contact Name<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                
                <c:set var="formName" value="_20_contactName_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="contactNameInput normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
            </div>
            <div class="clearFixed"></div>
        </div>
        <div class="rightCol">
            <!--<div class="row ">-->
                <!--<label class="">&nbsp;</label>-->
            <!--</div>-->
            <div class="row requireField">
                <label class="">Effective Date<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <span class="dateWrapper floatL">
                    <c:set var="formName" value="_20_startDate_${status.index - 1}"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input class="date" type="text" name="${formName}" value="${formValue}"/>
                </span>
            </div>
            <div class="row requireField">
                <label>Phone Number<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_20_phone1"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone1Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_20_phone2"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone2Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
                <span class="sep">-</span>
                <c:set var="formName" value="_20_phone3"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone3Input smallInputP" name="${formName}" value="${formValue}" maxlength="4"/>
                <span class="sep"><strong>ext.</strong></span>
                <c:set var="formName" value="_20_phone4"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <input type="text" class="phone4Input tinyInput" name="${formName}" value="${formValue}" maxlength="3"/>
            </div>
            <div class="row requireField">
                <label class="multiLine">Choose One<span class="required">*</span></label>
                <span class="floatL"><b>:</b></span>
                <c:set var="formName" value="_20_iboRelationship_${status.index - 1}"></c:set>
                <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                <label class="inline"><input type="radio" ${formValue eq 'Claim' ? 'checked' : ''} name="${formName}" value="Claim"/>Claim</label>
                <label class="inline"><input type="radio" ${formValue eq 'ERA' ? 'checked' : ''} name="${formName}" value="ERA"/>ERA</label>
                <label class="inline"><input type="radio" ${formValue eq 'Both' ? 'checked' : ''} name="${formName}" value="Both"/>Both</label>
            </div>
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
<input type="hidden" id="setupLookupURL" value="${lookupUrl}"/>

</div>

<div class="tableBottom">
    <a href="javascript:;" id="addPayTo">+ Add Another Pay-To Provider</a>
</div>