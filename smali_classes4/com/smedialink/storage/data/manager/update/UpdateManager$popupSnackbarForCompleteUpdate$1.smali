.class final Lcom/smedialink/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/update/UpdateManager;->popupSnackbarForCompleteUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/manager/update/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;->this$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/update/UpdateManager$popupSnackbarForCompleteUpdate$1;->this$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;

    invoke-static {v0}, Lcom/smedialink/storage/data/manager/update/UpdateManager;->access$getAppUpdateManager$p(Lcom/smedialink/storage/data/manager/update/UpdateManager;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    return-void
.end method
