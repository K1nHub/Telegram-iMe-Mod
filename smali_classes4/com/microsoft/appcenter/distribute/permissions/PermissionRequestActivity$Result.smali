.class public Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;
.super Ljava/lang/Object;
.source "PermissionRequestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final permissionRequestResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "permissionRequestResults",
            "exception"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->permissionRequestResults:Ljava/util/Map;

    .line 42
    iput-object p2, p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public areAllPermissionsGranted()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->permissionRequestResults:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/microsoft/appcenter/distribute/permissions/PermissionRequestActivity$Result;->permissionRequestResults:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
