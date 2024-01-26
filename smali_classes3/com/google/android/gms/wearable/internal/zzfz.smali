.class final Lcom/google/android/gms/wearable/internal/zzfz;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzgd;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgc;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzgc;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Node;)V

    return-object v0
.end method

.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzim;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/zzia;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/internal/zzfb;->zzs(Lcom/google/android/gms/wearable/internal/zzex;)V

    return-void
.end method
