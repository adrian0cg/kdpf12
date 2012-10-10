<%--
    @Plat_Forms RM
--%>
<tr id="${coffeeKitty.id}">
    <td>${coffeeKitty.name}</td>
    <td>
        <g:formRemote class='form-search' update='${coffeeKitty.id}' url='[action: "join"]' name='join'>
            <g:hiddenField name='id' value='${coffeeKitty.id}'/>
            <button type='submit' class='btn-primary btn-mini member-request'>Request Membership</button>
        </g:formRemote>
    </td>
</tr>