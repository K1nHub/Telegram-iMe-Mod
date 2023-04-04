.class final Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/update/UpdateManager;->checkUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/manager/update/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 128
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    const-string v0, "appUpdateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 130
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$getMode$p(Lcom/iMe/storage/data/manager/update/UpdateManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Update available"

    .line 132
    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$isNeedUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$checkUpdate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$startUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "No Update available"

    .line 137
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
