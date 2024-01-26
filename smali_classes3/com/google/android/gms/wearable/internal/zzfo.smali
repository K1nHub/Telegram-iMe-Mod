.class public final synthetic Lcom/google/android/gms/wearable/internal/zzfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/MessageClient$RpcService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfo;->zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfo;->zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhi;

    invoke-direct {v1, p2}, Lcom/google/android/gms/wearable/internal/zzhi;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/wearable/internal/zzim;->zzB(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageClient$RpcService;)V

    return-void
.end method
