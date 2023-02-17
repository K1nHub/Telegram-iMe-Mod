.class public final Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;
.super Ljava/lang/Object;
.source "WebpFrameCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;,
        Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;
    }
.end annotation


# static fields
.field public static final AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

.field public static final NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;


# instance fields
.field private mCacheSize:I

.field private mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->noCache()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 11
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheAuto()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->AUTO:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    .line 13
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->cacheAll()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->build()Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->access$000(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    .line 27
    invoke-static {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;->access$100(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$Builder;)V

    return-void
.end method


# virtual methods
.method public cacheAll()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_ALL:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCacheSize()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheSize:I

    return v0
.end method

.method public noCache()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy;->mCacheStrategy:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    sget-object v1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;->CACHE_NONE:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameCacheStrategy$CacheControl;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
