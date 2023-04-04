.class final Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForImmediate()V
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

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 4

    const-string v0, "appUpdateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$getAppUpdateManager$p(Lcom/iMe/storage/data/manager/update/UpdateManager;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$getMode$p(Lcom/iMe/storage/data/manager/update/UpdateManager;)I

    move-result v1

    .line 207
    iget-object v2, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForImmediate$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {v2}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$getActivity(Lcom/iMe/storage/data/manager/update/UpdateManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x309

    .line 204
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-static {p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
