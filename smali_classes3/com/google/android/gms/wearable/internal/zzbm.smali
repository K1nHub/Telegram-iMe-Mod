.class final Lcom/google/android/gms/wearable/internal/zzbm;
.super Lcom/google/android/gms/wearable/internal/zzu;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# instance fields
.field final synthetic zza:Landroid/net/Uri;

.field final synthetic zzb:J

.field final synthetic zzc:J

.field final synthetic zzd:Lcom/google/android/gms/wearable/internal/zzbq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzbq;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzd:Lcom/google/android/gms/wearable/internal/zzbq;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zza:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzb:J

    iput-wide p6, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzc:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzim;

    iget-object p1, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzd:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzbq;->zza(Lcom/google/android/gms/wearable/internal/zzbq;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zza:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzb:J

    iget-wide v6, p0, Lcom/google/android/gms/wearable/internal/zzbm;->zzc:J

    move-object v1, p0

    .line 2
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/wearable/internal/zzim;->zzC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Landroid/net/Uri;JJ)V

    return-void
.end method
