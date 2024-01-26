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

    .line 864
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 865
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    .line 857
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method private applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1668
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1674
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1675
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1679
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xff

    if-nez v3, :cond_1

    .line 1680
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    .line 1681
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 1682
    :cond_1
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-nez v3, :cond_2

    .line 1683
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1684
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1685
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v7

    .line 1686
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v9}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v9

    new-array v10, v4, [I

    aput v2, v10, v6

    aput v3, v10, v5

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1687
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8, v6, v6, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1688
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v7

    goto :goto_1

    .line 1690
    :cond_2
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1691
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1692
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 1693
    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    if-nez v8, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    invoke-static {v8, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    .line 1694
    :goto_0
    invoke-static {v2, v3, v5, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v8

    .line 1695
    new-instance v9, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 1696
    invoke-virtual {v9, v2, v3, v5, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 1697
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v9, v6, v6, v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 1698
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v9, v2, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 1699
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    move v5, v6

    move v2, v8

    :goto_1
    if-eqz v5, :cond_4

    .line 1704
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1705
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1706
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    int-to-float p2, p2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p2, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p2, 0x0

    .line 1707
    invoke-virtual {v1, p1, p2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-object v0

    .line 1669
    :cond_5
    :goto_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz p2, :cond_6

    .line 1670
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private synthetic lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1806
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1753
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1754
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1755
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1757
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1760
    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 1763
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto :goto_2

    .line 1766
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_4

    .line 1767
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1768
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v1, :cond_3

    .line 1769
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLoader;->access$2500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1771
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_1

    .line 1774
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1776
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto/16 :goto_6

    .line 1781
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_8

    .line 1782
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1783
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 1786
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1787
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1789
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

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 1790
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1792
    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$1500(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move v1, v3

    :goto_4
    move v3, v1

    goto :goto_5

    .line 1796
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1797
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    .line 1800
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1801
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object p1, v2

    .line 1806
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

    mul-float/2addr v1, v2

    float-to-int v3, v1

    int-to-float v4, p3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    .line 1716
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1717
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float/2addr v1, v0

    div-float/2addr v4, v0

    .line 1718
    invoke-virtual {v3, v0, v0, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 1720
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1721
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1724
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->prepareForGenerateCache()V

    .line 1725
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

    .line 1726
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setGeneratingFrame(I)V

    .line 1727
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    .line 1728
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->releaseForGenerateCache()V

    .line 1729
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 1731
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

    .line 1733
    :cond_3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1734
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 1737
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

    .line 1738
    new-instance p2, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    invoke-direct {p2, v2}, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    .line 1740
    invoke-virtual {v3, v1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1741
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1744
    :goto_2
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    .line 1745
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1746
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1750
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1811
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1813
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 1814
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1815
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1820
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
    .locals 39

    move-object/from16 v7, p0

    .line 870
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 871
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 872
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 873
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 874
    monitor-exit v1

    return-void

    .line 876
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_28

    .line 878
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_2

    .line 879
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 880
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v1, "b"

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 881
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    .line 882
    :cond_2
    iget v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 885
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

    .line 887
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 889
    :goto_1
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    :cond_3
    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v5, :cond_ca

    if-ne v2, v6, :cond_4

    goto/16 :goto_96

    :cond_4
    const/high16 v12, 0x42b40000    # 90.0f

    if-ne v2, v9, :cond_25

    const v0, 0x432a999a    # 170.6f

    .line 913
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 914
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 924
    iget-object v13, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v13, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v13, :cond_14

    const-string v14, "_"

    .line 925
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 926
    array-length v14, v13

    if-lt v14, v8, :cond_b

    .line 927
    aget-object v0, v13, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 928
    aget-object v1, v13, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 929
    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v14, v0

    float-to-int v14, v14

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 930
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v15, v1

    float-to-int v15, v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_5

    cmpg-float v0, v1, v12

    if-gtz v0, :cond_5

    .line 931
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v1, "nolimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa0

    .line 932
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 933
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v9

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v10

    move v1, v14

    .line 936
    :goto_2
    array-length v12, v13

    if-lt v12, v5, :cond_7

    const-string/jumbo v12, "pcache"

    aget-object v14, v13, v8

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    :goto_3
    move v12, v9

    goto :goto_4

    .line 939
    :cond_7
    iget-object v12, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v14, "pcache"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v12, v12, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v14, "nolimit"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v12

    if-eq v12, v8, :cond_8

    goto :goto_3

    :cond_8
    move v12, v10

    .line 942
    :goto_4
    iget-object v14, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v14, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v15, "lastframe"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 945
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v4, "lastreactframe"

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v14, v9

    .line 949
    :cond_9
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v11, "firstframe"

    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v9

    goto :goto_5

    :cond_a
    move v11, v10

    goto :goto_5

    :cond_b
    move v2, v10

    move v4, v2

    move v11, v4

    move v12, v11

    move v14, v12

    .line 955
    :goto_5
    array-length v15, v13

    if-lt v15, v5, :cond_e

    const-string/jumbo v15, "nr"

    .line 956
    aget-object v10, v13, v8

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v15, v8

    goto :goto_6

    :cond_c
    const-string/jumbo v10, "nrs"

    .line 958
    aget-object v15, v13, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v15, v5

    goto :goto_6

    :cond_d
    const-string v10, "dice"

    .line 960
    aget-object v15, v13, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 961
    aget-object v10, v13, v5

    move v15, v8

    goto :goto_7

    :cond_e
    move v15, v9

    :goto_6
    const/4 v10, 0x0

    .line 965
    :goto_7
    array-length v5, v13

    if-lt v5, v3, :cond_13

    const-string v5, "c1"

    .line 966
    aget-object v3, v13, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0xc

    :goto_8
    move v6, v4

    move v5, v14

    move v4, v1

    move v1, v3

    move v3, v0

    goto/16 :goto_9

    :cond_f
    const-string v3, "c2"

    .line 968
    aget-object v5, v13, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v3, v0

    move v6, v4

    move v5, v14

    move v4, v1

    const/4 v1, 0x3

    goto :goto_9

    :cond_10
    const-string v3, "c3"

    .line 970
    aget-object v5, v13, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v0

    move v5, v14

    move/from16 v38, v4

    move v4, v1

    move v1, v6

    move/from16 v6, v38

    goto :goto_9

    :cond_11
    const-string v3, "c4"

    .line 972
    aget-object v5, v13, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v3, v0

    move v6, v4

    move v5, v14

    move v4, v1

    const/4 v1, 0x5

    goto :goto_9

    :cond_12
    const-string v3, "c5"

    .line 974
    aget-object v5, v13, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x6

    goto :goto_8

    :cond_13
    move v3, v0

    move v6, v4

    move v5, v14

    move v4, v1

    const/4 v1, 0x0

    goto :goto_9

    :cond_14
    move v3, v0

    move v4, v1

    move v15, v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_9
    if-eqz v10, :cond_16

    const-string/jumbo v0, "\ud83c\udfb0"

    .line 981
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 982
    new-instance v0, Lorg/telegram/ui/Components/SlotsDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/SlotsDrawable;-><init>(Ljava/lang/String;II)V

    goto :goto_a

    .line 984
    :cond_15
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/lang/String;II)V

    :goto_a
    move-object v2, v0

    goto/16 :goto_15

    .line 987
    :cond_16
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 991
    :try_start_2
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-string/jumbo v13, "r"

    invoke-direct {v10, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 993
    :try_start_3
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_17

    .line 994
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_b

    .line 996
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_b
    const/4 v13, 0x0

    .line 998
    :try_start_4
    invoke-virtual {v10, v0, v13, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 999
    aget-byte v8, v0, v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v13, 0x1f

    if-ne v8, v13, :cond_18

    :try_start_5
    aget-byte v0, v0, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v8, -0x75

    if-ne v0, v8, :cond_18

    move v8, v9

    goto :goto_c

    :cond_18
    const/4 v8, 0x0

    .line 1007
    :goto_c
    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1009
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_f

    :catch_1
    move-exception v0

    move v8, v13

    goto :goto_d

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_17

    :catch_3
    move-exception v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 1003
    :goto_d
    :try_start_7
    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_19

    .line 1007
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v8, v0

    .line 1009
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    :goto_e
    const/4 v8, 0x0

    :goto_f
    if-nez v5, :cond_1b

    if-eqz v11, :cond_1a

    goto :goto_10

    :cond_1a
    move v10, v12

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v10, 0x0

    :goto_11
    if-nez v10, :cond_1d

    if-nez v5, :cond_1d

    if-eqz v11, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .line 1018
    :cond_1d
    :goto_12
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    if-nez v5, :cond_1f

    if-nez v11, :cond_1f

    .line 1020
    iget-object v10, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_1e

    const-string v12, "compress"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/16 v10, 0x3c

    .line 1021
    iput v10, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    .line 1023
    :cond_1e
    iget-object v10, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_20

    const-string v12, "flbk"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1024
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    goto :goto_13

    .line 1027
    :cond_1f
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    :cond_20
    :goto_13
    if-eqz v8, :cond_21

    .line 1031
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-static {v9}, Lorg/telegram/messenger/ImageLoader;->decompressGzip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v20

    const/16 v25, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v21, v4

    move/from16 v22, v3

    move-object/from16 v23, v0

    move/from16 v24, v2

    move/from16 v26, v1

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    goto :goto_14

    .line 1033
    :cond_21
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/16 v24, 0x0

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v20, v4

    move/from16 v21, v3

    move-object/from16 v22, v0

    move/from16 v23, v2

    move/from16 v25, v1

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    :goto_14
    move-object v2, v8

    :goto_15
    if-nez v5, :cond_23

    if-eqz v11, :cond_22

    goto :goto_16

    .line 1039
    :cond_22
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 1040
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    :cond_23
    :goto_16
    move-object/from16 v1, p0

    .line 1037
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V

    goto/16 :goto_9a

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v10

    :goto_17
    if-eqz v4, :cond_24

    .line 1007
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 1009
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1012
    :cond_24
    :goto_18
    throw v1

    :cond_25
    const-wide/16 v3, 0x0

    if-ne v2, v8, :cond_47

    if-eqz v1, :cond_26

    .line 1046
    iget-wide v1, v1, Lorg/telegram/messenger/ImageLocation;->videoSeekTo:J

    move-wide/from16 v27, v1

    goto :goto_19

    :cond_26
    move-wide/from16 v27, v3

    .line 1055
    :goto_19
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2d

    const-string v1, "_"

    .line 1056
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1057
    array-length v1, v0

    if-lt v1, v8, :cond_27

    const/4 v1, 0x0

    .line 1058
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1059
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v12

    if-gtz v1, :cond_27

    cmpg-float v1, v2, v12

    if-gtz v1, :cond_27

    .line 1060
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v2, "nolimit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    move v1, v9

    goto :goto_1a

    :cond_27
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1064
    :goto_1b
    array-length v12, v0

    if-ge v2, v12, :cond_2c

    const-string/jumbo v12, "pcache"

    .line 1065
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    move v6, v9

    :cond_28
    const-string v12, "firstframe"

    .line 1068
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    move v5, v9

    :cond_29
    const-string/jumbo v12, "nostream"

    .line 1071
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    move v11, v9

    :cond_2a
    const-string/jumbo v12, "pframe"

    .line 1074
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2b

    move v10, v9

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2c
    if-eqz v5, :cond_2e

    move v11, v9

    goto :goto_1c

    :cond_2d
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_2e
    :goto_1c
    if-eqz v10, :cond_30

    .line 1085
    :try_start_a
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1086
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x2

    .line 1087
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1088
    :try_start_b
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_1e

    :catch_6
    move-exception v0

    goto :goto_1d

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    .line 1090
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1092
    :goto_1e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v1, :cond_2f

    const/4 v2, 0x0

    .line 1094
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 1096
    :cond_2f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_1f
    return-void

    :cond_30
    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    .line 1102
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    .line 1103
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_31

    const-string v10, "compress"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x3c

    .line 1104
    iput v2, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    :cond_31
    move-object/from16 v33, v0

    goto :goto_20

    :cond_32
    const/16 v33, 0x0

    .line 1107
    :goto_20
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "g"

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_33
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v10, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v12, v10, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v12, :cond_3b

    if-nez v6, :cond_3b

    .line 1108
    instance-of v6, v10, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_34

    goto :goto_21

    :cond_34
    const/4 v10, 0x0

    :goto_21
    if-eqz v10, :cond_35

    .line 1109
    iget-wide v12, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    goto :goto_22

    :cond_35
    iget-wide v12, v2, Lorg/telegram/messenger/ImageLocation;->currentSize:J

    .line 1110
    :goto_22
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    if-eqz v11, :cond_36

    move-wide/from16 v21, v3

    goto :goto_23

    :cond_36
    move-wide/from16 v21, v12

    :goto_23
    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v11, :cond_37

    const/16 v24, 0x0

    goto :goto_24

    :cond_37
    move-object/from16 v24, v10

    :goto_24
    if-nez v10, :cond_38

    if-nez v11, :cond_38

    iget-object v11, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v25, v11

    goto :goto_25

    :cond_38
    const/16 v25, 0x0

    :goto_25
    iget-object v11, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v30, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v20, v5

    move/from16 v23, v8

    move-object/from16 v26, v11

    move/from16 v29, v2

    move-object/from16 v31, v33

    invoke-direct/range {v18 .. v31}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 1111
    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_26

    :cond_39
    const/4 v9, 0x0

    :cond_3a
    :goto_26
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    goto/16 :goto_2f

    .line 1116
    :cond_3b
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_3c

    const-string v2, "_"

    .line 1117
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1118
    array-length v2, v0

    if-lt v2, v8, :cond_3c

    const/4 v2, 0x0

    .line 1119
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1120
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1121
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move/from16 v32, v0

    move/from16 v31, v2

    goto :goto_27

    :cond_3c
    const/16 v31, 0x0

    const/16 v32, 0x0

    :goto_27
    if-nez v5, :cond_3e

    .line 1125
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_3d

    const-string v2, "d"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v2, "_d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_28

    :cond_3d
    const/16 v20, 0x0

    goto :goto_29

    :cond_3e
    :goto_28
    move/from16 v20, v9

    :goto_29
    if-eqz v11, :cond_3f

    const/4 v0, 0x0

    goto :goto_2a

    .line 1126
    :cond_3f
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_2a
    if-eqz v0, :cond_40

    move v0, v9

    goto :goto_2b

    :cond_40
    const/4 v0, 0x0

    .line 1128
    :goto_2b
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->cacheType:I

    if-le v2, v9, :cond_41

    move/from16 v34, v2

    goto :goto_2c

    :cond_41
    move/from16 v34, v0

    .line 1131
    :goto_2c
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-wide/16 v21, 0x0

    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v11, :cond_42

    const/16 v24, 0x0

    goto :goto_2d

    :cond_42
    iget-object v10, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v24, v10

    :goto_2d
    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    move/from16 v29, v2

    const/16 v30, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    move/from16 v23, v8

    invoke-direct/range {v18 .. v34}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;I)V

    .line 1132
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_2e

    :cond_43
    const/4 v9, 0x0

    :cond_44
    :goto_2e
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    :goto_2f
    if-eqz v5, :cond_46

    const/4 v2, 0x0

    .line 1135
    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1137
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1138
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v1, :cond_45

    const/4 v2, 0x0

    .line 1140
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    .line 1142
    :cond_45
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    .line 1145
    :cond_46
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setLimitFps(Z)V

    .line 1146
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1147
    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    .line 1156
    :cond_47
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1157
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v2, :cond_49

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".enc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto :goto_30

    :cond_48
    const/4 v13, 0x0

    goto :goto_31

    :cond_49
    :goto_30
    move v13, v9

    .line 1160
    :goto_31
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_4b

    .line 1161
    iget-object v2, v0, Lorg/telegram/messenger/SecureDocument;->secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;

    .line 1162
    iget-object v5, v0, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v5, :cond_4a

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    if-eqz v5, :cond_4a

    goto :goto_32

    .line 1165
    :cond_4a
    iget-object v0, v0, Lorg/telegram/messenger/SecureDocument;->fileHash:[B

    move-object v5, v0

    goto :goto_32

    :cond_4b
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1174
    :goto_32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-ge v0, v10, :cond_4f

    .line 1177
    :try_start_c
    new-instance v10, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v10, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1179
    :try_start_d
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_4c

    .line 1180
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_33

    .line 1182
    :cond_4c
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0

    .line 1184
    :goto_33
    array-length v11, v0

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v11}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1185
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "riff"

    .line 1187
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4d

    const-string/jumbo v11, "webp"

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_4d

    move v11, v9

    goto :goto_34

    :cond_4d
    const/4 v11, 0x0

    .line 1195
    :goto_34
    :try_start_e
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_39

    :catch_8
    move-exception v0

    move-object v10, v0

    .line 1197
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_39

    :catch_9
    move-exception v0

    goto :goto_35

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_36

    :catch_a
    move-exception v0

    const/4 v10, 0x0

    .line 1191
    :goto_35
    :try_start_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v10, :cond_4f

    .line 1195
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_38

    :catch_b
    move-exception v0

    move-object v10, v0

    .line 1197
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_38

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v4, v10

    :goto_36
    if-eqz v4, :cond_4e

    .line 1195
    :try_start_11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_37

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 1197
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1200
    :cond_4e
    :goto_37
    throw v1

    :cond_4f
    :goto_38
    const/4 v11, 0x0

    .line 1204
    :goto_39
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_54

    const-string/jumbo v10, "thumb://"

    .line 1206
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_51

    const-string v10, ":"

    const/16 v12, 0x8

    .line 1207
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_50

    .line 1209
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    add-int/2addr v10, v9

    .line 1211
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    :cond_50
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_3a
    move-object v10, v0

    :goto_3b
    const/4 v14, 0x0

    :goto_3c
    const/4 v15, 0x0

    goto :goto_3e

    :cond_51
    const-string/jumbo v10, "vthumb://"

    .line 1214
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_53

    const-string v10, ":"

    const/16 v12, 0x9

    .line 1215
    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    if-ltz v10, :cond_52

    .line 1217
    invoke-virtual {v0, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move v10, v9

    goto :goto_3d

    :cond_52
    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_3d
    move-object v12, v0

    move v14, v10

    const/4 v10, 0x0

    goto :goto_3c

    :cond_53
    const-string v10, "http"

    .line 1221
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const/4 v10, 0x0

    const/4 v12, 0x0

    goto :goto_3b

    :cond_54
    move v15, v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 1226
    :goto_3e
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1227
    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_55

    .line 1230
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1237
    :cond_55
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Z

    move-result v4

    const/high16 v34, 0x3f800000    # 1.0f

    .line 1239
    :try_start_12
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_6c

    const-string v3, "_"

    .line 1240
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1241
    array-length v3, v0

    if-lt v3, v8, :cond_56

    const/4 v3, 0x0

    .line 1242
    aget-object v21, v0, v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sget v21, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    mul-float v3, v3, v21

    .line 1243
    :try_start_13
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v21, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    mul-float v0, v0, v21

    move/from16 v21, v3

    move v3, v0

    goto :goto_3f

    :catchall_5
    move-exception v0

    move/from16 v21, v3

    move/from16 v26, v14

    move/from16 v35, v15

    const/4 v3, 0x0

    goto/16 :goto_4e

    :cond_56
    const/4 v3, 0x0

    const/16 v21, 0x0

    .line 1245
    :goto_3f
    :try_start_14
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b2r"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v8, 0x4

    goto :goto_40

    .line 1247
    :cond_57
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v8, 0x3

    goto :goto_40

    .line 1249
    :cond_58
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_59

    const/4 v8, 0x2

    goto :goto_40

    .line 1251
    :cond_59
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-eqz v0, :cond_5a

    move v8, v9

    goto :goto_40

    :cond_5a
    const/4 v8, 0x0

    .line 1254
    :goto_40
    :try_start_15
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v9, "i"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    .line 1257
    :try_start_16
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move/from16 v23, v8

    :try_start_17
    const-string v8, "f"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v4, 0x1

    goto :goto_41

    .line 1259
    :cond_5b
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "F"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    if-eqz v0, :cond_5c

    const/4 v4, 0x0

    :cond_5c
    :goto_41
    if-nez v11, :cond_6b

    const/4 v8, 0x0

    cmpl-float v0, v21, v8

    if-eqz v0, :cond_6b

    cmpl-float v0, v3, v8

    if-eqz v0, :cond_6b

    const/4 v8, 0x1

    .line 1263
    :try_start_18
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v12, :cond_5e

    if-nez v10, :cond_5e

    if-eqz v14, :cond_5d

    .line 1267
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move/from16 v24, v9

    :try_start_19
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move/from16 v25, v4

    const/4 v4, 0x1

    :try_start_1a
    invoke-static {v0, v8, v9, v4, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_42

    :catchall_6
    move-exception v0

    move/from16 v25, v4

    goto/16 :goto_4c

    :cond_5d
    move/from16 v25, v4

    move/from16 v24, v9

    .line 1269
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v0, v8, v9, v4, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_42
    move/from16 v26, v14

    move/from16 v35, v15

    goto/16 :goto_48

    :cond_5e
    move/from16 v25, v4

    move/from16 v24, v9

    if-eqz v2, :cond_63

    .line 1273
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v4, v8

    .line 1275
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    if-eqz v8, :cond_5f

    .line 1276
    array-length v9, v8

    if-lt v9, v4, :cond_5f

    goto :goto_43

    :cond_5f
    const/4 v8, 0x0

    :goto_43
    if-nez v8, :cond_60

    .line 1278
    new-array v8, v4, [B

    .line 1279
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_60
    const/4 v9, 0x0

    .line 1281
    invoke-virtual {v0, v8, v9, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1282
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1283
    invoke-static {v8, v9, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    move/from16 v26, v14

    move/from16 v35, v15

    int-to-long v14, v4

    .line 1284
    :try_start_1b
    invoke-static {v8, v9, v14, v15}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_62

    .line 1286
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_44

    :cond_61
    const/4 v0, 0x0

    goto :goto_45

    :cond_62
    :goto_44
    const/4 v0, 0x1

    :goto_45
    const/4 v9, 0x0

    .line 1289
    aget-byte v14, v8, v9

    and-int/lit16 v9, v14, 0xff

    sub-int/2addr v4, v9

    if-nez v0, :cond_65

    .line 1292
    invoke-static {v8, v9, v4, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_48

    :catchall_7
    move-exception v0

    move/from16 v26, v14

    move/from16 v35, v15

    :goto_46
    move/from16 v4, v25

    goto/16 :goto_4d

    :cond_63
    move/from16 v26, v14

    move/from16 v35, v15

    if-eqz v13, :cond_64

    .line 1297
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v4, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_47

    .line 1299
    :cond_64
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_47
    const/4 v4, 0x0

    .line 1301
    invoke-static {v0, v4, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1302
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1306
    :cond_65
    :goto_48
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 1307
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    cmpl-float v8, v21, v3

    if-ltz v8, :cond_66

    cmpl-float v8, v0, v4

    if-lez v8, :cond_66

    div-float v8, v0, v21

    div-float v9, v4, v3

    .line 1310
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_49

    :cond_66
    div-float v8, v0, v21

    div-float v9, v4, v3

    .line 1312
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :goto_49
    const v9, 0x3f99999a    # 1.2f

    cmpg-float v14, v8, v9

    if-gez v14, :cond_67

    move/from16 v8, v34

    :cond_67
    const/4 v9, 0x0

    .line 1317
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    cmpl-float v9, v8, v34

    if-lez v9, :cond_6a

    cmpl-float v0, v0, v21

    if-gtz v0, :cond_68

    cmpl-float v0, v4, v3

    if-lez v0, :cond_6a

    :cond_68
    const/4 v0, 0x1

    :cond_69
    const/4 v4, 0x2

    mul-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_69

    .line 1323
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4a

    :cond_6a
    float-to-int v0, v8

    .line 1325
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    goto :goto_4a

    :catchall_8
    move-exception v0

    goto :goto_46

    :catchall_9
    move-exception v0

    move/from16 v25, v4

    goto :goto_4b

    :cond_6b
    move/from16 v25, v4

    move/from16 v24, v9

    move/from16 v26, v14

    move/from16 v35, v15

    :goto_4a
    move/from16 v4, v25

    const/4 v8, 0x0

    goto/16 :goto_52

    :catchall_a
    move-exception v0

    goto :goto_4b

    :catchall_b
    move-exception v0

    move/from16 v23, v8

    :goto_4b
    move/from16 v24, v9

    :goto_4c
    move/from16 v26, v14

    move/from16 v35, v15

    :goto_4d
    const/4 v8, 0x0

    goto/16 :goto_57

    :catchall_c
    move-exception v0

    move/from16 v23, v8

    move/from16 v26, v14

    move/from16 v35, v15

    const/4 v8, 0x0

    goto/16 :goto_56

    :catchall_d
    move-exception v0

    move/from16 v26, v14

    move/from16 v35, v15

    :goto_4e
    const/4 v8, 0x0

    goto/16 :goto_55

    :cond_6c
    move/from16 v26, v14

    move/from16 v35, v15

    if-eqz v10, :cond_71

    const/4 v3, 0x1

    .line 1329
    :try_start_1c
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_6d

    .line 1330
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_4f

    :cond_6d
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_4f
    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1331
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1332
    invoke-static {v0, v3, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    .line 1333
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1334
    iget v0, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1335
    iget v3, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, 0x0

    .line 1336
    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v9, 0x42

    .line 1337
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

    .line 1338
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v0, v3

    cmpg-float v3, v0, v34

    if-gez v3, :cond_6e

    move/from16 v0, v34

    :cond_6e
    cmpl-float v3, v0, v34

    if-lez v3, :cond_70

    const/4 v3, 0x1

    :cond_6f
    const/4 v9, 0x2

    mul-int/2addr v3, v9

    mul-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    cmpg-float v9, v9, v0

    if-lez v9, :cond_6f

    .line 1347
    iput v3, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_50

    :cond_70
    float-to-int v0, v0

    .line 1349
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    :goto_50
    const/4 v3, 0x0

    goto :goto_51

    :catchall_e
    move-exception v0

    const/4 v3, 0x0

    goto :goto_54

    :catchall_f
    move-exception v0

    goto :goto_53

    :cond_71
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_51
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_52
    move/from16 v9, v21

    move/from16 v15, v23

    move/from16 v36, v24

    const/4 v14, 0x1

    goto :goto_58

    :catchall_10
    move-exception v0

    move/from16 v26, v14

    move/from16 v35, v15

    :goto_53
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_54
    const/16 v21, 0x0

    :goto_55
    const/16 v23, 0x0

    :goto_56
    const/16 v24, 0x0

    .line 1354
    :goto_57
    instance-of v9, v0, Ljava/io/FileNotFoundException;

    const/4 v14, 0x1

    xor-int/2addr v9, v14

    .line 1357
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    move/from16 v9, v21

    move/from16 v15, v23

    move/from16 v36, v24

    .line 1360
    :goto_58
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v14, :cond_91

    .line 1362
    :try_start_1e
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1363
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    .line 1364
    :try_start_1f
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_72

    .line 1365
    monitor-exit v3

    return-void

    .line 1367
    :cond_72
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    if-eqz v11, :cond_74

    .line 1370
    :try_start_20
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v23

    sget-object v24, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v25, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-virtual/range {v23 .. v28}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1373
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 1374
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1375
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v10, v2, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1376
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1378
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v4, :cond_73

    const/4 v4, 0x1

    goto :goto_59

    :cond_73
    const/4 v4, 0x0

    :goto_59
    const/4 v5, 0x0

    invoke-static {v8, v2, v3, v5, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1379
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_60

    .line 1381
    :cond_74
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v0, :cond_77

    if-eqz v2, :cond_75

    goto :goto_5b

    :cond_75
    if-eqz v13, :cond_76

    .line 1411
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_5a

    .line 1413
    :cond_76
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_5a
    const/4 v2, 0x0

    .line 1415
    invoke-static {v0, v2, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1416
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_60

    .line 1382
    :cond_77
    :goto_5b
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1385
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_78

    .line 1386
    array-length v10, v4

    if-lt v10, v3, :cond_78

    goto :goto_5c

    :cond_78
    const/4 v4, 0x0

    :goto_5c
    if-nez v4, :cond_79

    .line 1388
    new-array v4, v3, [B

    .line 1389
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_79
    const/4 v10, 0x0

    .line 1391
    invoke-virtual {v0, v4, v10, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1392
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_7c

    .line 1395
    invoke-static {v4, v10, v3, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V

    int-to-long v11, v3

    .line 1396
    invoke-static {v4, v10, v11, v12}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_7b

    .line 1397
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_5d

    :cond_7a
    const/4 v0, 0x0

    goto :goto_5e

    :cond_7b
    :goto_5d
    const/4 v0, 0x1

    :goto_5e
    const/4 v2, 0x0

    .line 1400
    aget-byte v5, v4, v2

    and-int/lit16 v2, v5, 0xff

    sub-int/2addr v3, v2

    goto :goto_5f

    :cond_7c
    if-eqz v13, :cond_7d

    .line 1403
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_7d
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_5f
    if-nez v0, :cond_7e

    .line 1406
    invoke-static {v4, v2, v3, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_7e
    :goto_60
    if-nez v8, :cond_81

    .line 1421
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7f

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_80

    .line 1422
    :cond_7f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_80
    const/4 v2, 0x0

    goto/16 :goto_6b

    .line 1425
    :cond_81
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 1426
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1427
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1428
    iget-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v3, :cond_82

    const/4 v3, 0x0

    cmpl-float v4, v9, v3

    if-eqz v4, :cond_82

    cmpl-float v3, v0, v9

    if-eqz v3, :cond_82

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v3, v9

    cmpl-float v3, v0, v3

    if-lez v3, :cond_82

    div-float/2addr v0, v9

    float-to-int v3, v9

    div-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x1

    .line 1430
    invoke-static {v8, v3, v0, v2}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v8, v0, :cond_82

    .line 1432
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    :cond_82
    if-eqz v36, :cond_85

    .line 1438
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_83

    const/4 v0, 0x0

    goto :goto_61

    :cond_83
    const/4 v0, 0x1

    :goto_61
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v4

    invoke-static {v8, v0, v2, v3, v4}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_13

    if-eqz v0, :cond_84

    const/4 v0, 0x1

    goto :goto_62

    :cond_84
    const/4 v0, 0x0

    :goto_62
    move v2, v0

    goto :goto_63

    :cond_85
    const/4 v2, 0x0

    :goto_63
    const/4 v3, 0x1

    if-ne v15, v3, :cond_87

    .line 1441
    :try_start_21
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_90

    const/16 v24, 0x3

    .line 1442
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_86

    const/16 v25, 0x0

    goto :goto_64

    :cond_86
    const/16 v25, 0x1

    :goto_64
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v28

    move-object/from16 v23, v8

    invoke-static/range {v23 .. v28}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6b

    :catchall_11
    move-exception v0

    goto/16 :goto_6a

    :cond_87
    const/4 v3, 0x2

    if-ne v15, v3, :cond_89

    .line 1445
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_90

    const/16 v24, 0x1

    .line 1446
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_88

    const/16 v25, 0x0

    goto :goto_65

    :cond_88
    const/16 v25, 0x1

    :goto_65
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v28

    move-object/from16 v23, v8

    invoke-static/range {v23 .. v28}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6b

    :cond_89
    const/4 v3, 0x3

    if-eq v15, v3, :cond_8b

    const/4 v3, 0x4

    if-ne v15, v3, :cond_8a

    goto :goto_66

    :cond_8a
    if-nez v15, :cond_90

    .line 1469
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_90

    .line 1470
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I

    goto/16 :goto_6b

    .line 1449
    :cond_8b
    :goto_66
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_90

    const/4 v3, 0x4

    if-ne v15, v3, :cond_8c

    .line 1451
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1452
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1453
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1455
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    const v10, 0x3f99999a    # 1.2f

    invoke-virtual {v3, v10, v10, v4, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1456
    invoke-virtual {v3, v8, v4, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1457
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1458
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1459
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v9, v10, v11, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1460
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1461
    invoke-virtual {v3, v8, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1462
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    :cond_8c
    const/16 v19, 0x7

    .line 1465
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_8d

    const/16 v20, 0x0

    goto :goto_67

    :cond_8d
    const/16 v20, 0x1

    :goto_67
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    move-object/from16 v18, v8

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v19, 0x7

    .line 1466
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_8e

    const/16 v20, 0x0

    goto :goto_68

    :cond_8e
    const/16 v20, 0x1

    :goto_68
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    move-object/from16 v18, v8

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v19, 0x7

    .line 1467
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_8f

    const/16 v20, 0x0

    goto :goto_69

    :cond_8f
    const/16 v20, 0x1

    :goto_69
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    move-object/from16 v18, v8

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    goto :goto_6b

    :catchall_12
    move-exception v0

    .line 1367
    :try_start_22
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    :catchall_13
    move-exception v0

    const/4 v2, 0x0

    .line 1474
    :goto_6a
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_90
    :goto_6b
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_91

    :cond_91
    const/16 v0, 0x14

    if-eqz v12, :cond_92

    const/4 v0, 0x0

    :cond_92
    if-eqz v0, :cond_94

    .line 1482
    :try_start_24
    iget-object v14, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v14}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v14, v20, v22

    if-eqz v14, :cond_94

    iget-object v14, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v14}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    move-object/from16 v17, v8

    move v14, v9

    int-to-long v8, v0

    sub-long v22, v22, v8

    cmp-long v0, v20, v22

    if-lez v0, :cond_93

    :try_start_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v37, v3

    const/16 v3, 0x15

    if-ge v0, v3, :cond_95

    .line 1483
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_14

    goto :goto_6d

    :catchall_14
    move-exception v0

    move-object/from16 v8, v17

    goto :goto_6c

    :cond_93
    move/from16 v37, v3

    goto :goto_6d

    :catchall_15
    move-exception v0

    move-object/from16 v17, v8

    :goto_6c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_8e

    :cond_94
    move/from16 v37, v3

    move-object/from16 v17, v8

    move v14, v9

    .line 1485
    :cond_95
    :goto_6d
    :try_start_26
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1486
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_26

    .line 1487
    :try_start_27
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_96

    .line 1488
    monitor-exit v3

    return-void

    .line 1490
    :cond_96
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_23

    if-nez v4, :cond_98

    .line 1492
    :try_start_28
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_98

    if-nez v15, :cond_98

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_97

    goto :goto_6e

    .line 1495
    :cond_97
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_14

    goto :goto_6f

    .line 1493
    :cond_98
    :goto_6e
    :try_start_29
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_6f
    const/4 v3, 0x0

    .line 1498
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_26

    if-eqz v12, :cond_9b

    if-nez v10, :cond_9b

    if-eqz v26, :cond_9a

    .line 1501
    :try_start_2a
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-nez v0, :cond_99

    .line 1502
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v20, 0x1

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-direct/range {v18 .. v31}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    const-wide/16 v3, 0x0

    const/4 v8, 0x1

    .line 1503
    invoke-virtual {v0, v3, v4, v8}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_14

    .line 1504
    :try_start_2b
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_16

    move-object v8, v9

    goto :goto_71

    :catchall_16
    move-exception v0

    move-object v8, v9

    goto :goto_6c

    .line 1506
    :cond_99
    :try_start_2c
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v8, 0x1

    invoke-static {v0, v3, v4, v8, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_70

    .line 1509
    :cond_9a
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v8, 0x1

    invoke-static {v0, v3, v4, v8, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_14

    :goto_70
    move-object v8, v0

    goto :goto_71

    :cond_9b
    move-object/from16 v8, v17

    :goto_71
    if-nez v8, :cond_ae

    if-eqz v11, :cond_9d

    if-nez v2, :cond_9d

    .line 1514
    :try_start_2d
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v18

    sget-object v19, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v20, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v22

    invoke-virtual/range {v18 .. v23}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1517
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 1518
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1519
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_19

    const/4 v9, 0x0

    :try_start_2e
    invoke-static {v9, v2, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    .line 1520
    :try_start_2f
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1522
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_19

    if-nez v4, :cond_9c

    const/4 v4, 0x1

    goto :goto_72

    :cond_9c
    const/4 v4, 0x0

    :goto_72
    const/4 v5, 0x0

    :try_start_30
    invoke-static {v8, v2, v3, v5, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_17

    .line 1523
    :try_start_31
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v4, 0x0

    const/4 v9, 0x0

    goto/16 :goto_80

    :catchall_17
    move-exception v0

    move-object v9, v5

    goto/16 :goto_8c

    :catchall_18
    move-exception v0

    goto/16 :goto_8c

    :catchall_19
    move-exception v0

    goto/16 :goto_6c

    :cond_9d
    if-nez v8, :cond_a6

    if-eqz v2, :cond_9e

    .line 1528
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    goto :goto_73

    :cond_9e
    if-eqz v13, :cond_9f

    .line 1530
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    goto :goto_73

    .line 1532
    :cond_9f
    :try_start_32
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1534
    :goto_73
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1e

    if-nez v4, :cond_a2

    :try_start_33
    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_a0

    const-string v4, "exif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    if-eqz v3, :cond_a0

    goto :goto_75

    :cond_a0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_a1
    :goto_74
    const/4 v9, 0x0

    goto :goto_77

    .line 1535
    :cond_a2
    :goto_75
    :try_start_34
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3

    .line 1536
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1e

    .line 1537
    :try_start_35
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    if-nez v2, :cond_a4

    .line 1538
    :try_start_36
    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v9, :cond_a3

    goto :goto_76

    .line 1546
    :cond_a3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    goto :goto_74

    :catchall_1a
    move-exception v0

    move/from16 v16, v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_8f

    .line 1539
    :cond_a4
    :goto_76
    :try_start_37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1c

    if-eqz v2, :cond_a5

    .line 1541
    :try_start_38
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    goto :goto_74

    :cond_a5
    if-eqz v13, :cond_a1

    .line 1543
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v9}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1a

    goto :goto_74

    .line 1549
    :goto_77
    :try_start_39
    invoke-static {v0, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1550
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1b

    goto :goto_79

    :catchall_1b
    move-exception v0

    :goto_78
    move/from16 v16, v3

    goto/16 :goto_89

    :catchall_1c
    move-exception v0

    const/4 v9, 0x0

    goto :goto_78

    :catchall_1d
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_8d

    :catchall_1e
    move-exception v0

    const/4 v9, 0x0

    goto/16 :goto_8c

    :cond_a6
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_79
    if-nez v8, :cond_ad

    .line 1555
    :try_start_3a
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v10, "r"

    invoke-direct {v0, v1, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v10, v10

    .line 1558
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    if-eqz v11, :cond_a7

    .line 1559
    array-length v12, v11

    if-lt v12, v10, :cond_a7

    goto :goto_7a

    :cond_a7
    move-object v11, v9

    :goto_7a
    if-nez v11, :cond_a8

    .line 1561
    new-array v11, v10, [B

    .line 1562
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_a8
    const/4 v12, 0x0

    .line 1564
    invoke-virtual {v0, v11, v12, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1565
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_ab

    .line 1568
    invoke-static {v11, v12, v10, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_20

    move/from16 v16, v3

    int-to-long v2, v10

    .line 1569
    :try_start_3b
    invoke-static {v11, v12, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_aa

    .line 1570
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_7b

    :cond_a9
    const/4 v0, 0x0

    goto :goto_7c

    :cond_aa
    :goto_7b
    const/4 v0, 0x1

    :goto_7c
    const/4 v2, 0x0

    .line 1573
    aget-byte v3, v11, v2

    and-int/lit16 v2, v3, 0xff

    sub-int/2addr v10, v2

    goto :goto_7e

    :cond_ab
    move/from16 v16, v3

    if-eqz v13, :cond_ac

    .line 1576
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v11, v2, v10, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    goto :goto_7d

    :catchall_1f
    move-exception v0

    goto :goto_7f

    :cond_ac
    :goto_7d
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_7e
    if-nez v0, :cond_af

    .line 1579
    invoke-static {v11, v2, v10, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1f

    goto :goto_81

    :catchall_20
    move-exception v0

    move/from16 v16, v3

    .line 1582
    :goto_7f
    :try_start_3c
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_81

    :cond_ad
    move/from16 v16, v3

    goto :goto_81

    :cond_ae
    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_80
    const/16 v16, 0x0

    :cond_af
    :goto_81
    if-nez v8, :cond_b2

    if-eqz v35, :cond_b1

    .line 1588
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_b0

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_b1

    .line 1589
    :cond_b0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_b1
    const/4 v5, 0x0

    goto/16 :goto_90

    .line 1593
    :cond_b2
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 1594
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1595
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1596
    iget-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v3, :cond_b5

    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-eqz v3, :cond_b5

    cmpl-float v3, v0, v14

    if-eqz v3, :cond_b5

    const/high16 v3, 0x41a00000    # 20.0f

    add-float/2addr v3, v14

    cmpl-float v3, v0, v3

    if-lez v3, :cond_b5

    cmpl-float v3, v0, v2

    if-lez v3, :cond_b3

    cmpl-float v3, v14, v37

    if-lez v3, :cond_b3

    div-float v3, v0, v14

    cmpl-float v5, v3, v34

    if-lez v5, :cond_b4

    float-to-int v5, v14

    div-float v3, v2, v3

    float-to-int v3, v3

    const/4 v10, 0x1

    .line 1601
    invoke-static {v8, v5, v3, v10}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_82

    :cond_b3
    div-float v3, v2, v37

    cmpl-float v5, v3, v34

    if-lez v5, :cond_b4

    div-float v3, v0, v3

    float-to-int v3, v3

    move/from16 v5, v37

    float-to-int v5, v5

    const/4 v10, 0x1

    .line 1608
    invoke-static {v8, v3, v5, v10}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_82

    :cond_b4
    move-object v3, v8

    :goto_82
    if-eq v8, v3, :cond_b5

    .line 1614
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v3

    :cond_b5
    if-eqz v8, :cond_c0

    if-eqz v36, :cond_b9

    .line 1621
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1622
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v3, v5

    const/16 v5, 0x57e4

    if-le v3, v5, :cond_b6

    const/16 v3, 0x64

    const/16 v5, 0x64

    const/4 v10, 0x0

    .line 1624
    invoke-static {v8, v3, v5, v10}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_83

    :cond_b6
    move-object v3, v8

    .line 1626
    :goto_83
    iget-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_b7

    const/4 v5, 0x0

    goto :goto_84

    :cond_b7
    const/4 v5, 0x1

    :goto_84
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    invoke-static {v3, v5, v10, v11, v12}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v5
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_22

    if-eqz v5, :cond_b8

    const/4 v5, 0x1

    goto :goto_85

    :cond_b8
    const/4 v5, 0x0

    :goto_85
    if-eq v3, v8, :cond_ba

    .line 1628
    :try_start_3d
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_86

    :cond_b9
    const/4 v5, 0x0

    :cond_ba
    :goto_86
    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v15, :cond_bc

    cmpl-float v10, v2, v3

    if-gtz v10, :cond_bb

    cmpl-float v10, v0, v3

    if-lez v10, :cond_bc

    :cond_bb
    const/16 v0, 0x50

    const/16 v2, 0x50

    const/4 v10, 0x0

    .line 1632
    invoke-static {v8, v0, v2, v10}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v8, 0x42a00000    # 80.0f

    move/from16 v38, v8

    move-object v8, v0

    move/from16 v0, v38

    :cond_bc
    if-eqz v15, :cond_bf

    cmpg-float v2, v2, v3

    if-gez v2, :cond_bf

    cmpg-float v0, v0, v3

    if-gez v0, :cond_bf

    .line 1637
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_be

    const/16 v19, 0x3

    .line 1638
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_bd

    const/16 v20, 0x0

    goto :goto_87

    :cond_bd
    const/16 v20, 0x1

    :goto_87
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    move-object/from16 v18, v8

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_be
    const/4 v0, 0x1

    goto :goto_88

    :cond_bf
    const/4 v0, 0x0

    goto :goto_88

    :cond_c0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_88
    if-nez v0, :cond_c1

    .line 1644
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_c1

    .line 1645
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_21

    goto :goto_90

    :catchall_21
    move-exception v0

    goto :goto_8f

    :catchall_22
    move-exception v0

    :goto_89
    const/4 v5, 0x0

    goto :goto_8f

    :catchall_23
    move-exception v0

    const/4 v9, 0x0

    .line 1490
    :goto_8a
    :try_start_3e
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_25

    :try_start_3f
    throw v0
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_24

    :catchall_24
    move-exception v0

    goto :goto_8b

    :catchall_25
    move-exception v0

    goto :goto_8a

    :catchall_26
    move-exception v0

    const/4 v9, 0x0

    :goto_8b
    move-object/from16 v8, v17

    :goto_8c
    const/4 v4, 0x0

    :goto_8d
    const/4 v5, 0x0

    :goto_8e
    const/16 v16, 0x0

    .line 1649
    :goto_8f
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_c1
    :goto_90
    move v2, v5

    move/from16 v0, v16

    .line 1652
    :goto_91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1653
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_c3

    if-eqz v13, :cond_c3

    .line 1654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image Loader image is empty = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_c2

    const/4 v5, 0x1

    goto :goto_92

    :cond_c2
    const/4 v5, 0x0

    :goto_92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_c3
    if-eqz v8, :cond_c4

    .line 1656
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c4

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c4

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v3, :cond_c4

    .line 1657
    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v7, v8, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1659
    :cond_c4
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v1, :cond_c5

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v1, :cond_c5

    const-string v3, "ignoreOrientation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c6

    :cond_c5
    if-nez v2, :cond_c8

    if-nez v4, :cond_c8

    if-eqz v0, :cond_c6

    goto :goto_94

    :cond_c6
    if-eqz v8, :cond_c7

    .line 1662
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_93

    :cond_c7
    move-object v4, v9

    :goto_93
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    :cond_c8
    :goto_94
    if-eqz v8, :cond_c9

    .line 1660
    new-instance v1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-direct {v1, v8, v4, v0}, Lorg/telegram/messenger/ExtendedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    move-object v4, v1

    goto :goto_95

    :cond_c9
    move-object v4, v9

    :goto_95
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9a

    :cond_ca
    :goto_96
    const/4 v9, 0x0

    .line 891
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 892
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 893
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_cb

    const-string v3, "_"

    .line 894
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 895
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_cb

    const/4 v3, 0x0

    .line 896
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x1

    .line 897
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 898
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_97

    :cond_cb
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 904
    :goto_97
    :try_start_40
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v5, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_cc

    move v3, v4

    :cond_cc
    invoke-static {v5, v2, v1, v3}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_27

    goto :goto_98

    :catchall_27
    move-exception v0

    .line 906
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v2, v9

    :goto_98
    if-eqz v2, :cond_cd

    .line 908
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v1, :cond_cd

    .line 909
    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v7, v2, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_cd
    if-eqz v2, :cond_ce

    .line 911
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_99

    :cond_ce
    move-object v4, v9

    :goto_99
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_9a
    return-void

    :catchall_28
    move-exception v0

    .line 876
    :try_start_41
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_28

    throw v0
.end method
