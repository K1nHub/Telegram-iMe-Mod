.class public final synthetic Lcom/google/android/gms/wearable/internal/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/internal/zzbc;

.field public final synthetic zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:[Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzbc;Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zza:Lcom/google/android/gms/wearable/internal/zzbc;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzd:[Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zza:Lcom/google/android/gms/wearable/internal/zzbc;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzb:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzaz;->zzd:[Landroid/content/IntentFilter;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/wearable/internal/zzhj;

    invoke-direct {v1, p2}, Lcom/google/android/gms/wearable/internal/zzhj;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/zzim;->zzq(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Lcom/google/android/gms/common/api/internal/ListenerHolder;Ljava/lang/String;[Landroid/content/IntentFilter;)V

    return-void
.end method
