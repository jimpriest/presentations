<cfcomponent accessors="true" persistent="false" extends="datamanager.controllers.main" output="false" hint="Default controller">
	<cffunction name="getMyServices" access="public" returntype="any">
		<cfreturn this.getBranchOfServiceServices() />
	</cffunction>

	<cffunction name="default" access="public" returntype="any">
		<cfif application.udf.hasPerm(session.user, "ManageBranchesOfService")>
			<cflock timeout="10" scope="Session" type="readonly">
				<cfset rc.objs = this.list() />
			</cflock>
		<cfelse>
			<cfset variables.fw.redirect(action='datamanager:regions')>
		</cfif>
    <cfset rc.title="Branches of Service">
	</cffunction>
</cfcomponent>