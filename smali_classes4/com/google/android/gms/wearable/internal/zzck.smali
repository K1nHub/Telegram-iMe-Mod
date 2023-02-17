.class final Lcom/google/android/gms/wearable/internal/zzck;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Landroid/net/Uri;

.field final synthetic zzb:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzct;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;I)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzck;->zza:Landroid/net/Uri;

    iput p4, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzb:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzck;->zza:Landroid/net/Uri;

    iget v1, p0, Lcom/google/android/gms/wearable/internal/zzck;->zzb:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzhy;

    invoke-direct {v2, p0}, Lcom/google/android/gms/wearable/internal/zzhy;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/wearable/internal/zzfb;->zzq(Lcom/google/android/gms/wearable/internal/zzex;Landroid/net/Uri;I)V

    return-void
.end method
