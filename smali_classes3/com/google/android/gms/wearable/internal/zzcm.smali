.class final Lcom/google/android/gms/wearable/internal/zzcm;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/Asset;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzcm;->zza:Lcom/google/android/gms/wearable/Asset;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzcs;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzcs;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V

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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzcm;->zza:Lcom/google/android/gms/wearable/Asset;

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzim;->zzu(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/Asset;)V

    return-void
.end method
