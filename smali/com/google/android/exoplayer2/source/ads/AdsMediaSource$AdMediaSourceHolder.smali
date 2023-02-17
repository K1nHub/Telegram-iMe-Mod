.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdMediaSourceHolder"
.end annotation


# instance fields
.field private final activeMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createMediaPeriod(Landroid/net/Uri;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 7

    .line 414
    new-instance v6, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    move-object v0, v6

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    .line 416
    new-instance p3, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget p5, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-direct {p3, p4, p1, p5, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareErrorListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;II)V

    invoke-virtual {v6, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setPrepareErrorListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareErrorListener;)V

    .line 418
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 420
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p1

    .line 421
    new-instance p3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p4, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {p3, p1, p4, p5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 422
    invoke-virtual {v6, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    :cond_0
    return-object v6
.end method

.method public getDurationUs()J
    .locals 3

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 444
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-static {v2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 6

    .line 428
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_1

    .line 430
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    .line 431
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 432
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 433
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 435
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 438
    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public isInactive()Z
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    return-void
.end method
