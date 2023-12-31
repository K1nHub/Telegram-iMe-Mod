.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;
.super Ljava/lang/Object;
.source "WebpDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# instance fields
.field private downsampledHeight:I

.field private downsampledWidth:I

.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field private final mFrameBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameDurations:[I

.field private final mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

.field private mFramePointer:I

.field private final mTransparentFillPaint:Landroid/graphics/Paint;

.field private mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

.field private rawData:Ljava/nio/ByteBuffer;

.field private sampleSize:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;I)V
    .locals 6

    .line 56
    sget-object v5, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/integration/webp/WebpImage;Ljava/nio/ByteBuffer;ILcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;)V
    .locals 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    .line 50
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 61
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 62
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 63
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameDurations()[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    .line 64
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result p1

    new-array p1, p1, [Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    const/4 p1, 0x0

    move v0, p1

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameInfo(I)Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v1, 0x3

    const-string v2, "WebpDecoder"

    .line 67
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrameInfos: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 73
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 74
    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p1, 0x5

    .line 79
    iget-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    invoke-virtual {p5}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->cacheAll()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 80
    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result p1

    goto :goto_1

    .line 82
    :cond_2
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->getCacheSize()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 84
    :goto_1
    new-instance p2, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;

    invoke-direct {p2, p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder$1;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;I)V

    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    .line 94
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    invoke-virtual {p0, p1, p3, p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;)Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    return-object p0
.end method

.method private cacheFrameBitmap(ILandroid/graphics/Bitmap;)V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 302
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 304
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 305
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 306
    invoke-virtual {v2, p2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 308
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V
    .locals 9

    .line 388
    iget v0, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    div-int v2, v0, v1

    int-to-float v4, v2

    .line 389
    iget v2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    div-int v3, v2, v1

    int-to-float v5, v3

    .line 390
    iget v3, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    add-int/2addr v0, v3

    div-int/2addr v0, v1

    int-to-float v6, v0

    .line 391
    iget p2, p2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    add-int/2addr v2, p2

    div-int/2addr v2, v1

    int-to-float v7, v2

    .line 392
    iget-object v8, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mTransparentFillPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z
    .locals 2

    .line 423
    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 425
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 426
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isKeyFrame(I)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v2, v1, p1

    sub-int/2addr p1, v0

    .line 408
    aget-object p1, v1, p1

    .line 409
    iget-boolean v1, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 412
    :cond_1
    iget-boolean v1, p1, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareCanvasWithBlending(ILandroid/graphics/Canvas;)I
    .locals 4

    :goto_0
    if-ltz p1, :cond_5

    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v0, v0, p1

    .line 360
    iget-boolean v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isFullFrame(Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 362
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 363
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 364
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 365
    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    iget-boolean v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    if-eqz v1, :cond_2

    .line 367
    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 370
    :cond_3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isKeyFrame(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private renderFrame(ILandroid/graphics/Canvas;)V
    .locals 7

    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v0, v0, p1

    .line 271
    iget v1, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->width:I

    iget v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    div-int/2addr v1, v2

    .line 272
    iget v3, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->height:I

    div-int/2addr v3, v2

    .line 273
    iget v4, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->xOffset:I

    div-int/2addr v4, v2

    .line 274
    iget v0, v0, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->yOffset:I

    div-int/2addr v0, v2

    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    goto :goto_2

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrame(I)Lcom/bumptech/glide/integration/webp/WebpFrame;

    move-result-object v2

    .line 282
    :try_start_0
    iget-object v5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v6, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-interface {v5, v1, v3, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x0

    .line 283
    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 284
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getDensity()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 285
    invoke-virtual {v2, v1, v3, v5}, Lcom/bumptech/glide/integration/webp/WebpFrame;->renderFrame(IILandroid/graphics/Bitmap;)V

    int-to-float v1, v4

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 286
    invoke-virtual {p2, v5, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {p2, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    const-string p2, "WebpDecoder"

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rendering of frame failed. Frame number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :goto_0
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    return-void

    :goto_1
    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/WebpFrame;->dispose()V

    .line 292
    throw p1

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 2

    .line 123
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    return-void
.end method

.method public clear()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->dispose()V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    .line 320
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 321
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getByteSize()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getSizeInBytes()I

    move-result v0

    return v0
.end method

.method public getCacheStrategy()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    return v0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDelay(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 130
    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getFrameCount()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getNextDelay()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameDurations:[I

    array-length v0, v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getDelay(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNextFrame()Landroid/graphics/Bitmap;
    .locals 11

    .line 195
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCurrentFrameIndex()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledWidth:I

    iget v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2, v3, v4}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    .line 198
    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 199
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 200
    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 202
    :cond_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 203
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    invoke-virtual {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->noCache()Z

    move-result v2

    const/4 v4, 0x3

    const-string v5, "WebpDecoder"

    if-nez v2, :cond_2

    .line 206
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameBitmapCache:Landroid/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 209
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hit frame bitmap from memory cache, frameNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getDensity()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 213
    invoke-virtual {v3, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v1

    .line 220
    :cond_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->isKeyFrame(I)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 222
    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->prepareCanvasWithBlending(ILandroid/graphics/Canvas;)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v0

    .line 227
    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frameNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", nextIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    const-string v6, ", dispose="

    const-string v7, ", blend="

    const-string v8, "renderFrame, index="

    if-ge v2, v0, :cond_8

    .line 232
    iget-object v9, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v9, v9, v2

    .line 233
    iget-boolean v10, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    if-nez v10, :cond_5

    .line 234
    invoke-direct {p0, v3, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 238
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 240
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 241
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_6
    iget-boolean v6, v9, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    if-eqz v6, :cond_7

    .line 246
    invoke-direct {p0, v3, v9}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_8
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFrameInfos:[Lcom/bumptech/glide/integration/webp/WebpFrameInfo;

    aget-object v2, v2, v0

    .line 251
    iget-boolean v9, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    if-nez v9, :cond_9

    .line 252
    invoke-direct {p0, v3, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->disposeToBackground(Landroid/graphics/Canvas;Lcom/bumptech/glide/integration/webp/WebpFrameInfo;)V

    .line 256
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->renderFrame(ILandroid/graphics/Canvas;)V

    .line 258
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->blendPreviousFrame:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/bumptech/glide/integration/webp/WebpFrameInfo;->disposeBackgroundColor:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->cacheFrameBitmap(ILandroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public getTotalIterationCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/WebpImage;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public resetFrameIndex()V
    .locals 1

    const/4 v0, -0x1

    .line 156
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mFramePointer:I

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 331
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-lez p3, :cond_0

    .line 340
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 343
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->rawData:Ljava/nio/ByteBuffer;

    const/4 p3, 0x0

    .line 344
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 346
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->sampleSize:I

    .line 347
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getWidth()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledWidth:I

    .line 348
    iget-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mWebPImage:Lcom/bumptech/glide/integration/webp/WebpImage;

    invoke-virtual {p2}, Lcom/bumptech/glide/integration/webp/WebpImage;->getHeight()I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->downsampledHeight:I

    return-void

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .locals 0

    .line 326
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public setDefaultBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 3

    .line 185
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p1, v0, :cond_0

    .line 190
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
