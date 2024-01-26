.class public final Lcom/google/android/gms/internal/firebase_ml/zzqp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/firebase_ml/zzns;


# instance fields
.field public final zzbay:Lcom/google/android/gms/vision/Frame;

.field public final zzbbm:Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;


# direct methods
.method public constructor <init>(Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;Lcom/google/android/gms/vision/Frame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbbm:Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_ml/zzqp;->zzbay:Lcom/google/android/gms/vision/Frame;

    return-void
.end method
