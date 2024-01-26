.class public final Lcom/google/android/gms/internal/firebase_ml/zziu;
.super Lcom/google/android/gms/internal/firebase_ml/zzgg;


# instance fields
.field private features:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjg;",
            ">;"
        }
    .end annotation
.end field

.field private image:Lcom/google/android/gms/internal/firebase_ml/zzjf;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private imageContext:Lcom/google/android/gms/internal/firebase_ml/zzjh;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zziu;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zziu;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzjf;)Lcom/google/android/gms/internal/firebase_ml/zziu;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zziu;->image:Lcom/google/android/gms/internal/firebase_ml/zzjf;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase_ml/zzjh;)Lcom/google/android/gms/internal/firebase_ml/zziu;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zziu;->imageContext:Lcom/google/android/gms/internal/firebase_ml/zzjh;

    return-object p0
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 12
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zziu;

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/gms/internal/firebase_ml/zziu;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjg;",
            ">;)",
            "Lcom/google/android/gms/internal/firebase_ml/zziu;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zziu;->features:Ljava/util/List;

    return-object p0
.end method

.method public final synthetic zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zziu;

    return-object v0
.end method

.method public final synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zziu;

    return-object v0
.end method
