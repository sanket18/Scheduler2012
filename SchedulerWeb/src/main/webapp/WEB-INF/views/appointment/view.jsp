<%@ include file="../includes/header.jsp"%>
<title>My Appointments</title>

<h3>My Appointments</h3>
<c:if  test="${!empty appointments}">
<table class="table table-hover table-bordered">
<tr>
    <th>Date</th>
    <th>Department</th>
    <th>Purpose of Visit</th>
    <th>Meeting Notes</th>
    <th>Meeting Finished</th>
</tr>
<c:forEach items="${appointments}" var="appointment">
    <tr>
        <td>${appointment.appointmentDate }</td>
        <td>${appointment.departmentName }</td>
        <td>${appointment.purposeOfVisit }</td>
        <td>${appointment.meetingNotes}</td>
       <td>
        <c:if test = "${appointment.meetingFinished.equals('Y')}">
  			<span class="label label-success">Yes</span>
		</c:if>
		<c:if test = "${appointment.meetingFinished.equals('N')}">
  			<span class="label label-danger">No</span>
		</c:if>
		<c:if test = "${appointment.meetingFinished.equals('C')}">
  			<span class="label label-default">Cancelled</span>
		</c:if>
		<c:if test = "${appointment.meetingFinished.equals('L')}">
  			<span class="label label-warning">Late</span>
		</c:if>
		</td>
    </tr>
</c:forEach>
</table>
</c:if>
<%@ include file="../includes/footer.jsp"%>