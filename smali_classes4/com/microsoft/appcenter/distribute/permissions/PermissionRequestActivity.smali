.class public Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;
.super Landroid/app/Activity;
.source "PermissionRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;
    }
.end annotation


# static fields
.field static final REQUEST_CODE:I

.field static sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture<",
            "Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static complete(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;->complete(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 91
    sput-object p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    return-void

    :cond_0
    const-string p0, "AppCenterDistribute"

    const-string v0, "The start of the activity was not called using the requestPermissions function or the future has already been completed"

    .line 94
    invoke-static {p0, v0}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPermissionsList()[Ljava/lang/String;
    .locals 2

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v1, "intent.extra.PERMISSIONS"

    .line 107
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionsRequestResultMap([Ljava/lang/String;[I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permissions",
            "results"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    const-string p1, "AppCenterDistribute"

    const-string p2, "Invalid argument array sizes."

    .line 113
    invoke-static {p1, p2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 116
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 117
    aget-object v3, p1, v2

    aget v4, p2, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static varargs requestPermissions(Landroid/content/Context;[Ljava/lang/String;)Lcom/microsoft/appcenter/utils/async/AppCenterFuture;
    .locals 2
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

    .line 73
    sget-object v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    if-eqz v0, :cond_0

    const-string p0, "AppCenterDistribute"

    const-string p1, "Result future flag is null."

    .line 74
    invoke-static {p0, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    new-instance v0, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    invoke-direct {v0}, Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;-><init>()V

    sput-object v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "intent.extra.PERMISSIONS"

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    sget-object p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->sResultFuture:Lcom/microsoft/appcenter/utils/async/DefaultAppCenterFuture;

    return-object p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 158
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const-string v1, "AppCenterDistribute"

    const/16 v2, 0x17

    if-ge p1, v2, :cond_0

    .line 126
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "There is no need to request permissions in runtime on Android earlier than 6.0."

    invoke-direct {p1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const-string v2, "Android version incompatible."

    .line 127
    invoke-static {v1, v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    new-instance v1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;

    invoke-direct {v1, v0, p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;-><init>(Ljava/util/Map;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->complete(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V

    .line 129
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->finish()V

    return-void

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->getPermissionsList()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 134
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to get permissions list from intents extras."

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v2, "Failed to get permissions list."

    .line 135
    invoke-static {v1, v2, p1}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    new-instance v1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;

    invoke-direct {v1, v0, p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;-><init>(Ljava/util/Map;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->complete(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V

    .line 137
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->finish()V

    return-void

    .line 140
    :cond_1
    sget v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->REQUEST_CODE:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 145
    sget v0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->REQUEST_CODE:I

    if-ne p1, v0, :cond_2

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->getPermissionsRequestResultMap([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance p3, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;-><init>(Ljava/util/Map;Ljava/lang/Exception;)V

    invoke-static {p3}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->complete(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V

    .line 152
    invoke-virtual {p0}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->finish()V

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    new-instance p1, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;

    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error while getting permission request results."

    invoke-direct {p3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, p3}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;-><init>(Ljava/util/Map;Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;->complete(Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;)V

    :cond_2
    :goto_1
    return-void
.end method
