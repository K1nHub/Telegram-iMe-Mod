.class public Lcom/microsoft/appcenter/distribute/permissions/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public static varargs permissionsAreGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissions"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionUtils;->permissionsState(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/microsoft/appcenter/distribute/permissions/PermissionUtils;->permissionsAreGranted([I)Z

    move-result p0

    return p0
.end method

.method public static permissionsAreGranted([I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionsState"
        }
    .end annotation

    .line 58
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs permissionsState(Landroid/content/Context;[Ljava/lang/String;)[I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissions"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 32
    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 33
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 34
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static varargs requestPermissions(Landroid/content/Context;[Ljava/lang/String;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permissions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/appcenter/utils/async/AppCenterFuture<",
            "Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {p0, p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->requestPermissions(Landroid/content/Context;[Ljava/lang/String;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;

    move-result-object p0

    return-object p0
.end method
