<%--
    JSP Fragment for provider type selection form.

    @author j3_guile
    @version 1.0
 --%>

<%@page import="gov.medicaid.binders.ProviderTypeFormBinder"%>
<%@page import="gov.medicaid.entities.dto.ViewStatics"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<div class="practicePanel">
    <input type="hidden" name="formNames" value="<%= ViewStatics.ADDITIONAL_AGENCY_FORM %>">
    
    <div class="tableHeader otherTableHeader">
        <span>Group Affiliation Information</span>
        <a href="javascript:openAgencyLookup(false, false);" class="purpleSmallBtn practiceLookupModalBtn"><span class="btR"><span class="btM">Agency Lookup</span></span></a>
    </div>
    <!-- /.tableHeader -->
    <div class="addPracticeLocations">
        <table cellpadding="0" cellspacing="0" class="generalTable" id="tableAgency">
            <colgroup>
                <col width="22" />
                <col width="276" />
                <col width="177" />
                <col width="221" />
                <col width="80" />
                <col width="28" />
            </colgroup>
            <thead>
                <tr>
                    <th class="firstTheader">#<span class="sep"></span></th>
                    <th>Organization/Agency Name<span class="required">*</span><span class="sep"></span></th>
                    <th>Agency NPI/UMPI<span class="sep"></span></th>
                    <th>Study Id<span class="sep"></span></th>
                    <th>Clearance Date<span class="sep"></span></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:set var="formName" value="_12_additonalLocationSize"></c:set>
                <c:forEach begin="1" end="${requestScope[formName]}" varStatus="status">
                    <tr>
                        <td class="alignCenter">${status.count}
                            <c:set var="formName" value="_12_objectId_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input type="hidden" name="${formName}" value="${formValue}">
						    <c:set var="disableLinkedFields" value=""></c:set>
						    <c:set var="isLinked" value="${false}"></c:set>
						    <c:if test="${not empty formValue}">
						        <c:set var="disableLinkedFields" value='disabled="disabled"'></c:set>
						        <c:set var="isLinked" value="${true}"></c:set>
						    </c:if>
                            <c:set var="formName" value="_12_objectIdHash_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input type="hidden" name="${formName}" value="${formValue}">
                        </td>
                        <td>
                            <c:set var="formName" value="_12_name_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${disableLinkedFields} type="text" class="long250Input" name="${formName}" value="${formValue}" maxlength="100"/>
                        </td>
                        <td>
                            <c:set var="formName" value="_12_npi_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${disableLinkedFields} type="text" class="npiMasked normalInput" name="${formName}" value="${formValue}"  maxlength="10"/>
                        </td>
                        <td>
                            <c:set var="formName" value="_12_studyId_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${disableLinkedFields} type="text" class="normalInput" name="${formName}" value="${formValue}"  maxlength="100"/>
                        </td>
                        <td>
                            <c:set var="formName" value="_12_clearanceDate_${status.index - 1}"></c:set>
                            <c:set var="formValue" value="${requestScope[formName]}"></c:set>
                            <input ${disableLinkedFields} type="text" class="date" name="${formName}" value="${formValue}"  maxlength="10"/>
                        </td>
                        <td class="alignCenter"><a href="javascript:;" class="remove">REMOVE</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="clearFixed"></div>
        <div class="tableBottom">
            <a href="javascript:;" id="addAgency">+ Add Another Practice Location</a>
        </div>
    </div>
    <!-- /.section -->
    <div class="clear"></div>
    <div class="tl"></div>
    <div class="tr"></div>
    <div class="bl"></div>
    <div class="br"></div>
</div>
<!-- /.practicePanel -->
<div class="hide">
    <table class="hide" id="tableAgencyTemplate">
        <tbody>
            <tr>
                <td class="alignCenter"><span>1</span>
                    <input type="hidden" name="_12_objectId" value=""><input type="hidden" name="_12_objectIdHash" value="">
                </td>
                <td><input type="text" class="long250Input" maxlength="100"/></td>
                <td><input type="text" class="normalInput" maxlength="10" /></td>
                <td><input type="text" class="normalInput" maxlength="100" /></td>
                <td><input type="text" class="date" maxlength="10" /></td>
                <td class="alignCenter"><a href="javascript:;" class="remove">REMOVE</a></td>
            </tr>
        </tbody>
    </table>
</div>