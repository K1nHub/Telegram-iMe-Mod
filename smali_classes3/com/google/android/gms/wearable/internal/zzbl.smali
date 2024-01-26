.class final Lcom/google/android/gms/wearable/internal/zzbl;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Landroid/net/Uri;

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/wearable/internal/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbq;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zzc:Lcom/google/android/gms/wearable/internal/zzbq;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zza:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zzb:Z

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
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

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zzc:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/zzbq;->zza(Lcom/google/android/gms/wearable/internal/zzbq;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zza:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/internal/zzbl;->zzb:Z

    .line 2
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzim;->zzw(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method
