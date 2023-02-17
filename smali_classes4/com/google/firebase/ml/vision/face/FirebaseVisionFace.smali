.class public Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;
.super Ljava/lang/Object;


# instance fields
.field private zzbat:Landroid/graphics/Rect;

.field private zzbbr:I

.field private zzbbs:F

.field private zzbbt:F

.field private zzbbu:F

.field private zzbbv:F

.field private zzbbw:F

.field private final zzbbx:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbby:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/face/Face;)V
    .locals 12

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbr:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    iput v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbs:F

    .line 7
    iput v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbt:F

    .line 8
    iput v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbu:F

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbx:Landroid/util/SparseArray;

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getPosition()Landroid/graphics/PointF;

    move-result-object v1

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v4, v3

    iget v5, v1, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getWidth()F

    move-result v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getHeight()F

    move-result v6

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v2, v4, v5, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbat:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getId()I

    move-result v1

    iput v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbr:I

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getLandmarks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/face/Landmark;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbr(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 18
    iget-object v4, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbx:Landroid/util/SparseArray;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v5

    new-instance v6, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getType()I

    move-result v7

    new-instance v8, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/vision/face/Landmark;->getPosition()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v8, v9, v2, v3}, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    invoke-direct {v6, v7, v8}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;-><init>(ILcom/google/firebase/ml/vision/common/FirebaseVisionPoint;)V

    .line 22
    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getContours()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/vision/face/Contour;

    .line 26
    invoke-virtual {v4}, Lcom/google/android/gms/vision/face/Contour;->getType()I

    move-result v6

    const/16 v7, 0xe

    packed-switch v6, :pswitch_data_0

    const/4 v6, -0x1

    goto :goto_2

    :pswitch_0
    const/16 v6, 0xe

    goto :goto_2

    :pswitch_1
    const/16 v6, 0xd

    goto :goto_2

    :pswitch_2
    const/16 v6, 0xc

    goto :goto_2

    :pswitch_3
    const/16 v6, 0xb

    goto :goto_2

    :pswitch_4
    const/16 v6, 0xa

    goto :goto_2

    :pswitch_5
    const/16 v6, 0x9

    goto :goto_2

    :pswitch_6
    const/16 v6, 0x8

    goto :goto_2

    :pswitch_7
    const/4 v6, 0x7

    goto :goto_2

    :pswitch_8
    const/4 v6, 0x6

    goto :goto_2

    :pswitch_9
    const/4 v6, 0x5

    goto :goto_2

    :pswitch_a
    const/4 v6, 0x4

    goto :goto_2

    :pswitch_b
    const/4 v6, 0x3

    goto :goto_2

    :pswitch_c
    const/4 v6, 0x2

    :goto_2
    const/4 v8, 0x0

    if-gt v6, v7, :cond_3

    if-lez v6, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_2

    .line 46
    invoke-virtual {v4}, Lcom/google/android/gms/vision/face/Contour;->getPositions()[Landroid/graphics/PointF;

    move-result-object v4

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_2

    .line 49
    array-length v7, v4

    :goto_4
    if-ge v8, v7, :cond_4

    aget-object v9, v4, v8

    .line 50
    new-instance v10, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;

    iget v11, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v10, v11, v9, v3}, Lcom/google/firebase/ml/vision/common/FirebaseVisionPoint;-><init>(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 52
    :cond_4
    iget-object v4, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    new-instance v7, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    invoke-direct {v7, v6, v5}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;-><init>(ILjava/util/List;)V

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 55
    :cond_5
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    new-instance v2, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    invoke-direct {v2, v5, v1}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getEulerY()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbv:F

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getEulerZ()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbw:F

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getIsSmilingProbability()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbu:F

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getIsLeftEyeOpenProbability()F

    move-result v0

    iput v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbt:F

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/vision/face/Face;->getIsRightEyeOpenProbability()F

    move-result p1

    iput p1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbs:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzbr(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public getBoundingBox()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbat:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContour(I)Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public getLandmark(I)Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbx:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "FirebaseVisionFace"

    .line 81
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbat:Landroid/graphics/Rect;

    const-string v2, "boundingBox"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbr:I

    const-string v2, "trackingId"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzb(Ljava/lang/String;I)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbs:F

    const-string v2, "rightEyeOpenProbability"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbt:F

    const-string v2, "leftEyeOpenProbability"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbu:F

    const-string v2, "smileProbability"

    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbv:F

    const-string v2, "eulerY"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbw:F

    const-string v2, "eulerZ"

    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v0

    const-string v1, "Landmarks"

    .line 89
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-gt v2, v3, :cond_1

    .line 92
    invoke-static {v2}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbr(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x14

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "landmark_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->getLandmark(I)Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceLandmark;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "landmarks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    const-string v1, "Contours"

    .line 96
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase_ml/zzkm;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    const/16 v3, 0xe

    if-gt v2, v3, :cond_2

    const/16 v3, 0x13

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Contour_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->getContour(I)Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contours"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase_ml/zzko;->zzh(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_ml/zzko;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_ml/zzko;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;",
            ">;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzaz(I)V
    .locals 0

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbbr:I

    return-void
.end method

.method public final zznp()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/firebase/ml/vision/face/FirebaseVisionFaceContour;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/firebase/ml/vision/face/FirebaseVisionFace;->zzbby:Landroid/util/SparseArray;

    return-object v0
.end method
