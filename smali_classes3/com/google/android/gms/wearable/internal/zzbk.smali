.class final Lcom/google/android/gms/wearable/internal/zzbk;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/wearable/internal/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbq;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbk;->zza:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzbp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/wearable/internal/zzbp;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/io/OutputStream;)V

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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbk;->zza:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzbq;->zza(Lcom/google/android/gms/wearable/internal/zzbq;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzca;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/wearable/internal/zzca;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 4
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzfb;

    new-instance v2, Lcom/google/android/gms/wearable/internal/zzhu;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/wearable/internal/zzhu;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/wearable/internal/zzca;)V

    .line 5
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/wearable/internal/zzfb;->zzl(Lcom/google/android/gms/wearable/internal/zzex;Lcom/google/android/gms/wearable/internal/zzeu;Ljava/lang/String;)V

    return-void
.end method
