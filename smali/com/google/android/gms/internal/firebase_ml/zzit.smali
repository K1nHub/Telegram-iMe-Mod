.class public final Lcom/google/android/gms/internal/firebase_ml/zzit;
.super Lcom/google/android/gms/internal/firebase_ml/zzgg;


# instance fields
.field private context:Lcom/google/android/gms/internal/firebase_ml/zzji;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private cropHintsAnnotation:Lcom/google/android/gms/internal/firebase_ml/zzja;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private error:Lcom/google/android/gms/internal/firebase_ml/zzju;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private faceAnnotations:Ljava/util/List;
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

.field private fullTextAnnotation:Lcom/google/android/gms/internal/firebase_ml/zzjw;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private imagePropertiesAnnotation:Lcom/google/android/gms/internal/firebase_ml/zzjk;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private labelAnnotations:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation
.end field

.field private landmarkAnnotations:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation
.end field

.field private localizedObjectAnnotations:Ljava/util/List;
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

.field private logoAnnotations:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation
.end field

.field private productSearchResults:Lcom/google/android/gms/internal/firebase_ml/zzjs;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private safeSearchAnnotation:Lcom/google/android/gms/internal/firebase_ml/zzjr;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation
.end field

.field private textAnnotations:Ljava/util/List;
    .annotation runtime Lcom/google/android/gms/internal/firebase_ml/zzhs;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation
.end field

.field private webDetection:Lcom/google/android/gms/internal/firebase_ml/zzjx;
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

    .line 12
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzit;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzho;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzit;

    return-object p1
.end method

.method public final synthetic zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_ml/zzgg;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzgg;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase_ml/zzit;

    return-object p1
.end method

.method public final synthetic zzdz()Lcom/google/android/gms/internal/firebase_ml/zzgg;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzit;

    return-object v0
.end method

.method public final synthetic zzea()Lcom/google/android/gms/internal/firebase_ml/zzho;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_ml/zzho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase_ml/zzit;

    return-object v0
.end method

.method public final zzhe()Lcom/google/android/gms/internal/firebase_ml/zzjw;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzit;->fullTextAnnotation:Lcom/google/android/gms/internal/firebase_ml/zzjw;

    return-object v0
.end method

.method public final zzhf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzit;->labelAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public final zzhg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase_ml/zzjd;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_ml/zzit;->landmarkAnnotations:Ljava/util/List;

    return-object v0
.end method
