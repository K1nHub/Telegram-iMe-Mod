.class public Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;
.super Ljava/lang/Object;
.source "WebpBitmapFactory.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final IN_TEMP_BUFFER_SIZE:I = 0x2000

.field private static final MAX_WEBP_HEADER_SIZE:I = 0x15


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "glide-webp"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBitmap(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 109
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    const/4 p1, 0x0

    .line 111
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, p1, p2, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 7

    or-int v0, p1, p2

    if-ltz v0, :cond_1

    .line 219
    array-length v0, p0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_1

    .line 224
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v5

    invoke-static {p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 225
    invoke-static/range {v1 .. v6}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 228
    invoke-static {p0, p3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-static {p0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 270
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    invoke-static {v1, v0, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string p1, "WebpBitmapFactory"

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to decode stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    goto :goto_0

    :catch_2
    :cond_0
    :goto_2
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_1

    .line 280
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 285
    :catch_3
    :cond_1
    throw p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-static {p0, v0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    .line 418
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 420
    :try_start_0
    invoke-static {v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getImageHeader(Ljava/io/InputStream;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 421
    invoke-static {v1, v2, v3}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result p0

    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v1

    invoke-static {v0, p2, p0, v1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 424
    invoke-static {p0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 425
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDefaultPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 431
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 435
    :catchall_2
    throw p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    .line 325
    :try_start_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 326
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    invoke-static {p0, v1, p1, v0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 336
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 340
    :catch_0
    :cond_0
    throw p0

    :catch_1
    move-object p1, v0

    :catch_2
    if-eqz p1, :cond_1

    goto :goto_0

    :catch_3
    :cond_1
    :goto_2
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 342
    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_2

    goto :goto_3

    .line 343
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p4, :cond_0

    .line 362
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 365
    :cond_0
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 366
    iget p1, p1, Landroid/util/TypedValue;->density:I

    if-nez p1, :cond_1

    const/16 p1, 0xa0

    .line 368
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    if-eq p1, v0, :cond_2

    .line 370
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 374
    :cond_2
    :goto_0
    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    .line 375
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 378
    :cond_3
    invoke-static {p2, p3, p4}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-static {p0, v0, v0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 492
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getImageHeader(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    .line 493
    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->webpSupportRequired([BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v0

    .line 498
    invoke-static {p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v1

    .line 494
    invoke-static {p0, p2, v0, v1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 499
    invoke-static {p0, p2}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 500
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDefaultPadding(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 503
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getImageHeader(Ljava/io/InputStream;)[B
    .locals 3

    .line 157
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    new-array v0, v1, [B

    const/4 v2, 0x0

    .line 164
    :try_start_0
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 165
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B
    .locals 0

    if-eqz p0, :cond_0

    .line 511
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/16 p0, 0x2000

    new-array p0, p0, [B

    return-object p0
.end method

.method private static getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_1

    .line 522
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 526
    :cond_0
    iget-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v1, :cond_1

    .line 527
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 528
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 529
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    int-to-float p0, v2

    int-to-float v0, v1

    div-float v0, p0, v0

    :cond_1
    return v0
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
.end method

.method private static setDefaultPadding(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 123
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 124
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 125
    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_0
    return-void
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 47
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_2

    .line 48
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p1, :cond_4

    .line 53
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 55
    :cond_3
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    const/16 p1, 0xa0

    .line 57
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static setOutDimensions(Landroid/graphics/BitmapFactory$Options;II)Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p0, :cond_0

    .line 87
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 88
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 89
    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .locals 0

    .line 67
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/webp/WebpBitmapFactory;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    if-eqz p1, :cond_0

    const-string p0, "image/webp"

    .line 69
    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static webpSupportRequired([BII)Z
    .locals 0

    .line 140
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->getType([BII)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    sget-object p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    .line 145
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-gt p1, p2, :cond_0

    .line 146
    invoke-static {p0}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser;->isNonSimpleWebpType(Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    .line 179
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method
