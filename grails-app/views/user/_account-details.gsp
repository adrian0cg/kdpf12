<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2><g:message code="profile.account-details" /></h2>

        <g:form class="form-horizontal" url="[controller: 'user', action: 'update']">
            <div class="control-group ${fieldError(bean: bean, field: 'email', 'error')}">
                <label class="control-label" for="update-email">
                    <g:message code="user.email" />
                </label>

                <div class="controls">
                    <input type="text" id="update-email" name="email" value="${fieldValue(bean: data, field: 'email')}" />
                </div>
            </div>

            <div class="control-group ${hasErrors(bean: bean, field: 'password', 'error')}">
                <label class="control-label" for="update-password">
                    <g:message code="profile.account.new-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-password" name="password" />
                </div>
            </div>

            <div class="control-group ${hasErrors(bean: bean, field: 'password', 'error')}">
                <label class="control-label" for="update-repeat-password">
                    <g:message code="profile.account.repeat-new-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-repeat-password" name="repeatPassword" />
                </div>
            </div>

            <div class="control-group ${hasErrors(bean: bean, field: 'username', 'error')}">
                <label class="control-label" for="update-displayname"><g:message code="user.display-name" /></label>

                <div class="controls">
                    <input type="text" id="update-displayname" name="username" value="${fieldValue(bean: data, field: 'username')}" />
                </div>
            </div>

            <div class="control-group ${hasErrors(bean: bean, field: 'fullName', 'error')}">
                <label class="control-label" for="update-fullname"><g:message code="user.full-name" /></label>

                <div class="controls">
                    <input type="text" id="update-fullname" name="fullName" value="${fieldValue(bean: data, field: 'fullName')}" />
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="showStats" id="update-publish" value="${data.showStats}" />
                        <g:message code="user.publish-statistics" />
                    </label>
                </div>
            </div>

            <div class="control-group ${denied ? 'error' : ''}">
                <label class="control-label" for="update-old-password">
                    <g:message code="profile.account.old-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-old-password" name="oldPassword" />
                    <span class="help-inline"><g:message code="profile.account.old-password.help" /></span>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary" id="update-submit">
                        <g:message code="profile.account.save-changes" />
                    </button>
                </div>
            </div>
        </g:form>
    </div>
</div>
