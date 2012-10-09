<%--
    @author Patrick Jungermann
    @Plat_Forms RM
--%>
<h2><g:message code="index.unauthorized.sign-in.headline" /></h2>

<p>
    <form class="form-horizontal" action="index-authd.html">
        <div class="control-group">
            <label class="control-label" for="signin-email"><g:message code="user.email" /></label>

            <div class="controls">
                <input type="text" id="signin-email" placeholder="${g.message(code: 'user.email.example')}"/>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signin-password"><g:message code="user.password" /></label>

            <div class="controls">
                <input type="password" id="signin-password" placeholder="${g.message(code: 'user.password.example')}"/>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button id="signin-submit" type="submit" class="btn"><g:message code="index.unauthorized.sign-in.submit" /></button>
            </div>
        </div>
    </form>
</p>
