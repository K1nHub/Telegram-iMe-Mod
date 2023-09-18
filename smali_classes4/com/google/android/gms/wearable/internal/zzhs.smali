.class final Lcom/google/android/gms/wearable/internal/zzhs;
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
.method public final zzk(Lcom/google/android/gms/wearable/internal/zzdp;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzae;

    iget v1, p1, Lcom/google/android/gms/wearable/internal/zzdp;->zza:I

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/wearable/internal/zzhf;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzdp;->zzb:Lcom/google/android/gms/wearable/internal/zzao;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v2, Lcom/google/android/gms/wearable/internal/zzac;

    .line 3
    invoke-direct {v2, p1}, Lcom/google/android/gms/wearable/internal/zzac;-><init>(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    move-object p1, v2

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/wearable/internal/zzae;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/CapabilityInfo;)V

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzhn;->zzI(Ljava/lang/Object;)V

    return-void
.end method
