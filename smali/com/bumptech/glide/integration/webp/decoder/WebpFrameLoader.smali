.class public Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.super Ljava/lang/Object;
.source "WebpFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;
    }
.end annotation


# static fields
.field public static final FRAME_CACHE_STRATEGY:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstFrameSize:I

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private onEveryFrameListener:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;

.field private pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/bumptech/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/bumptech/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    sget-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    const-string v1, "com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->memory(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->FRAME_CACHE_STRATEGY:Lcom/bumptech/glide/load/Option;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;",
            "II",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getBitmapPool()Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/RequestManager;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;Landroid/os/Handler;Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/RequestManager;",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    .line 86
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 87
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 88
    iput-object p2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez p4, :cond_0

    .line 90
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 94
    iput-object p4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    .line 95
    iput-object p5, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 96
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    .line 97
    invoke-virtual {p0, p6, p7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getFrameSignature(I)Lcom/bumptech/glide/load/Key;
    .locals 3

    .line 368
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;

    new-instance v1, Lcom/bumptech/glide/signature/ObjectKey;

    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-direct {v1, v2}, Lcom/bumptech/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$WebpFrameCacheKey;-><init>(Lcom/bumptech/glide/load/Key;I)V

    return-object v0
.end method

.method private static getRequestBuilder(Lcom/bumptech/glide/RequestManager;II)Lcom/bumptech/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/RequestManager;",
            "II)",
            "Lcom/bumptech/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 358
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    .line 359
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 360
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 361
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    .line 358
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private loadNextFrame()V
    .locals 5

    .line 209
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->resetFrameIndex()V

    .line 217
    iput-boolean v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 223
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V

    return-void

    .line 227
    :cond_3
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 231
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getNextDelay()I

    move-result v0

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 234
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->advance()V

    .line 235
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCurrentFrameIndex()I

    move-result v0

    .line 236
    new-instance v3, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    iget-object v4, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 238
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getCacheStrategy()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    move-result-object v1

    .line 239
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameSignature(I)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->signatureOf(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 240
    invoke-virtual {v1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->noCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    .line 241
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_4
    :goto_1
    return-void
.end method

.method private recycleFirstFrame()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    .line 176
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    return-void
.end method


# virtual methods
.method clear()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 186
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    .line 187
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 189
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    .line 192
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 193
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->next:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_2

    .line 196
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    .line 197
    iput-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->clear()V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    return-void
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getFrameCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method getHeight()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->height:I

    return v0
.end method

.method getSize()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->webpDecoder:Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;->getByteSize()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrameSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->width:I

    return v0
.end method

.method onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onEveryFrameListener:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$OnEveryFrameListener;->onFrameReady()V

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isLoadPending:Z

    .line 270
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 278
    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isRunning:Z

    if-nez v0, :cond_3

    .line 279
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->startFromFirstFrame:Z

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 282
    :cond_2
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->pendingTarget:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    :goto_0
    return-void

    .line 287
    :cond_3
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 288
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->recycleFirstFrame()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 290
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->current:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 293
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    .line 294
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;

    .line 295
    invoke-interface {v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;->onFrameReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 298
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 302
    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->loadNextFrame()V

    return-void
.end method

.method setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Transformation;

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 102
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    .line 105
    invoke-static {p2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->firstFrameSize:I

    .line 106
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->width:I

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->height:I

    return-void
.end method

.method subscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->isCleared:Z

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 127
    iget-object v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->start()V

    :cond_0
    return-void

    .line 123
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method unsubscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 135
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->stop()V

    :cond_0
    return-void
.end method
