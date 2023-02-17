.class public Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;
.super Ljava/lang/Object;


# instance fields
.field private volatile zzbav:Landroid/graphics/Bitmap;

.field private volatile zzbaw:Ljava/nio/ByteBuffer;

.field private volatile zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

.field private volatile zzbay:Lcom/google/android/gms/vision/Frame;

.field private volatile zzbaz:[B

.field private final zzbba:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 158
    invoke-static {}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzno()Lcom/google/android/gms/internal/firebase_ml/zzqo;

    return-void
.end method

.method private static zza(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzqm;->zzbn(I)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 63
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 64
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final zzai(Z)[B
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    return-object p1

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    monitor-exit p0

    return-object p1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {p1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result p1

    if-nez p1, :cond_6

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getFormat()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const v1, 0x32315659

    if-ne v0, v1, :cond_3

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzf([B)[B

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be one of: IMAGE_FORMAT_NV21, IMAGE_FORMAT_YV12"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 101
    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza([BII)[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result v0

    if-nez v0, :cond_5

    .line 103
    iput-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    .line 104
    :cond_5
    monitor-exit p0

    return-object p1

    .line 105
    :cond_6
    invoke-direct {p0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zznl()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzb(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 107
    iput-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaz:[B

    .line 108
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final zznl()Landroid/graphics/Bitmap;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    return-object v0

    .line 49
    :cond_0
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzai(Z)[B

    move-result-object v1

    .line 52
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    if-nez v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zza(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    :goto_0
    iput-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    .line 58
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    return-object v0

    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zzb(ZZ)Lcom/google/android/gms/vision/Frame;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    :try_start_0
    const-string v3, "Can\'t restrict to bitmap-only and NV21 byte buffer-only"

    .line 119
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbay:Lcom/google/android/gms/vision/Frame;

    if-nez v2, :cond_b

    .line 121
    new-instance v2, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    .line 122
    iget-object v3, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_a

    if-nez p1, :cond_a

    const p1, 0x32315659

    const/16 v3, 0x11

    if-eqz p2, :cond_3

    .line 123
    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 124
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getFormat()I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 125
    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getFormat()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 126
    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    .line 127
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/nio/ByteBuffer;)[B

    move-result-object p2

    .line 128
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzf([B)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 129
    iput-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    .line 130
    new-instance p2, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;

    invoke-direct {p2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;-><init>()V

    .line 131
    invoke-virtual {p2, v3}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->setFormat(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 132
    invoke-virtual {v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getWidth()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->setWidth(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 133
    invoke-virtual {v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getHeight()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->setHeight(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;

    move-result-object p2

    iget-object v4, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 134
    invoke-virtual {v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->setRotation(I)Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata$Builder;->build()Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    goto :goto_2

    .line 136
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must be one of: IMAGE_FORMAT_NV21, IMAGE_FORMAT_YV12"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbaw:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 138
    invoke-virtual {v4}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 139
    invoke-virtual {v5}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 140
    invoke-virtual {v6}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getFormat()I

    move-result v6

    if-eq v6, v3, :cond_4

    if-eq v6, p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/16 p1, 0x11

    .line 145
    :cond_5
    :goto_3
    invoke-virtual {v2, p2, v4, v5, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setImageData(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    .line 146
    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {p1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result p1

    const/4 p2, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_8

    if-eq p1, v3, :cond_7

    if-ne p1, p2, :cond_6

    const/4 v0, 0x3

    goto :goto_4

    .line 152
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid rotation: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7
    const/4 v0, 0x2

    goto :goto_4

    :cond_8
    const/4 v0, 0x1

    .line 153
    :cond_9
    :goto_4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/vision/Frame$Builder;->setRotation(I)Lcom/google/android/gms/vision/Frame$Builder;

    goto :goto_5

    .line 154
    :cond_a
    invoke-direct {p0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zznl()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    .line 155
    :goto_5
    iget-wide p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbba:J

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/vision/Frame$Builder;->setTimestampMillis(J)Lcom/google/android/gms/vision/Frame$Builder;

    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbay:Lcom/google/android/gms/vision/Frame;

    .line 157
    :cond_b
    iget-object p1, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbay:Lcom/google/android/gms/vision/Frame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzf(II)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 68
    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    .line 69
    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 70
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getWidth()I

    move-result v2

    :goto_2
    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getWidth()I

    move-result v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbax:Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImageMetadata;->getHeight()I

    move-result v0

    goto :goto_3

    .line 73
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zznl()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 74
    invoke-direct {p0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zznl()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_3
    int-to-float p1, p1

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float v0, p1, p2

    if-gez v0, :cond_5

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zznl()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 78
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    invoke-virtual {v7, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 80
    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object p2, p0, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzbav:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 82
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 83
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzb(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    goto :goto_4

    .line 86
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/firebase/ml/vision/common/FirebaseVisionImage;->zzai(Z)[B

    move-result-object p1

    move-object p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    :goto_4
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
