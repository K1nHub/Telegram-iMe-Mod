.class public final synthetic Lcom/google/android/gms/wearable/internal/zzfm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wearable@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/wearable/internal/zzfw;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:[B


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/wearable/internal/zzfw;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zza:Lcom/google/android/gms/wearable/internal/zzfw;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzd:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zza:Lcom/google/android/gms/wearable/internal/zzfw;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzfm;->zzd:[B

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v4, Lcom/google/android/gms/wearable/internal/zzfu;

    invoke-direct {v4, v0, p2}, Lcom/google/android/gms/wearable/internal/zzfu;-><init>(Lcom/google/android/gms/wearable/internal/zzfw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 2
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance p2, Lcom/google/android/gms/wearable/internal/zzih;

    invoke-direct {p2, v4}, Lcom/google/android/gms/wearable/internal/zzih;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/zzfb;->zzB(Lcom/google/android/gms/wearable/internal/zzex;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
