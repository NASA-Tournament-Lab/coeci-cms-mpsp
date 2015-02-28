<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.binders.ProviderTypeFormBinder"%>
<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<c:if test="${requestScope['_06_bound'] eq 'Y'}">
<!-- /.radioPanel -->
<div class="practicePanel">
    <input type="hidden" name="formNames" value="<%= ViewStatics.PRIMARY_PRACTICE_FORM %>">
    <c:set var="formName" value="_06_objectId"></c:set>
    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
    <input type="hidden" name="${formName}" value="${formValue}"/>
    
    <c:set var="disableLinkedFields" value=""></c:set>
    <c:set var="isLinked" value="${false}"></c:set>
    <c:if test="${not empty formValue}">
        <c:set var="disableLinkedFields" value='disabled="disabled"'></c:set>
        <c:set var="isLinked" value="${true}"></c:set>
    </c:if>

    <c:set var="disableReimbursementAddress" value="${isLinked}" />
    <c:set var="reimbursementAddressMarkup" value="${disableLinkedFields}" />
    <c:set var="formName" value="_06_reimbursementSameAsPrimary"></c:set>
    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
    
    <c:if test="${formValue eq 'Y'}">
        <c:set var="disableReimbursementAddress" value="${true}" />
        <c:set var="reimbursementAddressMarkup" value='disabled="disabled"'></c:set>
    </c:if>
    
    <c:set var="formName" value="_06_objectIdHash"></c:set>
    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
    <input type="hidden" name="${formName}" value="${formValue}"/>
    

	<div id="primaryOffice">
	    <div class="tableHeader otherTableHeader">
	        <span>Primary Office Location Information</span>
	        <a href="javascript:openPracticeLookup(true, false);" class="purpleSmallBtn practiceLookupModalBtn"><span class="btR"><span class="btM">Practice Lookup</span></span></a>
	    </div>
	    <!-- /.tableHeader -->
	    <div class="section">
	        <div class="wholeCol">
	            <div class="row">
	                <label>Primary Practice Name<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                
                    <c:set var="formName" value="_06_name"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="100"/>
	            </div>
	            <div class="row">
	                <label>Group NPI / UMPI<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                
                    <c:set var="formName" value="_06_npi"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="npiMasked normalInput" name="${formName}" value="${formValue}" maxlength="10"/>
                    <input id="unlinkPracticeButton" type="button" value="Remove Reference" onclick="unlinkPractice('_06_')" style="display: ${isLinked ? 'inline' : 'none'}"/>
	            </div>
	            <div class="row">
	                <label>Effective Date<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                <span class="dateWrapper floatL">
	                    <c:set var="formName" value="_06_effectiveDate"></c:set>
	                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
	                    <input class="date" type="text" name="${formName}" value="${formValue}" maxlength="10"/>
	                </span>
	            </div>
	            <div class="row addressline1">
	                <label>Practice Address<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                
                    <c:set var="formName" value="_06_addressLine1"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="28"/>
	            </div>
	            <div class="row inlineBox addressline2">
                    <span class="label">(Practice location cannot be<br />a PO Box)</span>
	                <span class="floatL"><b>&nbsp;</b></span>
                    <c:set var="formName" value="_06_addressLine2"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="normalInput" name="${formName}" value="${formValue}" maxlength="28"/>
	            </div>
	            <div class="row inlineBox">
                    <span class="label">&nbsp;</span>
                    <span class="floatL"><b>&nbsp;</b></span>
	                <label class="cityLabel">City<span class="required">*</span> : </label>

                    <c:set var="formName" value="_06_city"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text"  class="cityInputFor" name="${formName}" value="${formValue}" maxlength="18"/>
	                <label>State<span class="required">*</span> : </label>
                    
                    <c:set var="formName" value="_06_state"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <select ${disableLinkedFields} class="stateSelectFor" name="${formName}">
                        <option value="">Please select</option>
                        <c:forEach var="opt" items="${requestScope['_99_states']}">
                            <option ${formValue eq opt.code ? 'selected' : ''} value="${opt.code}"><c:out value="${opt.description}" /></option>
                        </c:forEach>
                    </select>
	                <label>ZIP Code<span class="required">*</span> : </label>
                    <c:set var="formName" value="_06_zip"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="zipInputFor" name="${formName}" value="${formValue}" maxlength="10"/>
	                <label>County : </label>
                    <c:set var="formName" value="_06_county"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <select ${disableLinkedFields} class="countySelectFor" name="${formName}">
                        <option value="">Please select</option>
                        <c:forEach var="opt" items="${requestScope['_99_counties']}">
                            <option ${formValue eq opt.code ? 'selected' : ''} value="${opt.code}"><c:out value="${opt.description}" /></option>
                        </c:forEach>
                    </select>
	            </div>
                <div class="row">
                    <label>Practice Phone Number<span class="required">*</span></label>
                    <span class="floatL"><b>:</b></span>
                    <c:set var="formName" value="_06_phone1"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInput" name="${formName}" value="${formValue}" maxlength="3"/>
                    <span class="sep">-</span>
                    <c:set var="formName" value="_06_phone2"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInput" name="${formName}" value="${formValue}" maxlength="3"/>
                    <span class="sep">-</span>
                    <c:set var="formName" value="_06_phone3"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInputP" name="${formName}" value="${formValue}" maxlength="4"/>
                    <span class="sep"><strong>ext.</strong></span>
                    <c:set var="formName" value="_06_phone4"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInput" name="${formName}" value="${formValue}" maxlength="3"/>
                </div>
                <div class="row">
                    <label>Practice Fax Number</label>
                    <span class="floatL"><b>:</b></span>
                    <c:set var="formName" value="_06_fax1"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInput" name="${formName}" value="${formValue}" maxlength="3"/>
                    <span class="sep">-</span>
                    <c:set var="formName" value="_06_fax2"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInput" name="${formName}" value="${formValue}" maxlength="3"/>
                    <span class="sep">-</span>
                    <c:set var="formName" value="_06_fax3"></c:set>
                    <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                    <input ${disableLinkedFields} type="text" class="autotab smallInputP" name="${formName}" value="${formValue}" maxlength="4"/>
                </div>
	            <div class="row reimbursementAddressRow">
	                <label>Reimbursement Address<span class="required">*</span></label>
	                <span class="floatL"><b>:</b></span>
	                <div class="inputContainer">
	                    <div class="checkboxWrapper">
                            <c:set var="formName" value="_06_reimbursementSameAsPrimary"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${disableLinkedFields} type="checkbox" class="checkbox" name="${formName}" ${formValue eq 'Y' ? 'checked' : ''}/>Same as Above
	                    </div>
	                    
                        <div class="row addressline1">
                            <c:set var="formName" value="_06_reimbursementAddressLine1"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${reimbursementAddressMarkup} type="text" class="${disableReimbursementAddress ? 'disabled' : '' } addressInput normalInput" name="${formName}" value="${formValue}" maxlength="28"/>
                        </div>
                        
                        <div class="row addressline2">
                            <c:set var="formName" value="_06_reimbursementAddressLine2"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${reimbursementAddressMarkup} type="text" class="${disableReimbursementAddress ? 'disabled' : '' } addressInput normalInput" name="${formName}" value="${formValue}" maxlength="28"/>
                        </div>
	                    
	                    <div class="addreddWrapper">
	                        <label class="smallLabel">City<span class="required">*</span> : </label>
                            <c:set var="formName" value="_06_reimbursementCity"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${reimbursementAddressMarkup} type="text" class="${disableReimbursementAddress ? 'disabled' : '' } cityInput" name="${formName}" value="${formValue}" maxlength="20"/>
                            <c:set var="formName" value="_06_reimbursementState"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <label class="smallLabel">State<span class="required">*</span> : </label>
                            <select ${reimbursementAddressMarkup} class="${disableReimbursementAddress ? 'disabled' : '' } stateSelect" name="${formName}">
                                <option value="">Please select</option>
		                        <c:forEach var="opt" items="${requestScope['_99_states']}">
		                            <option ${formValue eq opt.code ? 'selected' : ''} value="${opt.code}"><c:out value="${opt.description}" /></option>
		                        </c:forEach>
                            </select>
                            <c:set var="formName" value="_06_reimbursementZip"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <label class="smallLabel">ZIP Code<span class="required">*</span> : </label>
                            <input ${reimbursementAddressMarkup} type="text" class="${disableReimbursementAddress ? 'disabled' : '' } zipInput" name="${formName}" value="${formValue}" maxlength="10"/>
	                    </div>
	                </div>
	            </div>
	            <div class="clear"></div>
	        </div>
	    </div>
	    <!-- /.section -->
	</div>
	<!-- /#primaryOffice -->
    <div class="clear"></div>
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
</div>
<!-- /.practicePanel -->
</c:if>
