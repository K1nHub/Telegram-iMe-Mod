.class public final Lcom/google/android/gms/internal/firebase_ml/zzjd;
.super Lcom/google/android/gms/internal/firebase_ml/zzgg;


# instance fields
.field private boundingPoly:Lcom/google/android/gms/internal/firebase_ml/zzix;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private confidence:Ljava/lang/Float;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private locale:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private locations:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjo;",
            ">;"
        }
    .end annotation
.end field

.field private mid:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private properties:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private score:Ljava/lang/Float;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private topicality:Ljava/lang/Float;
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

    .line 14
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjd;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjo;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjd;->locations:Ljava/util/List;

    return-object v0
.end method

.method public final getMid()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjd;->mid:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    return-object p1
.end method

.method public final synthetic zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    return-object v0
.end method

.method public final synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzjd;

    return-object v0
.end method

.method public final zzhm()Lcom/google/android/gms/internal/firebase_ml/zzix;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjd;->boundingPoly:Lcom/google/android/gms/internal/firebase_ml/zzix;

    return-object v0
.end method

.method public final zzhn()Ljava/lang/Float;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzjd;->score:Ljava/lang/Float;

    return-object v0
.end method
