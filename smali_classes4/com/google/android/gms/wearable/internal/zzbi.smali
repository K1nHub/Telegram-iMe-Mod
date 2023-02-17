.class final Lcom/google/android/gms/wearable/internal/zzbi;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/gms/wearable/internal/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbq;Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbi;->zzb:Lcom/google/android/gms/wearable/internal/zzbq;

    iput p3, p0, Lcom/google/android/gms/wearable/internal/zzbi;->zza:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbi;->zzb:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzbq;->zza(Lcom/google/android/gms/wearable/internal/zzbq;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzbi;->zza:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzhp;

    invoke-direct {v2, p0}, Lcom/google/android/gms/wearable/internal/zzhp;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/zzfb;->zzg(Lcom/google/android/gms/wearable/internal/zzex;Ljava/lang/String;I)V

    return-void
.end method
