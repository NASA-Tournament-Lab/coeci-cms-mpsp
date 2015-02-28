<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.binders.ProviderTypeFormBinder"%>
<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="newEnrollmentPanel practicePanel memberInfoPanel">
    <div class="tableHeader topHeader"><span>Eligibity</span></div>
    <div class="clearFixed"></div>
	<div class="section">
		<input type="hidden" name="formNames" value="<%= ViewStatics.FACILITY_ELIGIBILITY_FORM %>">
		<div class="row">
			<label class="longLbl">Does your facility provide physical or occupational therapy to community residents?</label>
			<div>
				<c:set var="formName" value="_38_therapyIndicator"></c:set>
				<c:set var="formValue" value="${requestScope[formName]}"></c:set>
				<label class="inline leftPadding"><input type="radio" value="Y" name="${formName}" ${formValue eq 'Y' ? 'checked' : ''}>Yes</label>
				<label class="inline leftPadding"><input type="radio" value="N" name="${formName}" ${formValue eq 'N' ? 'checked' : ''}>No</label>
			</div>
			<div class="clearFixed"></div>
		</div>
		<div class="row">
            <table class="eligibilityTable">
                <thead>
                <tr>
                    <th colspan="4">
                        Bed Count
                    </th>
                </tr>
                <tr>
                    <th>SKILLED NURSING FACILITY (TITLE 18 ONLY)</th>
                    <th>NURSING FACILITY (TITLE 19 ONLY)</th>
                    <th>SKILLED NURSING FACILITY DUAL CERTIFIED (TITLE 18/19)</th>
                    <th>ICF/DD</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <c:set var="formName" value="_38_title18BedCount"></c:set>
                        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                        <input type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="6"/>
                    </td>
                    <td>
                        <c:set var="formName" value="_38_title19BedCount"></c:set>
                        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                        <input type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="6"/>
                    </td>
                    <td>
                        <c:set var="formName" value="_38_dualCertBedCount"></c:set>
                        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                        <input type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="6"/>
                    </td>
                    <td>
                        <c:set var="formName" value="_38_icfBedCount"></c:set>
                        <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                        <input type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="6"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="clearFixed"></div>
	</div>
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
</div>