.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final DUMMY_CONTENT_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

.field private adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;


# direct methods
.method public static synthetic $r8$lambda$1-m7XF1umsWz9SdpDX3nvldjhmE(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->lambda$prepareSourceInternal$0(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->DUMMY_CONTENT_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 175
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    .line 176
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 177
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

    .line 178
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 179
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 p1, 0x0

    new-array p1, p1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 180
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 181
    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->getSupportedTypes()[I

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V
    .locals 1

    .line 153
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSourceFactory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0
.end method

.method private getAdDurationsUs()[[J
    .locals 8

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v0, v0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 307
    aget-object v3, v3, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    const/4 v3, 0x0

    .line 308
    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v5, v4, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 309
    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 310
    aget-object v5, v0, v2

    if-nez v4, :cond_0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private synthetic lambda$prepareSourceInternal$0(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;

    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->start(Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;Lcom/google/android/exoplayer2/source/ads/AdsLoader$AdViewProvider;)V

    return-void
.end method

.method private maybeUpdateSourceInfo()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 294
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 297
    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    move-object v0, v1

    .line 300
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_1
    return-void
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    .line 285
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 286
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 9

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 202
    iget v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 204
    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 205
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroups:[Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v0, v0, v2

    .line 206
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    .line 207
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v3, v0, v1

    array-length v3, v3

    if-gt v3, v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 209
    aget-object v5, v0, v1

    .line 210
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v3, v0, v1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v0, v0, v1

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSourceFactory;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/source/MediaSourceFactory;->createMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 217
    new-instance v3, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v3, p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 218
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object v1, v5, v1

    aput-object v3, v1, v2

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    .line 221
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    return-object p1

    .line 223
    :cond_2
    new-instance v6, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 225
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-object v6
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 278
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 57
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 1

    .line 261
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    iget p2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 263
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 264
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 265
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 268
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 270
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 193
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    .line 194
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 195
    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->DUMMY_CONTENT_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 232
    check-cast p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 233
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v1, v1, v2

    .line 236
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 237
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V

    .line 238
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    .line 240
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget v1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object p1, p1, v1

    iget v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3

    .line 249
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->release()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 252
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 253
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v0, 0x0

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 254
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsLoader;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
