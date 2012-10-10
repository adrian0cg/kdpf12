<%--
    @Plat_Forms RM
--%>
<div class="row">
    <div class="span12">
        <h2>Account Details</h2>

        <form class="form-horizontal">
            <div class="control-group">
                <label class="control-label" for="update-email"><g:message code="user.email" /></label>

                <div class="controls">
                    <input type="text" id="update-email" value="${fieldValue(bean: user, field: 'email')}" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-password">New Password</label>

                <div class="controls">
                    <input type="password" id="update-password" />
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-repeat-password">Repeat New Password</label>

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
                        Publish Statistics
                    </label>
                </div>
            </div>

            <div class="control-group">
                <label class="control-label" for="update-old-password">Old Password</label>

                <div class="controls">
                    <input type="password" id="update-old-password">
                    <span class="help-inline">Your old password must be given in order to confirm any changes.</span>
                </div>
            </div>

            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary" id="update-submit">Save Changes</button>
                </div>
            </div>
        </form>
    </div>
</div>
