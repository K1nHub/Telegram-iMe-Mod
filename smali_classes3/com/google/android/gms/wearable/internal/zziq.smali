.class public final synthetic Lcom/google/android/gms/wearable/internal/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/internal/zzev;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzev;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zziq;->zza:Lcom/google/android/gms/wearable/internal/zzev;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zziq;->zza:Lcom/google/android/gms/wearable/internal/zzev;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzit;->zzv(Lcom/google/android/gms/wearable/internal/zzev;Z[B)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "WearableListenerStub"

    const-string v2, "Failed to resolve future, sending null response"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzit;->zzu(Lcom/google/android/gms/wearable/internal/zzev;)V

    return-void
.end method
