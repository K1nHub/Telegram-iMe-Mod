.class public final Lcom/google/android/gms/internal/firebase_ml/zzqo;
.super Ljava/lang/Object;


# static fields
.field private static final zzbbk:Lcom/google/android/gms/internal/firebase_ml/zzqo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/google/android/gms/internal/firebase_ml/zzqo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase_ml/zzqo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzbbk:Lcom/google/android/gms/internal/firebase_ml/zzqo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza([Landroid/media/Image$Plane;II)Ljava/nio/ByteBuffer;
    .locals 12

    mul-int v4, p1, p2

    .line 29
    div-int/lit8 v0, v4, 0x4

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/2addr v0, v4

    new-array v11, v0, [B

    const/4 v0, 0x1

    .line 32
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 36
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v7, v6, -0x1

    .line 37
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    mul-int/lit8 v8, v4, 0x2

    div-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, v8, -0x2

    const/4 v10, 0x0

    if-ne v7, v9, :cond_0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result v7

    if-nez v7, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v10

    .line 40
    :goto_0
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-eqz v7, :cond_1

    .line 44
    aget-object p1, p0, v10

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v11, v10, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 45
    aget-object p1, p0, v0

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 46
    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 47
    invoke-virtual {p0, v11, v4, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v4, v0

    sub-int/2addr v8, v0

    .line 48
    invoke-virtual {p1, v11, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 50
    :cond_1
    aget-object v5, p0, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, p1

    move v7, p2

    move-object v8, v11

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Landroid/media/Image$Plane;II[BII)V

    .line 51
    aget-object v5, p0, v0

    add-int/lit8 v9, v4, 0x1

    const/4 v10, 0x2

    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Landroid/media/Image$Plane;II[BII)V

    .line 52
    aget-object v0, p0, v1

    const/4 v5, 0x2

    move v1, p1

    move v2, p2

    move-object v3, v11

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Landroid/media/Image$Plane;II[BII)V

    .line 53
    :goto_1
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Landroid/media/Image$Plane;II[BII)V
    .locals 8

    .line 54
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v3

    div-int/2addr v2, v3

    .line 57
    div-int/2addr p2, v2

    .line 58
    div-int/2addr p1, p2

    const/4 p2, 0x0

    move v3, p2

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    move v5, p2

    move v6, v4

    :goto_1
    if-ge v5, p1, :cond_0

    .line 64
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    aput-byte v7, p3, p4

    add-int/2addr p4, p5

    .line 66
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static synthetic zza(Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase_ml/zzlm;->zza(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method

.method public static zza(Ljava/nio/ByteBuffer;)[B
    .locals 3

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public static zza([BII)[B
    .locals 7

    .line 7
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/4 p0, 0x0

    .line 9
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x64

    invoke-virtual {v6, v1, p1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object p0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 13
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    .line 14
    :try_start_4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V

    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_0
    const-string p1, "ImageConvertUtils"

    const-string p2, "Error closing ByteArrayOutputStream"

    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public static zzb(Landroid/graphics/Bitmap;)[B
    .locals 4

    const/4 v0, 0x0

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 21
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 23
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 24
    :try_start_4
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zza(Ljava/lang/Throwable;Ljava/io/ByteArrayOutputStream;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_0
    const-string p0, "ImageConvertUtils"

    const-string v1, "Error closing ByteArrayOutputStream"

    .line 26
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public static zzf([B)[B
    .locals 7

    .line 72
    array-length v0, p0

    .line 73
    div-int/lit8 v1, v0, 0x6

    .line 74
    new-array v0, v0, [B

    shl-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    .line 75
    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    shl-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_0

    add-int v4, v2, v3

    .line 78
    rem-int/lit8 v5, v3, 0x2

    mul-int/2addr v5, v1

    add-int/2addr v5, v2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    aget-byte v5, p0, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static zzno()Lcom/google/android/gms/internal/firebase_ml/zzqo;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase_ml/zzqo;->zzbbk:Lcom/google/android/gms/internal/firebase_ml/zzqo;

    return-object v0
.end method
