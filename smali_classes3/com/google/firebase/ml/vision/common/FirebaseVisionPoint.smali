.class public final Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;
.super Ljava/lang/Object;


# instance fields
.field private final zzbbf:Ljava/lang/Float;

.field private final zzbbg:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbf:Ljava/lang/Float;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbg:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 13
    :cond_1
    check-cast p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;

    .line 14
    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbf:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbf:Ljava/lang/Float;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbg:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbg:Ljava/lang/Float;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbf:Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbg:Ljava/lang/Float;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FirebaseVisionPoint"

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbf:Ljava/lang/Float;

    const-string v2, "x"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;->zzbbg:Ljava/lang/Float;

    const-string v2, "y"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    const-string v1, "z"

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
