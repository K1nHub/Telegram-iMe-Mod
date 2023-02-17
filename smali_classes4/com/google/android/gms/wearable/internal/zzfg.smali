.class final Lcom/google/android/gms/wearable/internal/zzfg;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzfl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zzc:[B

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzfk;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzfk;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    return-object v0
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzfg;->zzc:[B

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v3, Lcom/google/android/gms/wearable/internal/zzig;

    invoke-direct {v3, p0}, Lcom/google/android/gms/wearable/internal/zzig;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzfb;->zzz(Lcom/google/android/gms/wearable/internal/zzex;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
