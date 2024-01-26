.class final Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UpdateManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/update/UpdateManager;->continueUpdateForFlexible()V
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

    iput-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 196
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;->invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 1

    const-string v0, "appUpdateInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "An update has been downloaded"

    .line 200
    invoke-static {v0, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object p1, p0, Lcom/iMe/storage/data/manager/update/UpdateManager$continueUpdateForFlexible$1;->this$0:Lcom/iMe/storage/data/manager/update/UpdateManager;

    invoke-static {p1}, Lcom/iMe/storage/data/manager/update/UpdateManager;->access$popupSnackbarForCompleteUpdate(Lcom/iMe/storage/data/manager/update/UpdateManager;)V

    :cond_0
    return-void
.end method
