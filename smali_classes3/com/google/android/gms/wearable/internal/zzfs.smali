.class public final synthetic Lcom/google/android/gms/wearable/internal/zzfs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/internal/zzfw;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:[B

.field public final synthetic zze:Lcom/google/android/gms/wearable/MessageOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzfw;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/wearable/MessageOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zza:Lcom/google/android/gms/wearable/internal/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zze:Lcom/google/android/gms/wearable/MessageOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zza:Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zzd:[B

    iget-object v6, p0, Lcom/google/android/gms/wearable/internal/zzfs;->zze:Lcom/google/android/gms/wearable/MessageOptions;

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/wearable/internal/zzft;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/wearable/internal/zzft;-><init>(Lcom/google/android/gms/wearable/internal/zzfw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzig;

    invoke-direct {v2, v1}, Lcom/google/android/gms/wearable/internal/zzig;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v1, p1

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/wearable/internal/zzfb;->zzA(Lcom/google/android/gms/wearable/internal/zzex;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/wearable/MessageOptions;)V

    return-void
.end method
