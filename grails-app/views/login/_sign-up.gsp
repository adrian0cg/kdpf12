<%--
    @author Patrick Jungermann
    @Plat_Forms RM
--%>
<h2><g:message code="index.unauthorized.sign-up.headline" /></h2>

<p>
    <g:form class="form-horizontal" url="[controller: 'signUp', action: 'index']">
        <div class="control-group ${hasErrors(bean: user ?: signUpCmd, field: 'email', 'error')}">
            <label class="control-label" for="signup-email"><g:message code="user.email" /></label>

            <div class="controls">
                <input type="text" id="signup-email" name="email" value="${fieldValue(bean: user ?: signUpCmd, field: 'email')}" placeholder="${g.message(code: 'user.email.example')}" />
            </div>
        </div>

        <div class="control-group ${hasErrors(bean: signUpCmd, field: 'password', 'error')}">
            <label class="control-label" for="signup-password"><g:message code="user.password" /></label>

            <div class="controls">
                <input type="password" id="signup-password" name="password" placeholder="${g.message(code: 'user.password.example')}" />
            </div>
        </div>

        <div class="control-group ${hasErrors(bean: signUpCmd, field: 'password', 'error')}">
            <label class="control-label" for="signup-repeat-password"><g:message code="index.unauthorized.sign-up.repeat-password" /></label>

            <div class="controls">
                <input type="password" id="signup-repeat-password" name="repeatPassword" placeholder="${g.message(code: 'user.password.example')}" />
            </div>
        </div>

        <div class="control-group ${hasErrors(bean: user ?: signUpCmd, field: 'username', 'error')}">
            <label class="control-label" for="signup-displayname"><g:message code="user.display-name" /></label>

            <div class="controls">
                <input type="text" id="signup-displayname" name="username"
                       value="${fieldValue(bean: user ?: signUpCmd, field: 'username')}"
                       placeholder="${g.message(code: 'user.display-name.example')}" />
            </div>
        </div>

        <div class="control-group ${hasErrors(bean: user ?: signUpCmd, field: 'fullName', 'error')}">
            <label class="control-label" for="signup-fullname"><g:message code="user.full-name" /></label>

            <div class="controls">
                <input type="text" id="signup-fullname" name="fullName"
                       value="${fieldValue(bean: user ?: signUpCmd, field: 'fullName')}"
                       placeholder="${g.message(code: 'user.full-name.example')}" />
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <g:checkBox id="signup-publish" name="showStats" value="${user || signUpCmd ? (user ?: signUpCmd).showStats : true}" />
                    <g:message code="user.publish-statistics" />
                </label>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button id="signup-submit" type="submit" class="btn"><g:message code="index.unauthorized.sign-up.submit" /></button>
            </div>
        </div>
    </g:form>
</p>
