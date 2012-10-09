<%--
    @author Patrick Jungermann
    @Plat_Forms RM
--%>
<h2><g:message code="index.unauthorized.sign-in.headline" /></h2>

<p>
    <form id="loginForm" class="form-horizontal" action="${postUrl}" method="POST" autocomplete="off">
        <div class="control-group">
            <label class="control-label" for="signin-email"><g:message code="user.username_or_email" /></label>

            <div class="controls">
                <input type="text" id="signin-email" name="j_username" placeholder="${g.message(code: 'user.username_or_email.example')}"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signin-password"><g:message code="user.password" /></label>

            <div class="controls">
                <input type="password" id="signin-password" name="j_password" placeholder="${g.message(code: 'user.password.example')}"/>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button id="signin-submit" type="submit" class="btn"><g:message code="index.unauthorized.sign-in.submit" /></button>
            </div>
        </div>
    </form>
</p>

<r:script>
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
</r:script>
