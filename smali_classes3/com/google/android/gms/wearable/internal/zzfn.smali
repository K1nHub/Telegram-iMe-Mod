.class public final synthetic Lcom/google/android/gms/wearable/internal/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;

.field public final synthetic zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic zzc:[Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/MessageClient$RpcService;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zzc:[Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zza:Lcom/google/android/gms/wearable/MessageClient$RpcService;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzfn;->zzc:[Landroid/content/IntentFilter;

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v3, Lcom/google/android/gms/wearable/internal/zzhj;

    invoke-direct {v3, p2}, Lcom/google/android/gms/wearable/internal/zzhj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzim;->zzt(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/MessageClient$RpcService;Lcom/google/android/gms/common/api/internal/ListenerHolder;[Landroid/content/IntentFilter;)V

    return-void
.end method
