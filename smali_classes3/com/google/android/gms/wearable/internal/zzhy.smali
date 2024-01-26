.class final Lcom/google/android/gms/wearable/internal/zzhy;
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
.method public final zzh(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/wearable/DataItemBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/DataItemBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzhn;->zzI(Ljava/lang/Object;)V

    return-void
.end method
