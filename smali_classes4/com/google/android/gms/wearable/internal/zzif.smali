.class final Lcom/google/android/gms/wearable/internal/zzif;
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
.method public final zzD(Lcom/google/android/gms/wearable/internal/zzgy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/internal/zzaa;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzgy;->zza:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzhf;->zza(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzaa;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzhn;->zzI(Ljava/lang/Object;)V

    return-void
.end method
