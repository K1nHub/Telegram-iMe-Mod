.class public Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;
.super Ljava/lang/Object;


# instance fields
.field private final type:I

.field private final zzbbq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;->type:I

    .line 3
    iput-object p2, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;->zzbbq:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FirebaseVisionFaceContour"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;->type:I

    const-string v2, "type"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;->zzbbq:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "points"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
