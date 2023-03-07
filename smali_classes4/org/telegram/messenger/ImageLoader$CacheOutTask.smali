.class Lorg/telegram/messenger/ImageLoader$CacheOutTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheOutTask"
.end annotation


# instance fields
.field private cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

.field private isCancelled:Z

.field private runningThread:Ljava/lang/Thread;

.field private final sync:Ljava/lang/Object;

.field final synthetic this$0:Lorg/telegram/messenger/ImageLoader;


# direct methods
.method public static synthetic $r8$lambda$V7hKOVkk5COLV1ZMNaDhgrjTr5Y(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i5WNxSKSQQ9kB2sLnxAOHlxfGDw(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/ImageLoader;Lorg/telegram/messenger/ImageLoader$CacheImage;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 825
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    .line 817
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method private synthetic lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1670
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1617
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1618
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1619
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1624
    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 1627
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1628
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto :goto_2

    .line 1630
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_4

    .line 1631
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1632
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v1, :cond_3

    .line 1633
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLoader;->access$2500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1635
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_1

    .line 1638
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1640
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto/16 :goto_6

    .line 1645
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_8

    .line 1646
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1647
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 1650
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1651
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1653
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v1, "_isc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v4, 0x42a00000    # 80.0f

    mul-float v1, v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v1, v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 1654
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1656
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1500(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const/4 v1, 0x1

    :goto_4
    move v3, v1

    goto :goto_5

    .line 1660
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1661
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    .line 1664
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1665
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object p1, v2

    .line 1670
    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$200(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v2, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget p1, p1, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    int-to-float v1, p2

    const v2, 0x3f99999a    # 1.2f

    mul-float v1, v1, v2

    float-to-int v3, v1

    int-to-float v4, p3

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 1580
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1581
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float/2addr v1, v0

    div-float/2addr v4, v0

    .line 1582
    invoke-virtual {v3, v0, v0, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 1584
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1585
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1588
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->prepareForGenerateCache()V

    .line 1589
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p4, :cond_1

    .line 1590
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setGeneratingFrame(I)V

    .line 1591
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    .line 1592
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->releaseForGenerateCache()V

    .line 1593
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 1595
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v6, p2

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v7, p3

    int-to-float v7, v7

    int-to-float p2, p2

    div-float/2addr p2, v0

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {v3, v6, v7, p2, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1597
    :cond_3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1598
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 1601
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    sub-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr p4, v0

    invoke-virtual {v3, v1, p3, p4, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1602
    new-instance p2, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    invoke-direct {p2, v2}, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    .line 1604
    invoke-virtual {v3, v1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1605
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1608
    :goto_2
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    .line 1609
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1610
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1614
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1675
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1677
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 1678
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1679
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1684
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 42

    move-object/from16 v7, p0

    .line 830
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 832
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 833
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 834
    monitor-exit v1

    return-void

    .line 836
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_27

    .line 838
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_2

    .line 839
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 840
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v1, "b"

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 841
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    .line 842
    :cond_2
    iget v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 845
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/ThemePreviewDrawable;

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v1, Lorg/telegram/messenger/DocumentObject$ThemeDocument;

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/ThemePreviewDrawable;-><init>(Ljava/io/File;Lorg/telegram/messenger/DocumentObject$ThemeDocument;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 847
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 849
    :goto_1
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    :cond_3
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v6, :cond_b9

    if-ne v2, v5, :cond_4

    goto/16 :goto_88

    :cond_4
    const/high16 v13, 0x42b40000    # 90.0f

    if-ne v2, v9, :cond_25

    const v0, 0x432a999a    # 170.6f

    .line 870
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 871
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 881
    iget-object v14, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v14, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v14, :cond_14

    const-string v15, "_"

    .line 882
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 883
    array-length v15, v14

    if-lt v15, v8, :cond_b

    .line 884
    aget-object v0, v14, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 885
    aget-object v1, v14, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 886
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v15, v15, v0

    float-to-int v15, v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 887
    sget v16, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v11, v1, v16

    float-to-int v11, v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    cmpg-float v0, v0, v13

    if-gtz v0, :cond_5

    cmpg-float v0, v1, v13

    if-gtz v0, :cond_5

    .line 888
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v1, "nolimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa0

    .line 889
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 890
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v2

    move v1, v15

    const/4 v2, 0x0

    .line 893
    :goto_2
    array-length v11, v14

    if-lt v11, v6, :cond_7

    const-string v11, "pcache"

    aget-object v13, v14, v8

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    :goto_3
    const/4 v11, 0x1

    goto :goto_4

    .line 896
    :cond_7
    iget-object v11, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v13, "pcache"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v11, v11, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v13, "nolimit"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v11

    if-eq v11, v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 899
    :goto_4
    iget-object v13, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v13, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v15, "lastframe"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 902
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v4, "lastreactframe"

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v13, 0x1

    .line 906
    :cond_9
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v12, "firstframe"

    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 912
    :goto_5
    array-length v15, v14

    if-lt v15, v6, :cond_e

    const-string v15, "nr"

    .line 913
    aget-object v10, v14, v8

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    :goto_6
    const/4 v15, 0x2

    goto :goto_7

    :cond_c
    const-string v10, "nrs"

    .line 915
    aget-object v15, v14, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    const/4 v15, 0x3

    goto :goto_7

    :cond_d
    const-string v10, "dice"

    .line 917
    aget-object v15, v14, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 918
    aget-object v10, v14, v6

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    const/4 v15, 0x1

    .line 922
    :goto_7
    array-length v6, v14

    if-lt v6, v3, :cond_13

    const-string v6, "c1"

    .line 923
    aget-object v3, v14, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0xc

    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0xc

    goto :goto_8

    :cond_f
    const-string v3, "c2"

    .line 925
    aget-object v6, v14, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0x3

    goto :goto_8

    :cond_10
    const-string v3, "c3"

    .line 927
    aget-object v6, v14, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0x4

    goto :goto_8

    :cond_11
    const-string v3, "c4"

    .line 929
    aget-object v6, v14, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0x5

    goto :goto_8

    :cond_12
    const-string v3, "c5"

    .line 931
    aget-object v5, v14, v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0x6

    goto :goto_8

    :cond_13
    move v3, v0

    move v6, v4

    move v5, v13

    const/16 v17, 0x0

    :goto_8
    move v4, v1

    goto :goto_9

    :cond_14
    move v3, v0

    move v4, v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    :goto_9
    if-eqz v10, :cond_16

    const-string v0, "\ud83c\udfb0"

    .line 938
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 939
    new-instance v0, Lorg/telegram/ui/Components/SlotsDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/SlotsDrawable;-><init>(Ljava/lang/String;II)V

    goto :goto_a

    .line 941
    :cond_15
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/lang/String;II)V

    :goto_a
    move-object v2, v0

    goto/16 :goto_15

    .line 944
    :cond_16
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 948
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-string v10, "r"

    invoke-direct {v1, v0, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 950
    :try_start_3
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_17

    .line 951
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_b

    .line 953
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0

    :goto_b
    const/4 v10, 0x0

    .line 955
    invoke-virtual {v1, v0, v10, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 956
    aget-byte v8, v0, v10

    const/16 v10, 0x1f

    if-ne v8, v10, :cond_18

    aget-byte v0, v0, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v8, -0x75

    if-ne v0, v8, :cond_18

    const/4 v8, 0x1

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    .line 964
    :goto_c
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 966
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_17

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    const/4 v8, 0x0

    .line 960
    :try_start_5
    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_19

    .line 964
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 966
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    :goto_e
    const/4 v8, 0x0

    :goto_f
    if-nez v5, :cond_1b

    if-eqz v12, :cond_1a

    goto :goto_10

    :cond_1a
    move v10, v11

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v10, 0x0

    :goto_11
    if-nez v10, :cond_1d

    if-nez v5, :cond_1d

    if-eqz v12, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .line 975
    :cond_1d
    :goto_12
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    if-nez v5, :cond_1f

    if-nez v12, :cond_1f

    .line 977
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string v10, "compress"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v1, 0x3c

    .line 978
    iput v1, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    .line 980
    :cond_1e
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v1, :cond_20

    const-string v10, "flbk"

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 981
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    goto :goto_13

    .line 984
    :cond_1f
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    :cond_20
    :goto_13
    if-eqz v8, :cond_21

    .line 988
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v8, v8, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-static {v8}, Lorg/telegram/messenger/ImageLoader;->decompressGzip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    const/16 v25, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v8

    move/from16 v21, v4

    move/from16 v22, v3

    move-object/from16 v23, v0

    move/from16 v24, v2

    move/from16 v26, v17

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    goto :goto_14

    .line 990
    :cond_21
    new-instance v1, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v8, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v8, v8, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/16 v24, 0x0

    move-object/from16 v18, v1

    move-object/from16 v19, v8

    move/from16 v20, v4

    move/from16 v21, v3

    move-object/from16 v22, v0

    move/from16 v23, v2

    move/from16 v25, v17

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    :goto_14
    move-object v2, v1

    :goto_15
    if-nez v5, :cond_23

    if-eqz v12, :cond_22

    goto :goto_16

    .line 996
    :cond_22
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 997
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    :cond_23
    :goto_16
    move-object/from16 v1, p0

    .line 994
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V

    goto/16 :goto_8c

    :catchall_2
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    :goto_17
    if-eqz v4, :cond_24

    .line 964
    :try_start_7
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_18

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 966
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 969
    :cond_24
    :goto_18
    throw v1

    :cond_25
    const-wide/16 v3, 0x0

    if-ne v2, v8, :cond_41

    if-eqz v1, :cond_26

    .line 1003
    iget-wide v1, v1, Lorg/telegram/messenger/ImageLocation;->videoSeekTo:J

    move-wide/from16 v27, v1

    goto :goto_19

    :cond_26
    move-wide/from16 v27, v3

    .line 1011
    :goto_19
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const-string v1, "_"

    .line 1012
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1013
    array-length v1, v0

    if-lt v1, v8, :cond_27

    const/4 v1, 0x0

    .line 1014
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1015
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v13

    if-gtz v1, :cond_27

    cmpg-float v1, v2, v13

    if-gtz v1, :cond_27

    .line 1016
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v2, "nolimit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1020
    :goto_1b
    array-length v11, v0

    if-ge v2, v11, :cond_2b

    const-string v11, "pcache"

    .line 1021
    aget-object v12, v0, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    const/4 v6, 0x1

    :cond_28
    const-string v11, "firstframe"

    .line 1024
    aget-object v12, v0, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    const/4 v5, 0x1

    :cond_29
    const-string v11, "nostream"

    .line 1027
    aget-object v12, v0, v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    const/4 v10, 0x1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2b
    if-eqz v5, :cond_2d

    const/4 v10, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :cond_2d
    :goto_1c
    if-eqz v6, :cond_2f

    if-nez v5, :cond_2f

    .line 1037
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    .line 1038
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_2e

    const-string v11, "compress"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const/16 v2, 0x3c

    .line 1039
    iput v2, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    :cond_2e
    move-object/from16 v33, v0

    goto :goto_1d

    :cond_2f
    const/16 v33, 0x0

    .line 1042
    :goto_1d
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "g"

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_30
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v11, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v12, :cond_38

    if-nez v6, :cond_38

    .line 1043
    instance-of v6, v11, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_31

    goto :goto_1e

    :cond_31
    const/4 v11, 0x0

    :goto_1e
    if-eqz v11, :cond_32

    .line 1044
    iget-wide v12, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    goto :goto_1f

    :cond_32
    iget-wide v12, v2, Lorg/telegram/messenger/ImageLocation;->currentSize:J

    .line 1045
    :goto_1f
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    if-eqz v10, :cond_33

    move-wide/from16 v21, v3

    goto :goto_20

    :cond_33
    move-wide/from16 v21, v12

    :goto_20
    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v10, :cond_34

    const/16 v24, 0x0

    goto :goto_21

    :cond_34
    move-object/from16 v24, v11

    :goto_21
    if-nez v11, :cond_35

    if-nez v10, :cond_35

    iget-object v10, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v25, v10

    goto :goto_22

    :cond_35
    const/16 v25, 0x0

    :goto_22
    iget-object v10, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v30, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v5

    move/from16 v23, v8

    move-object/from16 v26, v10

    move/from16 v29, v2

    move-object/from16 v31, v33

    invoke-direct/range {v18 .. v31}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 1046
    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {v11}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_23

    :cond_36
    const/4 v9, 0x0

    :cond_37
    :goto_23
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    goto/16 :goto_29

    .line 1051
    :cond_38
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_39

    const-string v2, "_"

    .line 1052
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1053
    array-length v2, v0

    if-lt v2, v8, :cond_39

    const/4 v2, 0x0

    .line 1054
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1055
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1056
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v2, v2, v6

    float-to-int v2, v2

    mul-float v0, v0, v6

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v31, v2

    goto :goto_24

    :cond_39
    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_24
    if-nez v5, :cond_3b

    .line 1060
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const-string v2, "d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v2, "_d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_25

    :cond_3a
    const/16 v20, 0x0

    goto :goto_26

    :cond_3b
    :goto_25
    const/16 v20, 0x1

    .line 1061
    :goto_26
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-wide/16 v21, 0x0

    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v10, :cond_3c

    const/16 v24, 0x0

    goto :goto_27

    :cond_3c
    iget-object v10, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v10

    :goto_27
    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v30, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v23, v8

    move/from16 v29, v2

    invoke-direct/range {v18 .. v33}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 1062
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_28

    :cond_3d
    const/4 v9, 0x0

    :cond_3e
    :goto_28
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    :goto_29
    if-eqz v5, :cond_40

    const/4 v2, 0x0

    .line 1065
    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1067
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1068
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v1, :cond_3f

    const/4 v2, 0x0

    .line 1070
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    .line 1072
    :cond_3f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    .line 1075
    :cond_40
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setLimitFps(Z)V

    .line 1076
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1077
    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8c

    .line 1085
    :cond_41
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1086
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v2, :cond_43

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v0, :cond_42

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".enc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_2a

    :cond_42
    const/4 v10, 0x0

    goto :goto_2b

    :cond_43
    :goto_2a
    const/4 v10, 0x1

    .line 1089
    :goto_2b
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_45

    .line 1090
    iget-object v2, v0, Lorg/telegram/messenger/SecureDocument;->secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;

    .line 1091
    iget-object v5, v0, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v5, :cond_44

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    if-eqz v5, :cond_44

    goto :goto_2c

    .line 1094
    :cond_44
    iget-object v0, v0, Lorg/telegram/messenger/SecureDocument;->fileHash:[B

    move-object v5, v0

    goto :goto_2c

    :cond_45
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1103
    :goto_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v0, v6, :cond_49

    .line 1106
    :try_start_8
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v6, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1108
    :try_start_9
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_46

    .line 1109
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_2d

    .line 1111
    :cond_46
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0

    .line 1113
    :goto_2d
    array-length v11, v0

    const/4 v12, 0x0

    invoke-virtual {v6, v0, v12, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1114
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1115
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v11, "riff"

    .line 1116
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_47

    const-string v11, "webp"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_47

    const/4 v11, 0x1

    goto :goto_2e

    :cond_47
    const/4 v11, 0x0

    .line 1124
    :goto_2e
    :try_start_a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_33

    :catch_5
    move-exception v0

    move-object v6, v0

    .line 1126
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_33

    :catch_6
    move-exception v0

    goto :goto_2f

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_30

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    .line 1120
    :goto_2f
    :try_start_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v6, :cond_49

    .line 1124
    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_32

    :catch_8
    move-exception v0

    move-object v6, v0

    .line 1126
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_32

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v4, v6

    :goto_30
    if-eqz v4, :cond_48

    .line 1124
    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_31

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 1126
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1129
    :cond_48
    :goto_31
    throw v1

    :cond_49
    :goto_32
    const/4 v11, 0x0

    .line 1133
    :goto_33
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    const/16 v6, 0x8

    if-eqz v0, :cond_4e

    const-string v12, "thumb://"

    .line 1135
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b

    const-string v12, ":"

    .line 1136
    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_4a

    .line 1138
    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    add-int/2addr v12, v9

    .line 1140
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :cond_4a
    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_34
    move-object v12, v0

    :goto_35
    const/4 v14, 0x0

    :goto_36
    const/4 v15, 0x0

    goto :goto_38

    :cond_4b
    const-string v12, "vthumb://"

    .line 1143
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4d

    const-string v12, ":"

    const/16 v13, 0x9

    .line 1144
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    if-ltz v12, :cond_4c

    .line 1146
    invoke-virtual {v0, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v12, 0x1

    goto :goto_37

    :cond_4c
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_37
    move-object v13, v0

    move v14, v12

    const/4 v12, 0x0

    goto :goto_36

    :cond_4d
    const-string v12, "http"

    .line 1150
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_35

    :cond_4e
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 1155
    :goto_38
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1156
    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_4f

    .line 1159
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1166
    :cond_4f
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Z

    move-result v4

    const/16 v34, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    .line 1168
    :try_start_e
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_64

    const-string v3, "_"

    .line 1169
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1170
    array-length v3, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_13

    if-lt v3, v8, :cond_50

    const/4 v3, 0x0

    .line 1171
    :try_start_f
    aget-object v20, v0, v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sget v20, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    mul-float v3, v3, v20

    .line 1172
    :try_start_10
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v20, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    mul-float v0, v0, v20

    move/from16 v20, v3

    move v3, v0

    goto :goto_39

    :catchall_5
    move-exception v0

    move-object v9, v0

    move/from16 v25, v14

    move/from16 v36, v15

    const/4 v0, 0x0

    goto/16 :goto_4f

    :catchall_6
    move-exception v0

    move-object v9, v0

    move/from16 v25, v14

    move/from16 v36, v15

    goto/16 :goto_4e

    :cond_50
    const/4 v3, 0x0

    const/16 v20, 0x0

    .line 1174
    :goto_39
    :try_start_11
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v8, 0x3

    goto :goto_3a

    .line 1176
    :cond_51
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v8, 0x2

    goto :goto_3a

    .line 1178
    :cond_52
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_10

    if-eqz v0, :cond_53

    const/4 v8, 0x1

    goto :goto_3a

    :cond_53
    const/4 v8, 0x0

    .line 1181
    :goto_3a
    :try_start_12
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v9, "i"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_f

    .line 1184
    :try_start_13
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    move/from16 v22, v8

    :try_start_14
    const-string v8, "f"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-eqz v0, :cond_54

    const/4 v4, 0x1

    :cond_54
    if-nez v11, :cond_63

    cmpl-float v0, v20, v34

    if-eqz v0, :cond_63

    cmpl-float v0, v3, v34

    if-eqz v0, :cond_63

    const/4 v8, 0x1

    .line 1188
    :try_start_15
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    if-eqz v13, :cond_56

    if-nez v12, :cond_56

    if-eqz v14, :cond_55

    .line 1192
    :try_start_16
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    move/from16 v23, v9

    :try_start_17
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    move/from16 v24, v4

    const/4 v4, 0x1

    :try_start_18
    invoke-static {v0, v8, v9, v4, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_3c

    :catchall_7
    move-exception v0

    move/from16 v24, v4

    goto :goto_3b

    :catchall_8
    move-exception v0

    move/from16 v24, v4

    move/from16 v23, v9

    :goto_3b
    move-object v9, v0

    move v0, v3

    move/from16 v25, v14

    move/from16 v36, v15

    goto/16 :goto_47

    :cond_55
    move/from16 v24, v4

    move/from16 v23, v9

    .line 1194
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v0, v8, v9, v4, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :goto_3c
    move/from16 v25, v14

    move/from16 v36, v15

    goto/16 :goto_43

    :catchall_9
    move-exception v0

    move-object v9, v0

    move v0, v3

    move/from16 v25, v14

    move/from16 v36, v15

    goto :goto_41

    :cond_56
    move/from16 v24, v4

    move/from16 v23, v9

    if-eqz v2, :cond_5b

    .line 1198
    :try_start_19
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v4, v8

    .line 1200
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    if-eqz v8, :cond_57

    .line 1201
    :try_start_1a
    array-length v9, v8

    if-lt v9, v4, :cond_57

    goto :goto_3d

    :cond_57
    const/4 v8, 0x0

    :goto_3d
    if-nez v8, :cond_58

    .line 1203
    new-array v8, v4, [B

    .line 1204
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :cond_58
    const/4 v9, 0x0

    .line 1206
    :try_start_1b
    invoke-virtual {v0, v8, v9, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1207
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1208
    invoke-static {v8, v9, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    move/from16 v25, v14

    move/from16 v36, v15

    int-to-long v14, v4

    .line 1209
    :try_start_1c
    invoke-static {v8, v9, v14, v15}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_5a

    .line 1211
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_3e

    :cond_59
    const/4 v0, 0x0

    goto :goto_3f

    :cond_5a
    :goto_3e
    const/4 v0, 0x1

    :goto_3f
    const/4 v9, 0x0

    .line 1214
    aget-byte v14, v8, v9

    and-int/lit16 v9, v14, 0xff

    sub-int/2addr v4, v9

    if-nez v0, :cond_5d

    .line 1217
    invoke-static {v8, v9, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_43

    :catchall_a
    move-exception v0

    move/from16 v25, v14

    move/from16 v36, v15

    :goto_40
    move-object v9, v0

    move v0, v3

    :goto_41
    move/from16 v3, v20

    move/from16 v4, v24

    goto/16 :goto_48

    :cond_5b
    move/from16 v25, v14

    move/from16 v36, v15

    if-eqz v10, :cond_5c

    .line 1222
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v4, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_42

    .line 1224
    :cond_5c
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_42
    const/4 v4, 0x0

    .line 1226
    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1227
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1231
    :cond_5d
    :goto_43
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 1232
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    cmpl-float v8, v20, v3

    if-ltz v8, :cond_5e

    cmpl-float v8, v0, v4

    if-lez v8, :cond_5e

    div-float v8, v0, v20

    div-float v9, v4, v3

    .line 1235
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_44

    :cond_5e
    div-float v8, v0, v20

    div-float v9, v4, v3

    .line 1237
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :goto_44
    const v9, 0x3f99999a    # 1.2f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5f

    const/high16 v8, 0x3f800000    # 1.0f

    :cond_5f
    const/4 v9, 0x0

    .line 1242
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    cmpl-float v9, v8, v35

    if-lez v9, :cond_62

    cmpl-float v0, v0, v20

    if-gtz v0, :cond_60

    cmpl-float v0, v4, v3

    if-lez v0, :cond_62

    :cond_60
    const/4 v0, 0x1

    :cond_61
    const/4 v4, 0x2

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_61

    .line 1248
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_45

    :cond_62
    float-to-int v0, v8

    .line 1250
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_45

    :catchall_b
    move-exception v0

    goto :goto_40

    :catchall_c
    move-exception v0

    move/from16 v24, v4

    goto :goto_46

    :cond_63
    move/from16 v24, v4

    move/from16 v23, v9

    move/from16 v25, v14

    move/from16 v36, v15

    :goto_45
    move/from16 v4, v24

    const/4 v8, 0x0

    goto/16 :goto_4c

    :catchall_d
    move-exception v0

    goto :goto_46

    :catchall_e
    move-exception v0

    move/from16 v22, v8

    :goto_46
    move/from16 v23, v9

    move/from16 v25, v14

    move/from16 v36, v15

    move-object v9, v0

    move v0, v3

    :goto_47
    move/from16 v3, v20

    :goto_48
    const/4 v8, 0x0

    goto/16 :goto_52

    :catchall_f
    move-exception v0

    move/from16 v22, v8

    move/from16 v25, v14

    move/from16 v36, v15

    move-object v9, v0

    move v0, v3

    move/from16 v3, v20

    const/4 v8, 0x0

    goto/16 :goto_51

    :catchall_10
    move-exception v0

    move/from16 v25, v14

    move/from16 v36, v15

    move-object v9, v0

    move v0, v3

    move/from16 v3, v20

    goto/16 :goto_4f

    :cond_64
    move/from16 v25, v14

    move/from16 v36, v15

    if-eqz v12, :cond_69

    const/4 v3, 0x1

    .line 1254
    :try_start_1d
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_65

    .line 1255
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_49

    :cond_65
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_49
    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1256
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1257
    invoke-static {v0, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 1258
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1259
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1260
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, 0x0

    .line 1261
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v9, 0x42

    .line 1262
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v14

    iget v14, v14, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v15

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1263
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v0, v0, v3

    cmpg-float v3, v0, v35

    if-gez v3, :cond_66

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_66
    cmpl-float v3, v0, v35

    if-lez v3, :cond_68

    const/4 v3, 0x1

    :cond_67
    const/4 v9, 0x2

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    cmpg-float v9, v9, v0

    if-lez v9, :cond_67

    .line 1272
    iput v3, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4a

    :cond_68
    float-to-int v0, v0

    .line 1274
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    :goto_4a
    const/4 v3, 0x0

    goto :goto_4b

    :catchall_11
    move-exception v0

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_50

    :catchall_12
    move-exception v0

    goto :goto_4d

    :cond_69
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_4b
    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_4c
    move/from16 v0, v20

    move/from16 v9, v22

    move/from16 v14, v23

    goto :goto_53

    :catchall_13
    move-exception v0

    move/from16 v25, v14

    move/from16 v36, v15

    :goto_4d
    move-object v9, v0

    :goto_4e
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_4f
    const/4 v8, 0x0

    :goto_50
    const/16 v22, 0x0

    :goto_51
    const/16 v23, 0x0

    .line 1279
    :goto_52
    instance-of v14, v9, Ljava/io/FileNotFoundException;

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    .line 1282
    invoke-static {v9, v14}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    move/from16 v9, v22

    move/from16 v14, v23

    move/from16 v41, v3

    move v3, v0

    move/from16 v0, v41

    .line 1285
    :goto_53
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/high16 v37, 0x41a00000    # 20.0f

    move-object/from16 v38, v8

    const/4 v8, 0x1

    if-ne v15, v8, :cond_87

    .line 1287
    :try_start_1f
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-static {v3, v12, v13}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1288
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_17

    .line 1289
    :try_start_20
    iget-boolean v4, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v4, :cond_6a

    .line 1290
    monitor-exit v3

    return-void

    .line 1292
    :cond_6a
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    if-eqz v11, :cond_6c

    .line 1295
    :try_start_21
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v22

    sget-object v23, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v24, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {v22 .. v27}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 1298
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 1299
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1300
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    const/4 v11, 0x0

    invoke-static {v11, v3, v8, v4, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1301
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v8}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    .line 1303
    :try_start_22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    iget-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_6b

    const/4 v5, 0x1

    goto :goto_54

    :cond_6b
    const/4 v5, 0x0

    :goto_54
    const/4 v11, 0x0

    invoke-static {v8, v3, v4, v11, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1304
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    goto/16 :goto_5b

    .line 1306
    :cond_6c
    :try_start_23
    iget-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v3, :cond_6f

    if-eqz v2, :cond_6d

    goto :goto_56

    :cond_6d
    if-eqz v10, :cond_6e

    .line 1336
    new-instance v2, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v2, v1, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_55

    .line 1338
    :cond_6e
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_55
    const/4 v3, 0x0

    .line 1340
    invoke-static {v2, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_17

    .line 1341
    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_14

    goto :goto_5b

    :catchall_14
    move-exception v0

    goto/16 :goto_64

    .line 1307
    :cond_6f
    :goto_56
    :try_start_25
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    long-to-int v4, v11

    .line 1310
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_70

    .line 1311
    array-length v11, v8

    if-lt v11, v4, :cond_70

    goto :goto_57

    :cond_70
    const/4 v8, 0x0

    :goto_57
    if-nez v8, :cond_71

    .line 1313
    new-array v8, v4, [B

    .line 1314
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_71
    const/4 v11, 0x0

    .line 1316
    invoke-virtual {v3, v8, v11, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1317
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_74

    .line 1320
    invoke-static {v8, v11, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V

    int-to-long v2, v4

    .line 1321
    invoke-static {v8, v11, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v2

    if-eqz v5, :cond_73

    .line 1322
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_58

    :cond_72
    const/4 v2, 0x0

    goto :goto_59

    :cond_73
    :goto_58
    const/4 v2, 0x1

    :goto_59
    const/4 v3, 0x0

    .line 1325
    aget-byte v5, v8, v3

    and-int/lit16 v3, v5, 0xff

    sub-int/2addr v4, v3

    goto :goto_5a

    :cond_74
    if-eqz v10, :cond_75

    .line 1328
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v8, v3, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_75
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5a
    if-nez v2, :cond_76

    .line 1331
    invoke-static {v8, v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    goto :goto_5b

    :cond_76
    move-object/from16 v8, v38

    :goto_5b
    if-nez v8, :cond_79

    .line 1346
    :try_start_26
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_77

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_78

    .line 1347
    :cond_77
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_78
    const/4 v2, 0x0

    goto/16 :goto_66

    .line 1350
    :cond_79
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_7a

    .line 1351
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1352
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1353
    iget-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v4, :cond_7a

    cmpl-float v4, v0, v34

    if-eqz v4, :cond_7a

    cmpl-float v4, v2, v0

    if-eqz v4, :cond_7a

    add-float v37, v0, v37

    cmpl-float v4, v2, v37

    if-lez v4, :cond_7a

    div-float/2addr v2, v0

    float-to-int v0, v0

    div-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x1

    .line 1355
    invoke-static {v8, v0, v2, v3}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v8, v0, :cond_7a

    .line 1357
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    :cond_7a
    if-eqz v14, :cond_7d

    .line 1363
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_7b

    const/4 v0, 0x0

    goto :goto_5c

    :cond_7b
    const/4 v0, 0x1

    :goto_5c
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-static {v8, v0, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    if-eqz v0, :cond_7c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_7c
    const/4 v0, 0x0

    :goto_5d
    move v2, v0

    goto :goto_5e

    :cond_7d
    const/4 v2, 0x0

    :goto_5e
    const/4 v3, 0x1

    if-ne v9, v3, :cond_7f

    .line 1366
    :try_start_27
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_86

    const/16 v23, 0x3

    .line 1367
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_7e

    const/16 v24, 0x0

    goto :goto_5f

    :cond_7e
    const/16 v24, 0x1

    :goto_5f
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v27

    move-object/from16 v22, v8

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_66

    :catchall_15
    move-exception v0

    goto/16 :goto_65

    :cond_7f
    const/4 v3, 0x2

    if-ne v9, v3, :cond_81

    .line 1370
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_86

    const/16 v23, 0x1

    .line 1371
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_80

    const/16 v24, 0x0

    goto :goto_60

    :cond_80
    const/16 v24, 0x1

    :goto_60
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v27

    move-object/from16 v22, v8

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_66

    :cond_81
    const/4 v3, 0x3

    if-ne v9, v3, :cond_85

    .line 1374
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_86

    const/16 v23, 0x7

    .line 1375
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_82

    const/16 v24, 0x0

    goto :goto_61

    :cond_82
    const/16 v24, 0x1

    :goto_61
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v27

    move-object/from16 v22, v8

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v23, 0x7

    .line 1376
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_83

    const/16 v24, 0x0

    goto :goto_62

    :cond_83
    const/16 v24, 0x1

    :goto_62
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v27

    move-object/from16 v22, v8

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v23, 0x7

    .line 1377
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_84

    const/16 v24, 0x0

    goto :goto_63

    :cond_84
    const/16 v24, 0x1

    :goto_63
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v27

    move-object/from16 v22, v8

    invoke-static/range {v22 .. v27}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto :goto_66

    :cond_85
    if-nez v9, :cond_86

    .line 1379
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_86

    .line 1380
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    goto :goto_66

    :catchall_16
    move-exception v0

    .line 1292
    :try_start_28
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    :try_start_29
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    :catchall_17
    move-exception v0

    move-object/from16 v8, v38

    :goto_64
    const/4 v2, 0x0

    .line 1384
    :goto_65
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_86
    :goto_66
    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_85

    :cond_87
    const/16 v8, 0x14

    if-eqz v13, :cond_88

    const/4 v8, 0x0

    :cond_88
    if-eqz v8, :cond_8a

    .line 1392
    :try_start_2a
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v15, v20, v22

    if-eqz v15, :cond_8a

    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v15}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move/from16 v39, v14

    int-to-long v14, v8

    sub-long v22, v22, v14

    cmp-long v8, v20, v22

    if-lez v8, :cond_89

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v40, v3

    const/16 v3, 0x15

    if-ge v8, v3, :cond_8b

    .line 1393
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    goto :goto_69

    :cond_89
    move/from16 v40, v3

    goto :goto_69

    :catchall_18
    move-exception v0

    move-object/from16 v8, v38

    :goto_67
    const/4 v3, 0x0

    :goto_68
    const/4 v4, 0x0

    goto/16 :goto_82

    :cond_8a
    move/from16 v40, v3

    move/from16 v39, v14

    .line 1395
    :cond_8b
    :goto_69
    :try_start_2b
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1396
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_25

    .line 1397
    :try_start_2c
    iget-boolean v8, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v8, :cond_8c

    .line 1398
    monitor-exit v3

    return-void

    .line 1400
    :cond_8c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_22

    if-nez v4, :cond_8e

    .line 1402
    :try_start_2d
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v4, :cond_8e

    if-nez v9, :cond_8e

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v3, :cond_8d

    goto :goto_6a

    .line 1405
    :cond_8d
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    goto :goto_6b

    .line 1403
    :cond_8e
    :goto_6a
    :try_start_2e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_6b
    const/4 v3, 0x0

    .line 1408
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_25

    if-eqz v13, :cond_91

    if-nez v12, :cond_91

    if-eqz v25, :cond_90

    .line 1411
    :try_start_2f
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v14, 0x0

    cmp-long v8, v3, v14

    if-nez v8, :cond_8f

    .line 1412
    new-instance v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v21, 0x1

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v1

    invoke-direct/range {v19 .. v32}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    const/4 v4, 0x1

    const-wide/16 v12, 0x0

    .line 1413
    invoke-virtual {v3, v12, v13, v4}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    .line 1414
    :try_start_30
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    goto :goto_6c

    .line 1416
    :cond_8f
    :try_start_31
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v3, v12, v13, v4, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_6c

    .line 1419
    :cond_90
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x1

    invoke-static {v3, v12, v13, v4, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_18

    goto :goto_6c

    :cond_91
    move-object/from16 v8, v38

    :goto_6c
    if-nez v8, :cond_a0

    if-eqz v11, :cond_93

    .line 1424
    :try_start_32
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    .line 1427
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 1428
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1429
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1b

    const/4 v12, 0x0

    :try_start_33
    invoke-static {v12, v3, v11, v4, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1a

    .line 1430
    :try_start_34
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v11}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1432
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    iget-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    if-nez v5, :cond_92

    const/4 v5, 0x1

    goto :goto_6d

    :cond_92
    const/4 v5, 0x0

    :goto_6d
    const/4 v11, 0x0

    :try_start_35
    invoke-static {v8, v3, v4, v11, v5}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_19

    .line 1433
    :try_start_36
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_77

    :catchall_19
    move-exception v0

    move-object v4, v11

    goto/16 :goto_81

    :catchall_1a
    move-exception v0

    move-object v4, v12

    goto/16 :goto_81

    :catchall_1b
    move-exception v0

    goto/16 :goto_67

    .line 1437
    :cond_93
    :try_start_37
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    long-to-int v4, v11

    .line 1440
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz v11, :cond_94

    .line 1441
    array-length v12, v11

    if-lt v12, v4, :cond_94

    goto :goto_6e

    :cond_94
    const/4 v11, 0x0

    :goto_6e
    if-nez v11, :cond_95

    .line 1443
    new-array v11, v4, [B

    .line 1444
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_95
    const/4 v12, 0x0

    .line 1446
    invoke-virtual {v3, v11, v12, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1447
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_98

    .line 1450
    invoke-static {v11, v12, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V

    int-to-long v2, v4

    .line 1451
    invoke-static {v11, v12, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v2

    if-eqz v5, :cond_97

    .line 1452
    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_96

    goto :goto_6f

    :cond_96
    const/4 v2, 0x0

    goto :goto_70

    :cond_97
    :goto_6f
    const/4 v2, 0x1

    :goto_70
    const/4 v3, 0x0

    .line 1455
    aget-byte v5, v11, v3

    and-int/lit16 v3, v5, 0xff

    sub-int/2addr v4, v3

    goto :goto_71

    :cond_98
    if-eqz v10, :cond_99

    .line 1458
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v11, v3, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_99
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_71
    if-nez v2, :cond_9a

    .line 1461
    invoke-static {v11, v3, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1c

    goto :goto_72

    :catchall_1c
    nop

    :cond_9a
    :goto_72
    if-nez v8, :cond_a0

    if-eqz v10, :cond_9b

    .line 1470
    :try_start_38
    new-instance v2, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v2, v1, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1b

    goto :goto_73

    .line 1472
    :cond_9b
    :try_start_39
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1474
    :goto_73
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_document;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1f

    if-eqz v3, :cond_9f

    .line 1476
    :try_start_3a
    new-instance v3, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v3, v2}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v4, "Orientation"

    const/4 v5, 0x1

    .line 1477
    invoke-virtual {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9e

    const/4 v4, 0x6

    if-eq v3, v4, :cond_9d

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9c

    goto :goto_74

    :cond_9c
    const/16 v3, 0x10e

    goto :goto_75

    :cond_9d
    const/16 v3, 0x5a

    goto :goto_75

    :cond_9e
    const/16 v3, 0xb4

    goto :goto_75

    :catchall_1d
    :goto_74
    const/4 v3, 0x0

    .line 1492
    :goto_75
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const-wide/16 v11, 0x0

    invoke-virtual {v4, v11, v12}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    goto :goto_76

    :catchall_1e
    move-exception v0

    goto/16 :goto_68

    :cond_9f
    const/4 v3, 0x0

    :goto_76
    const/4 v4, 0x0

    .line 1494
    :try_start_3c
    invoke-static {v2, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1495
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_77

    :catchall_1f
    move-exception v0

    const/4 v4, 0x0

    goto/16 :goto_81

    :cond_a0
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_77
    if-nez v8, :cond_a3

    if-eqz v36, :cond_a2

    .line 1500
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v0, v5, v11

    if-eqz v0, :cond_a1

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_a2

    .line 1501
    :cond_a1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_a2
    const/4 v11, 0x0

    goto/16 :goto_84

    .line 1505
    :cond_a3
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_b1

    .line 1506
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1507
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 1508
    iget-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v11, :cond_a6

    cmpl-float v11, v0, v34

    if-eqz v11, :cond_a6

    cmpl-float v11, v2, v0

    if-eqz v11, :cond_a6

    add-float v37, v0, v37

    cmpl-float v11, v2, v37

    if-lez v11, :cond_a6

    cmpl-float v11, v2, v5

    if-lez v11, :cond_a4

    cmpl-float v11, v0, v40

    if-lez v11, :cond_a4

    div-float v11, v2, v0

    cmpl-float v12, v11, v35

    if-lez v12, :cond_a5

    float-to-int v0, v0

    div-float v11, v5, v11

    float-to-int v11, v11

    const/4 v12, 0x1

    .line 1513
    invoke-static {v8, v0, v11, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_78

    :cond_a4
    div-float v0, v5, v40

    cmpl-float v11, v0, v35

    if-lez v11, :cond_a5

    div-float v0, v2, v0

    float-to-int v0, v0

    move/from16 v11, v40

    float-to-int v11, v11

    const/4 v12, 0x1

    .line 1520
    invoke-static {v8, v0, v11, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_78

    :cond_a5
    move-object v0, v8

    :goto_78
    if-eq v8, v0, :cond_a6

    .line 1526
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    :cond_a6
    if-eqz v8, :cond_b1

    if-eqz v39, :cond_aa

    .line 1533
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1534
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v0, v0, v11

    const/16 v11, 0x57e4

    if-le v0, v11, :cond_a7

    const/16 v0, 0x64

    const/16 v11, 0x64

    const/4 v12, 0x0

    .line 1536
    invoke-static {v8, v0, v11, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_79

    :cond_a7
    move-object v0, v8

    .line 1538
    :goto_79
    iget-boolean v11, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v11, :cond_a8

    const/4 v11, 0x0

    goto :goto_7a

    :cond_a8
    const/4 v11, 0x1

    :goto_7a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v14

    invoke-static {v0, v11, v12, v13, v14}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v11
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_21

    if-eqz v11, :cond_a9

    const/4 v11, 0x1

    goto :goto_7b

    :cond_a9
    const/4 v11, 0x0

    :goto_7b
    if-eq v0, v8, :cond_ab

    .line 1540
    :try_start_3d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7c

    :cond_aa
    const/4 v11, 0x0

    :cond_ab
    :goto_7c
    const/high16 v0, 0x42c80000    # 100.0f

    if-eqz v9, :cond_ad

    cmpl-float v12, v5, v0

    if-gtz v12, :cond_ac

    cmpl-float v12, v2, v0

    if-lez v12, :cond_ad

    :cond_ac
    const/16 v2, 0x50

    const/16 v5, 0x50

    const/4 v12, 0x0

    .line 1544
    invoke-static {v8, v2, v5, v12}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v8, 0x42a00000    # 80.0f

    move-object v8, v2

    const/high16 v2, 0x42a00000    # 80.0f

    :cond_ad
    if-eqz v9, :cond_b0

    cmpg-float v5, v5, v0

    if-gez v5, :cond_b0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_b0

    .line 1549
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_af

    const/4 v13, 0x3

    .line 1550
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_ae

    const/4 v14, 0x0

    goto :goto_7d

    :cond_ae
    const/4 v14, 0x1

    :goto_7d
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v17

    move-object v12, v8

    invoke-static/range {v12 .. v17}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_af
    const/4 v0, 0x1

    goto :goto_7e

    :cond_b0
    const/4 v0, 0x0

    goto :goto_7e

    :cond_b1
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_7e
    if-nez v0, :cond_b2

    .line 1556
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_b2

    .line 1557
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    goto :goto_84

    :catchall_20
    move-exception v0

    goto :goto_83

    :catchall_21
    move-exception v0

    goto :goto_82

    :catchall_22
    move-exception v0

    const/4 v4, 0x0

    .line 1400
    :goto_7f
    :try_start_3e
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_24

    :try_start_3f
    throw v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_23

    :catchall_23
    move-exception v0

    goto :goto_80

    :catchall_24
    move-exception v0

    goto :goto_7f

    :catchall_25
    move-exception v0

    const/4 v4, 0x0

    :goto_80
    move-object/from16 v8, v38

    :goto_81
    const/4 v3, 0x0

    :goto_82
    const/4 v11, 0x0

    .line 1561
    :goto_83
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_b2
    :goto_84
    move v2, v11

    .line 1564
    :goto_85
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1565
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_b4

    if-eqz v10, :cond_b4

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image Loader image is empty = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_b3

    const/4 v9, 0x1

    goto :goto_86

    :cond_b3
    const/4 v9, 0x0

    :goto_86
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_b4
    if-nez v2, :cond_b7

    if-eqz v3, :cond_b5

    goto :goto_87

    :cond_b5
    if-eqz v8, :cond_b6

    .line 1571
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_b6
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8c

    :cond_b7
    :goto_87
    if-eqz v8, :cond_b8

    .line 1569
    new-instance v4, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-direct {v4, v8, v2, v3}, Lorg/telegram/messenger/ExtendedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;ZI)V

    :cond_b8
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8c

    :cond_b9
    :goto_88
    const/4 v4, 0x0

    .line 851
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 852
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 853
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string v3, "_"

    .line 854
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 855
    array-length v3, v0

    const/4 v6, 0x2

    if-lt v3, v6, :cond_ba

    const/4 v3, 0x0

    .line 856
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v6, 0x1

    .line 857
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 858
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_89

    :cond_ba
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 864
    :goto_89
    :try_start_40
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v8, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    if-ne v0, v5, :cond_bb

    const/4 v9, 0x1

    goto :goto_8a

    :cond_bb
    const/4 v9, 0x0

    :goto_8a
    invoke-static {v8, v2, v1, v9}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_26

    goto :goto_8b

    :catchall_26
    move-exception v0

    .line 866
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v4

    :goto_8b
    if-eqz v2, :cond_bc

    .line 868
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_bc
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_8c
    return-void

    :catchall_27
    move-exception v0

    .line 836
    :try_start_41
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_27

    throw v0
.end method
