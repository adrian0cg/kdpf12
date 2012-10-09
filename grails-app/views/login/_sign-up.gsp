<%--
    @author Patrick Jungermann
    @Plat_Forms RM
--%>
<h2><g:message code="index.unauthorized.sign-up.headline" /></h2>

<p>
    <form class="form-horizontal" action="index-authd-no-kitty.html">
        <div class="control-group">
            <label class="control-label" for="signup-email"><g:message code="user.email" /></label>

            <div class="controls">
                <input type="text" id="signup-email" placeholder="${g.message(code: 'user.email.example')}" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signup-password"><g:message code="user.password" /></label>

            <div class="controls">
                <input type="password" id="signup-password" placeholder="${g.message(code: 'user.password.example')}" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signup-repeat-password"><g:message code="index.unauthorized.sign-up.repeat-password" /></label>

            <div class="controls">
                <input type="password" id="signup-repeat-password" placeholder="${g.message(code: 'user.password.example')}" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signup-displayname"><g:message code="user.display-name" /></label>

            <div class="controls">
                <input type="text" id="signup-displayname" placeholder="${g.message(code: 'user.display-name.example')}" />
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="signup-fullname"><g:message code="user.full-name" /></label>

            <div class="controls">
                <input type="text" id="signup-fullname" placeholder="${g.message(code: 'user.full-name.example')}" />
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox" checked="checked" id="signup-publish" />
                    <g:message code="user.publish-statistics" />
                </label>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button id="signup-submit" type="submit" class="btn"><g:message code="index.unauthorized.sign-up.submit" /></button>
            </div>
        </div>
    </form>
</p>
