.class public final Lcom/google/android/gms/internal/firebase_ml/zzjn;
.super Lcom/google/android/gms/internal/firebase_ml/zzgg;


# instance fields
.field private blocks:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zziy;",
            ">;"
        }
    .end annotation
.end field

.field private confidence:Ljava/lang/Float;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private height:Ljava/lang/Integer;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private property:Lcom/google/android/gms/internal/firebase_ml/zzjv;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private width:Ljava/lang/Integer;
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

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    return-object v0
.end method

.method public final getBlocks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zziy;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjn;->blocks:Ljava/util/List;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    return-object p1
.end method

.method public final synthetic zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    return-object v0
.end method

.method public final synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjn;

    return-object v0
.end method
