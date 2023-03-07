.class public final synthetic Lcom/smedialink/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/manager/update/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/manager/update/UpdateManager$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/data/manager/update/UpdateManager;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/manager/update/UpdateManager;->$r8$lambda$QcToTZ1FuWhMGJgLqBLEcNepPy8(Lcom/smedialink/storage/data/manager/update/UpdateManager;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method
