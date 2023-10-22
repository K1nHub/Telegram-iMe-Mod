.class final Lcom/google/android/gms/wearable/internal/zzic;
.super Lcom/google/android/gms/wearable/internal/zzhn;
.source "com.google.android.gms:play-services-wearable@@18.0.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzhn;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final zzA(Lcom/google/android/gms/wearable/internal/zzgo;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzas;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzgo;->zza:I

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhf;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzgo;->zzb:Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzas;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/Channel;)V

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzhn;->zzI(Ljava/lang/Object;)V

    return-void
.end method
