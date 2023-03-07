.class final Lcom/google/android/gms/wearable/internal/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# static fields
.field public static final synthetic zzc:I


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzfx;

.field final synthetic zzb:Lcom/google/android/gms/wearable/internal/zzev;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzfx;Lcom/google/android/gms/wearable/internal/zzev;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzir;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzir;->zzb:Lcom/google/android/gms/wearable/internal/zzev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic notifyListener(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/MessageClient$RpcService;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzir;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/internal/zzfx;->getSourceNodeId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzir;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/internal/zzfx;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzir;->zza:Lcom/google/android/gms/wearable/internal/zzfx;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/wearable/internal/zzfx;->getData()[B

    move-result-object v2

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/wearable/MessageClient$RpcService;->onRequest(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzir;->zzb:Lcom/google/android/gms/wearable/internal/zzev;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzit;->zzu(Lcom/google/android/gms/wearable/internal/zzev;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzir;->zzb:Lcom/google/android/gms/wearable/internal/zzev;

    .line 7
    new-instance v1, Lcom/google/android/gms/wearable/internal/zziq;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wearable/internal/zziq;-><init>(Lcom/google/android/gms/wearable/internal/zzev;[B)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .locals 2

    const-string v0, "WearableListenerStub"

    const-string v1, "Failed to notify listener, sending null response"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzir;->zzb:Lcom/google/android/gms/wearable/internal/zzev;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzit;->zzu(Lcom/google/android/gms/wearable/internal/zzev;)V

    return-void
.end method
