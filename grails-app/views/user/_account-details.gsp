<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2><g:message code="profile.account-details" /></h2>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="update-email">
                    <g:message code="user.email" />
                </label>

                <div class="controls">
                    <input type="text" id="update-email" value="${fieldValue(bean: user, field: 'email')}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-password">
                    <g:message code="profile.account.new-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-password" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-repeat-password">
                    <g:message code="profile.account.repeat-new-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-repeat-password" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-displayname"><g:message code="user.display-name" /></label>

                <div class="controls">
                    <input type="text" id="update-displayname" value="${fieldValue(bean: user, field: 'username')}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-fullname"><g:message code="user.full-name" /></label>

                <div class="controls">
                    <input type="text" id="update-fullname" value="${fieldValue(bean: user, field: 'fullName')}" />
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <g:checkBox name="showStats" id="update-publish" value="${user.showStats}" />
                        <g:message code="user.publish-statistics" />
                    </label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-old-password">
                    <g:message code="profile.account.old-password" />
                </label>

                <div class="controls">
                    <input type="password" id="update-old-password">
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
        </form>
    </div>
</div>
