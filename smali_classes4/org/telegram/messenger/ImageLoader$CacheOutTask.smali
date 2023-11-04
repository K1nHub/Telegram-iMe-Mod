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

    .line 860
    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    .line 861
    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/ImageLoader$CacheOutTask;)Lorg/telegram/messenger/ImageLoader$CacheImage;
    .locals 0

    .line 853
    iget-object p0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    return-object p0
.end method

.method private applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;
    .locals 11

    .line 1642
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1648
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1649
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1653
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xff

    if-nez v3, :cond_1

    .line 1654
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPatternColor(I)I

    move-result v2

    .line 1655
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 1656
    :cond_1
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    if-nez v3, :cond_2

    .line 1657
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1658
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1659
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->getAverageColor(II)I

    move-result v7

    .line 1660
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    iget-object v9, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->rotation:I

    invoke-static {v9}, Lorg/telegram/ui/Components/BackgroundGradientDrawable;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v9

    new-array v10, v4, [I

    aput v2, v10, v6

    aput v3, v10, v5

    invoke-direct {v8, v9, v10}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1661
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v8, v6, v6, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1662
    invoke-virtual {v8, v1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    move v2, v7

    goto :goto_1

    .line 1664
    :cond_2
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->background_color:I

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 1665
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->second_background_color:I

    invoke-static {v3, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 1666
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->third_background_color:I

    invoke-static {v5, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    .line 1667
    iget-object v8, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->fourth_background_color:I

    if-nez v8, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    invoke-static {v8, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    .line 1668
    :goto_0
    invoke-static {v2, v3, v5, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor(IIII)I

    move-result v8

    .line 1669
    new-instance v9, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 1670
    invoke-virtual {v9, v2, v3, v5, v7}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIII)V

    .line 1671
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v9, v6, v6, v2, v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setBounds(IIII)V

    .line 1672
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v9, v2, p1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 1673
    invoke-virtual {v9, v1}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    move v5, v6

    move v2, v8

    :goto_1
    if-eqz v5, :cond_4

    .line 1678
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 1679
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1680
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

    .line 1681
    invoke-virtual {v1, p1, p2, p2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    return-object v0

    .line 1643
    :cond_5
    :goto_2
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz p2, :cond_6

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->blur:Z

    if-eqz p2, :cond_6

    .line 1644
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->blurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_6
    return-object p1
.end method

.method private synthetic lambda$onPostExecute$0(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    .line 1780
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/ImageLoader$CacheImage;->setImageAndClear(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$1(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 1727
    instance-of v0, p1, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1728
    check-cast p1, Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1729
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/LruCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1731
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1734
    :cond_0
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 1737
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1738
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto :goto_2

    .line 1740
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_4

    .line 1741
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1742
    iget-boolean v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isWebmSticker:Z

    if-eqz v1, :cond_3

    .line 1743
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/ImageLoader;->access$2500(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1745
    iget-object p1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->access$2400(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_1

    .line 1748
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1750
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    :cond_3
    :goto_2
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto/16 :goto_6

    .line 1755
    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_8

    .line 1756
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1757
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFromMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_7

    .line 1760
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2600(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1763
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

    .line 1764
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2700(Lorg/telegram/messenger/ImageLoader;)Lorg/telegram/messenger/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/LruCache;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1766
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

    .line 1770
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1771
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_5
    if-eqz p1, :cond_3

    if-eqz v3, :cond_3

    .line 1774
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->key:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    move-object p1, v2

    .line 1780
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

    .line 1690
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1691
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    div-float/2addr v1, v0

    div-float/2addr v4, v0

    .line 1692
    invoke-virtual {v3, v0, v0, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 1694
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1695
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1698
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->prepareForGenerateCache()V

    .line 1699
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

    .line 1700
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v6

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/RLottieDrawable;->setGeneratingFrame(I)V

    .line 1701
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getNextFrame(Landroid/graphics/Bitmap;)I

    .line 1702
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->releaseForGenerateCache()V

    .line 1703
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    if-eqz p4, :cond_2

    if-nez p5, :cond_3

    .line 1705
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

    .line 1707
    :cond_3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1708
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_4

    .line 1711
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

    .line 1712
    new-instance p2, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;

    invoke-direct {p2, v2}, Lorg/telegram/messenger/ImageReceiver$ReactionLastFrame;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    .line 1714
    invoke-virtual {v3, v1, p3, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1715
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1718
    :goto_2
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/RLottieDrawable;->recycle(Z)V

    .line 1719
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1720
    invoke-direct {p0, p2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1724
    new-instance v0, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ImageLoader$CacheOutTask;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1785
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1787
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    .line 1788
    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 1789
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1794
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
    .locals 38

    move-object/from16 v7, p0

    .line 866
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->runningThread:Ljava/lang/Thread;

    .line 868
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 869
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 870
    monitor-exit v1

    return-void

    .line 872
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_22

    .line 874
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v1, Lorg/telegram/messenger/ImageLocation;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    if-eqz v3, :cond_2

    .line 875
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_photoStrippedSize;

    .line 876
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    const-string v1, "b"

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLoader;->getStrippedPhotoBitmap([BLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    .line 878
    :cond_2
    iget v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 881
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

    .line 883
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    .line 885
    :goto_1
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    :cond_3
    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v2, v6, :cond_c4

    if-ne v2, v5, :cond_4

    goto/16 :goto_8f

    :cond_4
    const/high16 v12, 0x42b40000    # 90.0f

    if-ne v2, v9, :cond_25

    const v0, 0x432a999a    # 170.6f

    .line 909
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/16 v2, 0x200

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 910
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 920
    iget-object v13, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v13, v13, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v13, :cond_14

    const-string v14, "_"

    .line 921
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 922
    array-length v14, v13

    if-lt v14, v8, :cond_b

    .line 923
    aget-object v0, v13, v10

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 924
    aget-object v1, v13, v9

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 925
    sget v14, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v14, v0

    float-to-int v14, v14

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 926
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v15, v1

    float-to-int v15, v15

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    cmpg-float v0, v0, v12

    if-gtz v0, :cond_5

    cmpg-float v0, v1, v12

    if-gtz v0, :cond_5

    .line 927
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v1, "nolimit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0xa0

    .line 928
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 929
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v9

    goto :goto_2

    :cond_5
    move v0, v2

    move v2, v10

    move v1, v14

    .line 932
    :goto_2
    array-length v12, v13

    if-lt v12, v6, :cond_7

    const-string/jumbo v12, "pcache"

    aget-object v14, v13, v8

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    :goto_3
    move v12, v9

    goto :goto_4

    .line 935
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

    .line 938
    :goto_4
    iget-object v14, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v14, v14, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v15, "lastframe"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 941
    iget-object v15, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v15, v15, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v4, "lastreactframe"

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v14, v9

    .line 945
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

    .line 951
    :goto_5
    array-length v15, v13

    if-lt v15, v6, :cond_e

    const-string/jumbo v15, "nr"

    .line 952
    aget-object v10, v13, v8

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v15, v8

    goto :goto_6

    :cond_c
    const-string/jumbo v10, "nrs"

    .line 954
    aget-object v15, v13, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v15, v6

    goto :goto_6

    :cond_d
    const-string v10, "dice"

    .line 956
    aget-object v15, v13, v8

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 957
    aget-object v10, v13, v6

    move v15, v8

    goto :goto_7

    :cond_e
    move v15, v9

    :goto_6
    const/4 v10, 0x0

    .line 961
    :goto_7
    array-length v6, v13

    if-lt v6, v3, :cond_13

    const-string v6, "c1"

    .line 962
    aget-object v3, v13, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 964
    aget-object v6, v13, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 966
    aget-object v6, v13, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v0

    move v6, v4

    move v4, v1

    move v1, v5

    move v5, v14

    goto :goto_9

    :cond_11
    const-string v3, "c4"

    .line 968
    aget-object v6, v13, v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 970
    aget-object v5, v13, v5

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

    .line 977
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 978
    new-instance v0, Lorg/telegram/ui/Components/SlotsDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/SlotsDrawable;-><init>(Ljava/lang/String;II)V

    goto :goto_a

    .line 980
    :cond_15
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {v0, v10, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/lang/String;II)V

    :goto_a
    move-object v2, v0

    goto/16 :goto_15

    .line 983
    :cond_16
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 987
    :try_start_2
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-string/jumbo v13, "r"

    invoke-direct {v10, v0, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 989
    :try_start_3
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_17

    .line 990
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_b

    .line 992
    :cond_17
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_b
    const/4 v13, 0x0

    .line 994
    :try_start_4
    invoke-virtual {v10, v0, v13, v8}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 995
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

    .line 1003
    :goto_c
    :try_start_6
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1005
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

    .line 999
    :goto_d
    :try_start_7
    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_19

    .line 1003
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_e

    :catch_4
    move-exception v0

    move-object v8, v0

    .line 1005
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

    .line 1014
    :cond_1d
    :goto_12
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    if-nez v5, :cond_1f

    if-nez v11, :cond_1f

    .line 1016
    iget-object v10, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_1e

    const-string v12, "compress"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/16 v10, 0x3c

    .line 1017
    iput v10, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    .line 1019
    :cond_1e
    iget-object v10, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v10, :cond_20

    const-string v12, "flbk"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1020
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->fallback:Z

    goto :goto_13

    .line 1023
    :cond_1f
    iput-boolean v9, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->firstFrame:Z

    :cond_20
    :goto_13
    if-eqz v8, :cond_21

    .line 1027
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-static {v9}, Lorg/telegram/messenger/ImageLoader;->decompressGzip(Ljava/io/File;)Ljava/lang/String;

    move-result-object v19

    const/16 v24, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v20, v4

    move/from16 v21, v3

    move-object/from16 v22, v0

    move/from16 v23, v2

    move/from16 v25, v1

    invoke-direct/range {v17 .. v25}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;Ljava/lang/String;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    goto :goto_14

    .line 1029
    :cond_21
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    iget-object v9, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v9, v9, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const/16 v23, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v4

    move/from16 v20, v3

    move-object/from16 v21, v0

    move/from16 v22, v2

    move/from16 v24, v1

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(Ljava/io/File;IILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;Z[II)V

    :goto_14
    move-object v2, v8

    :goto_15
    if-nez v5, :cond_23

    if-eqz v11, :cond_22

    goto :goto_16

    .line 1035
    :cond_22
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 1036
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    :cond_23
    :goto_16
    move-object/from16 v1, p0

    .line 1033
    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->loadLastFrame(Lorg/telegram/ui/Components/RLottieDrawable;IIZZ)V

    goto/16 :goto_94

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v10

    :goto_17
    if-eqz v4, :cond_24

    .line 1003
    :try_start_9
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_18

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 1005
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1008
    :cond_24
    :goto_18
    throw v1

    :cond_25
    const-wide/16 v3, 0x0

    if-ne v2, v8, :cond_44

    if-eqz v1, :cond_26

    .line 1042
    iget-wide v1, v1, Lorg/telegram/messenger/ImageLocation;->videoSeekTo:J

    move-wide/from16 v26, v1

    goto :goto_19

    :cond_26
    move-wide/from16 v26, v3

    .line 1051
    :goto_19
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_2d

    const-string v1, "_"

    .line 1052
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1053
    array-length v1, v0

    if-lt v1, v8, :cond_27

    const/4 v1, 0x0

    .line 1054
    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 1055
    aget-object v2, v0, v9

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    cmpg-float v1, v1, v12

    if-gtz v1, :cond_27

    cmpg-float v1, v2, v12

    if-gtz v1, :cond_27

    .line 1056
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

    .line 1060
    :goto_1b
    array-length v12, v0

    if-ge v2, v12, :cond_2c

    const-string/jumbo v12, "pcache"

    .line 1061
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_28

    move v6, v9

    :cond_28
    const-string v12, "firstframe"

    .line 1064
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29

    move v5, v9

    :cond_29
    const-string/jumbo v12, "nostream"

    .line 1067
    aget-object v13, v0, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    move v11, v9

    :cond_2a
    const-string/jumbo v12, "pframe"

    .line 1070
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

    .line 1081
    :try_start_a
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1082
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x2

    .line 1083
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1084
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

    .line 1086
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1088
    :goto_1e
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v1, :cond_2f

    const/4 v2, 0x0

    .line 1090
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 1092
    :cond_2f
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_1f
    return-void

    :cond_30
    if-eqz v6, :cond_32

    if-nez v5, :cond_32

    .line 1098
    new-instance v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;-><init>()V

    .line 1099
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v2, :cond_31

    const-string v10, "compress"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/16 v2, 0x3c

    .line 1100
    iput v2, v0, Lorg/telegram/messenger/utils/BitmapsCache$CacheOptions;->compressQuality:I

    :cond_31
    move-object/from16 v32, v0

    goto :goto_20

    :cond_32
    const/16 v32, 0x0

    .line 1103
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

    .line 1104
    instance-of v6, v10, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_34

    goto :goto_21

    :cond_34
    const/4 v10, 0x0

    :goto_21
    if-eqz v10, :cond_35

    .line 1105
    iget-wide v12, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->size:J

    goto :goto_22

    :cond_35
    iget-wide v12, v2, Lorg/telegram/messenger/ImageLocation;->currentSize:J

    .line 1106
    :goto_22
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    if-eqz v11, :cond_36

    move-wide/from16 v20, v3

    goto :goto_23

    :cond_36
    move-wide/from16 v20, v12

    :goto_23
    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v11, :cond_37

    const/16 v23, 0x0

    goto :goto_24

    :cond_37
    move-object/from16 v23, v10

    :goto_24
    if-nez v10, :cond_38

    if-nez v11, :cond_38

    iget-object v11, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    move-object/from16 v24, v11

    goto :goto_25

    :cond_38
    const/16 v24, 0x0

    :goto_25
    iget-object v11, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v29, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move/from16 v19, v5

    move/from16 v22, v8

    move-object/from16 v25, v11

    move/from16 v28, v2

    move-object/from16 v30, v32

    invoke-direct/range {v17 .. v30}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 1107
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

    goto/16 :goto_2c

    .line 1112
    :cond_3b
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_3c

    const-string v2, "_"

    .line 1113
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1114
    array-length v2, v0

    if-lt v2, v8, :cond_3c

    const/4 v2, 0x0

    .line 1115
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 1116
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 1117
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v2, v6

    float-to-int v2, v2

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v30, v2

    goto :goto_27

    :cond_3c
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_27
    if-nez v5, :cond_3e

    .line 1121
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
    const/16 v19, 0x0

    goto :goto_29

    :cond_3e
    :goto_28
    move/from16 v19, v9

    .line 1122
    :goto_29
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    const-wide/16 v20, 0x0

    iget v8, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->priority:I

    if-eqz v11, :cond_3f

    const/16 v23, 0x0

    goto :goto_2a

    :cond_3f
    iget-object v10, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v10, v10, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v23, v10

    :goto_2a
    const/16 v24, 0x0

    const/16 v25, 0x0

    iget v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->currentAccount:I

    const/16 v29, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    move/from16 v22, v8

    move/from16 v28, v2

    invoke-direct/range {v17 .. v32}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZIILorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    .line 1123
    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isWebM(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isVideoSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/telegram/messenger/ImageLoader;->access$1900(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_2b

    :cond_40
    const/4 v9, 0x0

    :cond_41
    :goto_2b
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setIsWebmSticker(Z)V

    :goto_2c
    if-eqz v5, :cond_43

    const/4 v2, 0x0

    .line 1126
    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1128
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1129
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-nez v1, :cond_42

    const/4 v2, 0x0

    .line 1131
    invoke-direct {v7, v2}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    .line 1133
    :cond_42
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    .line 1136
    :cond_43
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setLimitFps(Z)V

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1138
    invoke-direct {v7, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    .line 1147
    :cond_44
    iget-object v1, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    .line 1148
    iget-object v2, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-nez v2, :cond_46

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v0, :cond_45

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".enc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    goto :goto_2d

    :cond_45
    const/4 v13, 0x0

    goto :goto_2e

    :cond_46
    :goto_2d
    move v13, v9

    .line 1151
    :goto_2e
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->secureDocument:Lorg/telegram/messenger/SecureDocument;

    if-eqz v0, :cond_48

    .line 1152
    iget-object v2, v0, Lorg/telegram/messenger/SecureDocument;->secureDocumentKey:Lorg/telegram/messenger/SecureDocumentKey;

    .line 1153
    iget-object v5, v0, Lorg/telegram/messenger/SecureDocument;->secureFile:Lorg/telegram/tgnet/TLRPC$TL_secureFile;

    if-eqz v5, :cond_47

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    if-eqz v5, :cond_47

    goto :goto_2f

    .line 1156
    :cond_47
    iget-object v0, v0, Lorg/telegram/messenger/SecureDocument;->fileHash:[B

    move-object v5, v0

    goto :goto_2f

    :cond_48
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1165
    :goto_2f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v0, v6, :cond_4c

    .line 1168
    :try_start_c
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v6, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1170
    :try_start_d
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    if-ne v0, v9, :cond_49

    .line 1171
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1700()[B

    move-result-object v0

    goto :goto_30

    .line 1173
    :cond_49
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$1800()[B

    move-result-object v0

    .line 1175
    :goto_30
    array-length v10, v0

    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1176
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "riff"

    .line 1178
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4a

    const-string/jumbo v10, "webp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_4a

    move v10, v9

    goto :goto_31

    :cond_4a
    const/4 v10, 0x0

    .line 1186
    :goto_31
    :try_start_e
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_36

    :catch_8
    move-exception v0

    move-object v6, v0

    .line 1188
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_36

    :catch_9
    move-exception v0

    goto :goto_32

    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_33

    :catch_a
    move-exception v0

    const/4 v6, 0x0

    .line 1182
    :goto_32
    :try_start_f
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v6, :cond_4c

    .line 1186
    :try_start_10
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_35

    :catch_b
    move-exception v0

    move-object v6, v0

    .line 1188
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_35

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v4, v6

    :goto_33
    if-eqz v4, :cond_4b

    .line 1186
    :try_start_11
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    goto :goto_34

    :catch_c
    move-exception v0

    move-object v2, v0

    .line 1188
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1191
    :cond_4b
    :goto_34
    throw v1

    :cond_4c
    :goto_35
    const/4 v10, 0x0

    .line 1195
    :goto_36
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_51

    const-string/jumbo v6, "thumb://"

    .line 1197
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string v6, ":"

    const/16 v11, 0x8

    .line 1198
    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_4d

    .line 1200
    invoke-virtual {v0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    add-int/2addr v6, v9

    .line 1202
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_4d
    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_37
    move-object v6, v0

    :goto_38
    const/4 v12, 0x0

    :goto_39
    const/4 v14, 0x0

    goto :goto_3b

    :cond_4e
    const-string/jumbo v6, "vthumb://"

    .line 1205
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    const-string v6, ":"

    const/16 v11, 0x9

    .line 1206
    invoke-virtual {v0, v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_4f

    .line 1208
    invoke-virtual {v0, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move v6, v9

    goto :goto_3a

    :cond_4f
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_3a
    move-object v11, v0

    move v12, v6

    const/4 v6, 0x0

    goto :goto_39

    :cond_50
    const-string v6, "http"

    .line 1212
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto :goto_38

    :cond_51
    move v14, v9

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1217
    :goto_3b
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1218
    iput v9, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_52

    .line 1221
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1228
    :cond_52
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v0}, Lorg/telegram/messenger/ImageLoader;->access$2000(Lorg/telegram/messenger/ImageLoader;)Z

    move-result v4

    const/16 v16, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    .line 1230
    :try_start_12
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_68

    const-string v3, "_"

    .line 1231
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1232
    array-length v3, v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13

    if-lt v3, v8, :cond_53

    const/4 v3, 0x0

    .line 1233
    :try_start_13
    aget-object v19, v0, v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    mul-float v3, v3, v19

    .line 1234
    :try_start_14
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sget v19, Lorg/telegram/messenger/AndroidUtilities;->density:F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    mul-float v0, v0, v19

    move/from16 v19, v3

    move v3, v0

    goto :goto_3c

    :catchall_5
    move-exception v0

    move-object v9, v0

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v0, v16

    goto/16 :goto_53

    :catchall_6
    move-exception v0

    move-object v9, v0

    move-object/from16 v24, v11

    move/from16 v25, v12

    goto/16 :goto_52

    :cond_53
    move/from16 v3, v16

    move/from16 v19, v3

    .line 1236
    :goto_3c
    :try_start_15
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v8, 0x3

    goto :goto_3d

    .line 1238
    :cond_54
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v8, 0x2

    goto :goto_3d

    .line 1240
    :cond_55
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "b"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    if-eqz v0, :cond_56

    move v8, v9

    goto :goto_3d

    :cond_56
    const/4 v8, 0x0

    .line 1243
    :goto_3d
    :try_start_16
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v9, "i"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 1246
    :try_start_17
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    move/from16 v21, v8

    :try_start_18
    const-string v8, "f"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v4, 0x1

    goto :goto_3e

    .line 1248
    :cond_57
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string v8, "F"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    if-eqz v0, :cond_58

    const/4 v4, 0x0

    :cond_58
    :goto_3e
    if-nez v10, :cond_67

    cmpl-float v0, v19, v16

    if-eqz v0, :cond_67

    cmpl-float v0, v3, v16

    if-eqz v0, :cond_67

    const/4 v8, 0x1

    .line 1252
    :try_start_19
    iput-boolean v8, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    if-eqz v11, :cond_5a

    if-nez v6, :cond_5a

    if-eqz v12, :cond_59

    .line 1256
    :try_start_1a
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    move/from16 v22, v9

    :try_start_1b
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    move/from16 v23, v4

    const/4 v4, 0x1

    :try_start_1c
    invoke-static {v0, v8, v9, v4, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_40

    :catchall_7
    move-exception v0

    move/from16 v23, v4

    goto :goto_3f

    :catchall_8
    move-exception v0

    move/from16 v23, v4

    move/from16 v22, v9

    :goto_3f
    move-object v9, v0

    move v0, v3

    move-object/from16 v24, v11

    move/from16 v25, v12

    goto/16 :goto_4b

    :cond_59
    move/from16 v23, v4

    move/from16 v22, v9

    .line 1258
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-static {v0, v8, v9, v4, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :goto_40
    move-object/from16 v24, v11

    move/from16 v25, v12

    goto/16 :goto_47

    :catchall_9
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object/from16 v24, v11

    move/from16 v25, v12

    goto :goto_45

    :cond_5a
    move/from16 v23, v4

    move/from16 v22, v9

    if-eqz v2, :cond_5f

    .line 1262
    :try_start_1d
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v4, v8

    .line 1264
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    if-eqz v8, :cond_5b

    .line 1265
    :try_start_1e
    array-length v9, v8

    if-lt v9, v4, :cond_5b

    goto :goto_41

    :cond_5b
    const/4 v8, 0x0

    :goto_41
    if-nez v8, :cond_5c

    .line 1267
    new-array v8, v4, [B

    .line 1268
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :cond_5c
    const/4 v9, 0x0

    .line 1270
    :try_start_1f
    invoke-virtual {v0, v8, v9, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1271
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1272
    invoke-static {v8, v9, v4, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    move-object/from16 v24, v11

    move/from16 v25, v12

    int-to-long v11, v4

    .line 1273
    :try_start_20
    invoke-static {v8, v9, v11, v12}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_5e

    .line 1275
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_42

    :cond_5d
    const/4 v0, 0x0

    goto :goto_43

    :cond_5e
    :goto_42
    const/4 v0, 0x1

    :goto_43
    const/4 v9, 0x0

    .line 1278
    aget-byte v11, v8, v9

    and-int/lit16 v9, v11, 0xff

    sub-int/2addr v4, v9

    if-nez v0, :cond_61

    .line 1281
    invoke-static {v8, v9, v4, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_47

    :catchall_a
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v25, v12

    :goto_44
    move-object v9, v0

    move v0, v3

    :goto_45
    move/from16 v3, v19

    move/from16 v4, v23

    goto/16 :goto_4c

    :cond_5f
    move-object/from16 v24, v11

    move/from16 v25, v12

    if-eqz v13, :cond_60

    .line 1286
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v4, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_46

    .line 1288
    :cond_60
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_46
    const/4 v4, 0x0

    .line 1290
    invoke-static {v0, v4, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1291
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1295
    :cond_61
    :goto_47
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    .line 1296
    iget v4, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v4

    cmpl-float v8, v19, v3

    if-ltz v8, :cond_62

    cmpl-float v8, v0, v4

    if-lez v8, :cond_62

    div-float v8, v0, v19

    div-float v9, v4, v3

    .line 1299
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    goto :goto_48

    :cond_62
    div-float v8, v0, v19

    div-float v9, v4, v3

    .line 1301
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :goto_48
    const v9, 0x3f99999a    # 1.2f

    cmpg-float v9, v8, v9

    if-gez v9, :cond_63

    move/from16 v8, v33

    :cond_63
    const/4 v9, 0x0

    .line 1306
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    cmpl-float v9, v8, v33

    if-lez v9, :cond_66

    cmpl-float v0, v0, v19

    if-gtz v0, :cond_64

    cmpl-float v0, v4, v3

    if-lez v0, :cond_66

    :cond_64
    const/4 v0, 0x1

    :cond_65
    const/4 v4, 0x2

    mul-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    cmpg-float v4, v4, v8

    if-ltz v4, :cond_65

    .line 1312
    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_49

    :cond_66
    float-to-int v0, v8

    .line 1314
    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    goto :goto_49

    :catchall_b
    move-exception v0

    goto :goto_44

    :catchall_c
    move-exception v0

    move/from16 v23, v4

    goto :goto_4a

    :cond_67
    move/from16 v23, v4

    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v25, v12

    :goto_49
    move/from16 v4, v23

    const/4 v8, 0x0

    goto/16 :goto_50

    :catchall_d
    move-exception v0

    goto :goto_4a

    :catchall_e
    move-exception v0

    move/from16 v21, v8

    :goto_4a
    move/from16 v22, v9

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object v9, v0

    move v0, v3

    :goto_4b
    move/from16 v3, v19

    :goto_4c
    const/4 v8, 0x0

    goto/16 :goto_56

    :catchall_f
    move-exception v0

    move/from16 v21, v8

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object v9, v0

    move v0, v3

    move/from16 v3, v19

    const/4 v8, 0x0

    goto/16 :goto_55

    :catchall_10
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v25, v12

    move-object v9, v0

    move v0, v3

    move/from16 v3, v19

    goto/16 :goto_53

    :cond_68
    move-object/from16 v24, v11

    move/from16 v25, v12

    if-eqz v6, :cond_6d

    const/4 v3, 0x1

    .line 1318
    :try_start_21
    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v4, :cond_69

    .line 1319
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_4d

    :cond_69
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_4d
    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1320
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    .line 1321
    invoke-static {v0, v3, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    .line 1322
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 1323
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1324
    iget v3, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v9, 0x0

    .line 1325
    iput-boolean v9, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/16 v9, 0x42

    .line 1326
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1327
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v9

    div-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v0, v3

    cmpg-float v3, v0, v33

    if-gez v3, :cond_6a

    move/from16 v0, v33

    :cond_6a
    cmpl-float v3, v0, v33

    if-lez v3, :cond_6c

    const/4 v3, 0x1

    :cond_6b
    const/4 v9, 0x2

    mul-int/2addr v3, v9

    mul-int/lit8 v9, v3, 0x2

    int-to-float v9, v9

    cmpg-float v9, v9, v0

    if-lez v9, :cond_6b

    .line 1336
    iput v3, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_4e

    :cond_6c
    float-to-int v0, v0

    .line 1338
    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    :goto_4e
    move/from16 v3, v16

    move/from16 v19, v3

    goto :goto_4f

    :catchall_11
    move-exception v0

    move-object v9, v0

    move/from16 v0, v16

    move v3, v0

    goto :goto_54

    :catchall_12
    move-exception v0

    goto :goto_51

    :cond_6d
    move/from16 v3, v16

    move/from16 v19, v3

    const/4 v8, 0x0

    :goto_4f
    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_50
    move/from16 v9, v19

    move/from16 v11, v21

    move/from16 v34, v22

    const/4 v12, 0x1

    goto :goto_57

    :catchall_13
    move-exception v0

    move-object/from16 v24, v11

    move/from16 v25, v12

    :goto_51
    move-object v9, v0

    :goto_52
    move/from16 v0, v16

    move v3, v0

    :goto_53
    const/4 v8, 0x0

    :goto_54
    const/16 v21, 0x0

    :goto_55
    const/16 v22, 0x0

    .line 1343
    :goto_56
    instance-of v11, v9, Ljava/io/FileNotFoundException;

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    .line 1346
    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    move v9, v3

    move/from16 v11, v21

    move/from16 v34, v22

    move v3, v0

    .line 1349
    :goto_57
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->type:I

    const/high16 v35, 0x41a00000    # 20.0f

    if-ne v0, v12, :cond_8b

    .line 1351
    :try_start_23
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1352
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_16

    .line 1353
    :try_start_24
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_6e

    .line 1354
    monitor-exit v3

    return-void

    .line 1356
    :cond_6e
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    if-eqz v10, :cond_70

    .line 1359
    :try_start_25
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v21

    sget-object v22, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v23, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v25

    invoke-virtual/range {v21 .. v26}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1362
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 1363
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1364
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v2, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1365
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1367
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v4, :cond_6f

    const/4 v4, 0x1

    goto :goto_58

    :cond_6f
    const/4 v4, 0x0

    :goto_58
    const/4 v5, 0x0

    invoke-static {v8, v2, v3, v5, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1368
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5a

    .line 1370
    :cond_70
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v0, :cond_73

    if-eqz v2, :cond_71

    goto :goto_5b

    :cond_71
    if-eqz v13, :cond_72

    .line 1400
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v2, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v2, v2, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_59

    .line 1402
    :cond_72
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_59
    const/4 v2, 0x0

    .line 1404
    invoke-static {v0, v2, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1405
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_5a
    move v12, v11

    goto :goto_60

    .line 1371
    :cond_73
    :goto_5b
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1374
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_74

    .line 1375
    array-length v6, v4

    if-lt v6, v3, :cond_74

    goto :goto_5c

    :cond_74
    const/4 v4, 0x0

    :goto_5c
    if-nez v4, :cond_75

    .line 1377
    new-array v4, v3, [B

    .line 1378
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2300()Ljava/lang/ThreadLocal;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_75
    const/4 v6, 0x0

    .line 1380
    invoke-virtual {v0, v4, v6, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1381
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_78

    .line 1384
    invoke-static {v4, v6, v3, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V

    move v12, v11

    int-to-long v10, v3

    .line 1385
    invoke-static {v4, v6, v10, v11}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_77

    .line 1386
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_5d

    :cond_76
    const/4 v0, 0x0

    goto :goto_5e

    :cond_77
    :goto_5d
    const/4 v0, 0x1

    :goto_5e
    const/4 v2, 0x0

    .line 1389
    aget-byte v5, v4, v2

    and-int/lit16 v2, v5, 0xff

    sub-int/2addr v3, v2

    goto :goto_5f

    :cond_78
    move v12, v11

    if-eqz v13, :cond_79

    .line 1392
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v4, v2, v3, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    :cond_79
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_5f
    if-nez v0, :cond_7a

    .line 1395
    invoke-static {v4, v2, v3, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_7a
    :goto_60
    if-nez v8, :cond_7d

    .line 1410
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7b

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_7c

    .line 1411
    :cond_7b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7c
    const/4 v2, 0x0

    goto/16 :goto_6a

    .line 1414
    :cond_7d
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 1415
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1416
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1417
    iget-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v3, :cond_7e

    cmpl-float v3, v9, v16

    if-eqz v3, :cond_7e

    cmpl-float v3, v0, v9

    if-eqz v3, :cond_7e

    add-float v35, v9, v35

    cmpl-float v3, v0, v35

    if-lez v3, :cond_7e

    div-float/2addr v0, v9

    float-to-int v3, v9

    div-float/2addr v2, v0

    float-to-int v0, v2

    const/4 v2, 0x1

    .line 1419
    invoke-static {v8, v3, v0, v2}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v8, v0, :cond_7e

    .line 1421
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v0

    :cond_7e
    if-eqz v34, :cond_81

    .line 1427
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_7f

    const/4 v0, 0x0

    goto :goto_61

    :cond_7f
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
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    if-eqz v0, :cond_80

    const/4 v0, 0x1

    goto :goto_62

    :cond_80
    const/4 v0, 0x0

    :goto_62
    move v2, v0

    goto :goto_63

    :cond_81
    const/4 v2, 0x0

    :goto_63
    const/4 v3, 0x1

    if-ne v12, v3, :cond_83

    .line 1430
    :try_start_26
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_8a

    const/16 v22, 0x3

    .line 1431
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_82

    const/16 v23, 0x0

    goto :goto_64

    :cond_82
    const/16 v23, 0x1

    :goto_64
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v26

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6a

    :catchall_14
    move-exception v0

    goto/16 :goto_69

    :cond_83
    const/4 v3, 0x2

    if-ne v12, v3, :cond_85

    .line 1434
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_8a

    const/16 v22, 0x1

    .line 1435
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_84

    const/16 v23, 0x0

    goto :goto_65

    :cond_84
    const/16 v23, 0x1

    :goto_65
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v26

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto/16 :goto_6a

    :cond_85
    const/4 v3, 0x3

    if-ne v12, v3, :cond_89

    .line 1438
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v3, :cond_8a

    const/16 v22, 0x7

    .line 1439
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_86

    const/16 v23, 0x0

    goto :goto_66

    :cond_86
    const/16 v23, 0x1

    :goto_66
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v26

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v22, 0x7

    .line 1440
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_87

    const/16 v23, 0x0

    goto :goto_67

    :cond_87
    const/16 v23, 0x1

    :goto_67
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v26

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    const/16 v22, 0x7

    .line 1441
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_88

    const/16 v23, 0x0

    goto :goto_68

    :cond_88
    const/16 v23, 0x1

    :goto_68
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v26

    move-object/from16 v21, v8

    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    goto :goto_6a

    :cond_89
    if-nez v12, :cond_8a

    .line 1443
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_8a

    .line 1444
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    goto :goto_6a

    :catchall_15
    move-exception v0

    .line 1356
    :try_start_27
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    :try_start_28
    throw v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    :catchall_16
    move-exception v0

    const/4 v2, 0x0

    .line 1448
    :goto_69
    instance-of v3, v0, Ljava/io/FileNotFoundException;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-static {v0, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_8a
    :goto_6a
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto/16 :goto_8a

    :cond_8b
    move v12, v11

    const/16 v0, 0x14

    if-eqz v24, :cond_8c

    const/4 v0, 0x0

    :cond_8c
    if-eqz v0, :cond_8e

    .line 1456
    :try_start_29
    iget-object v11, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v11}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v11, v19, v21

    if-eqz v11, :cond_8e

    iget-object v11, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {v11}, Lorg/telegram/messenger/ImageLoader;->access$2200(Lorg/telegram/messenger/ImageLoader;)J

    move-result-wide v19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    move-object/from16 v36, v8

    move v11, v9

    int-to-long v8, v0

    sub-long v21, v21, v8

    cmp-long v0, v19, v21

    if-lez v0, :cond_8d

    :try_start_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v37, v3

    const/16 v3, 0x15

    if-ge v0, v3, :cond_8f

    .line 1457
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_6b

    :cond_8d
    move/from16 v37, v3

    goto :goto_6b

    :catchall_17
    move-exception v0

    move-object/from16 v36, v8

    goto/16 :goto_86

    :cond_8e
    move/from16 v37, v3

    move-object/from16 v36, v8

    move v11, v9

    .line 1459
    :cond_8f
    :goto_6b
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->this$0:Lorg/telegram/messenger/ImageLoader;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/ImageLoader;->access$2202(Lorg/telegram/messenger/ImageLoader;J)J

    .line 1460
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->sync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_20

    .line 1461
    :try_start_2b
    iget-boolean v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->isCancelled:Z

    if-eqz v0, :cond_90

    .line 1462
    monitor-exit v3

    return-void

    .line 1464
    :cond_90
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1f

    if-nez v4, :cond_92

    .line 1466
    :try_start_2c
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_92

    if-nez v12, :cond_92

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v0, :cond_91

    goto :goto_6c

    .line 1469
    :cond_91
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_6d

    .line 1467
    :cond_92
    :goto_6c
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_6d
    const/4 v3, 0x0

    .line 1472
    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz v24, :cond_95

    if-nez v6, :cond_95

    if-eqz v25, :cond_94

    .line 1475
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-nez v0, :cond_93

    .line 1476
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v30}, Lorg/telegram/ui/Components/AnimatedFileDrawable;-><init>(Ljava/io/File;ZJILorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JIZLorg/telegram/messenger/utils/BitmapsCache$CacheOptions;)V

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    .line 1477
    invoke-virtual {v0, v3, v4, v6}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getFrameAtTime(JZ)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_20

    .line 1478
    :try_start_2d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    goto :goto_6e

    .line 1480
    :cond_93
    :try_start_2e
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v6, v15}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_6e

    .line 1483
    :cond_94
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v6, v15}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_20

    goto :goto_6e

    :cond_95
    move-object/from16 v8, v36

    :goto_6e
    if-nez v8, :cond_a8

    if-eqz v10, :cond_97

    if-nez v2, :cond_97

    .line 1488
    :try_start_2f
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v17

    sget-object v18, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v19, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v21

    invoke-virtual/range {v17 .. v22}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 1491
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    .line 1492
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1493
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v2, v5, v3, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1494
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/Bitmaps;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1496
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-boolean v4, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v4, :cond_96

    const/4 v4, 0x1

    goto :goto_6f

    :cond_96
    const/4 v4, 0x0

    :goto_6f
    const/4 v5, 0x0

    invoke-static {v8, v2, v3, v5, v4}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 1497
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_7c

    :catchall_18
    move-exception v0

    goto/16 :goto_86

    :cond_97
    if-nez v8, :cond_a0

    if-eqz v2, :cond_98

    .line 1502
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    goto :goto_70

    :cond_98
    if-eqz v13, :cond_99

    .line 1504
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_70

    .line 1506
    :cond_99
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1508
    :goto_70
    iget-object v3, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v4, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v4, Lorg/telegram/messenger/ImageLocation;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v4, :cond_9c

    iget-object v3, v3, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v3, :cond_9a

    const-string v4, "exif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9a

    goto :goto_72

    :cond_9a
    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_9b
    :goto_71
    const/4 v6, 0x0

    goto :goto_74

    .line 1509
    :cond_9c
    :goto_72
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getImageOrientation(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v3

    .line 1510
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    .line 1511
    :try_start_30
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    if-nez v2, :cond_9e

    .line 1512
    :try_start_31
    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    if-eqz v6, :cond_9d

    goto :goto_73

    .line 1520
    :cond_9d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    goto :goto_71

    .line 1513
    :cond_9e
    :goto_73
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    if-eqz v2, :cond_9f

    .line 1515
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Lorg/telegram/messenger/SecureDocumentKey;)V

    goto :goto_71

    :cond_9f
    if-eqz v13, :cond_9b

    .line 1517
    new-instance v0, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;

    iget-object v6, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v6, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;-><init>(Ljava/io/File;Ljava/io/File;)V

    goto :goto_71

    .line 1523
    :goto_74
    invoke-static {v0, v6, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1524
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    goto :goto_75

    :catchall_19
    move-exception v0

    move/from16 v17, v3

    goto/16 :goto_85

    :catchall_1a
    move-exception v0

    goto/16 :goto_87

    :cond_a0
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_75
    if-nez v8, :cond_a7

    .line 1529
    :try_start_32
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "r"

    invoke-direct {v0, v1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v9, v9

    .line 1532
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_a1

    .line 1533
    array-length v6, v10

    if-lt v6, v9, :cond_a1

    goto :goto_76

    :cond_a1
    const/4 v10, 0x0

    :goto_76
    if-nez v10, :cond_a2

    .line 1535
    new-array v10, v9, [B

    .line 1536
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->access$2100()Ljava/lang/ThreadLocal;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_a2
    const/4 v6, 0x0

    .line 1538
    invoke-virtual {v0, v10, v6, v9}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 1539
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    if-eqz v2, :cond_a5

    .line 1542
    invoke-static {v10, v6, v9, v2}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILorg/telegram/messenger/SecureDocumentKey;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1c

    move/from16 v17, v3

    int-to-long v2, v9

    .line 1543
    :try_start_33
    invoke-static {v10, v6, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    if-eqz v5, :cond_a4

    .line 1544
    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_77

    :cond_a3
    const/4 v0, 0x0

    goto :goto_78

    :cond_a4
    :goto_77
    const/4 v0, 0x1

    :goto_78
    const/4 v2, 0x0

    .line 1547
    aget-byte v3, v10, v2

    and-int/lit16 v2, v3, 0xff

    sub-int/2addr v9, v2

    goto :goto_7a

    :cond_a5
    move/from16 v17, v3

    if-eqz v13, :cond_a6

    .line 1550
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->encryptionKeyPath:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v10, v2, v9, v0}, Lorg/telegram/messenger/secretmedia/EncryptedFileInputStream;->decryptBytesWithKeyFile([BIILjava/io/File;)V

    goto :goto_79

    :catchall_1b
    move-exception v0

    goto :goto_7b

    :cond_a6
    :goto_79
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_7a
    if-nez v0, :cond_a9

    .line 1553
    invoke-static {v10, v2, v9, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    goto :goto_7d

    :catchall_1c
    move-exception v0

    move/from16 v17, v3

    .line 1556
    :goto_7b
    :try_start_34
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_a7
    move/from16 v17, v3

    goto :goto_7d

    :cond_a8
    :goto_7c
    const/4 v4, 0x0

    const/16 v17, 0x0

    :cond_a9
    :goto_7d
    if-nez v8, :cond_ac

    if-eqz v14, :cond_ab

    .line 1562
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_aa

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-nez v0, :cond_ab

    .line 1563
    :cond_aa
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_ab
    const/4 v5, 0x0

    goto/16 :goto_89

    .line 1567
    :cond_ac
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_ba

    .line 1568
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1569
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 1570
    iget-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v3, :cond_af

    cmpl-float v3, v11, v16

    if-eqz v3, :cond_af

    cmpl-float v3, v0, v11

    if-eqz v3, :cond_af

    add-float v9, v11, v35

    cmpl-float v3, v0, v9

    if-lez v3, :cond_af

    cmpl-float v3, v0, v2

    if-lez v3, :cond_ad

    cmpl-float v3, v11, v37

    if-lez v3, :cond_ad

    div-float v3, v0, v11

    cmpl-float v5, v3, v33

    if-lez v5, :cond_ae

    float-to-int v5, v11

    div-float v3, v2, v3

    float-to-int v3, v3

    const/4 v6, 0x1

    .line 1575
    invoke-static {v8, v5, v3, v6}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7e

    :cond_ad
    div-float v3, v2, v37

    cmpl-float v5, v3, v33

    if-lez v5, :cond_ae

    div-float v3, v0, v3

    float-to-int v3, v3

    move/from16 v5, v37

    float-to-int v5, v5

    const/4 v6, 0x1

    .line 1582
    invoke-static {v8, v3, v5, v6}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7e

    :cond_ae
    move-object v3, v8

    :goto_7e
    if-eq v8, v3, :cond_af

    .line 1588
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v3

    :cond_af
    if-eqz v8, :cond_ba

    if-eqz v34, :cond_b3

    .line 1595
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1596
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v3, v5

    const/16 v5, 0x57e4

    if-le v3, v5, :cond_b0

    const/16 v3, 0x64

    const/16 v5, 0x64

    const/4 v6, 0x0

    .line 1598
    invoke-static {v8, v3, v5, v6}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_7f

    :cond_b0
    move-object v3, v8

    .line 1600
    :goto_7f
    iget-boolean v5, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v5, :cond_b1

    const/4 v5, 0x0

    goto :goto_80

    :cond_b1
    const/4 v5, 0x1

    :goto_80
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v10

    invoke-static {v3, v5, v6, v9, v10}, Lorg/telegram/messenger/Utilities;->needInvert(Ljava/lang/Object;IIII)I

    move-result v5
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1e

    if-eqz v5, :cond_b2

    const/4 v5, 0x1

    goto :goto_81

    :cond_b2
    const/4 v5, 0x0

    :goto_81
    if-eq v3, v8, :cond_b4

    .line 1602
    :try_start_35
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_82

    :cond_b3
    const/4 v5, 0x0

    :cond_b4
    :goto_82
    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v12, :cond_b6

    cmpl-float v6, v2, v3

    if-gtz v6, :cond_b5

    cmpl-float v6, v0, v3

    if-lez v6, :cond_b6

    :cond_b5
    const/16 v0, 0x50

    const/4 v2, 0x0

    .line 1606
    invoke-static {v8, v0, v0, v2}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v6, 0x42a00000    # 80.0f

    move-object v8, v0

    move v0, v6

    :cond_b6
    if-eqz v12, :cond_b9

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b9

    cmpg-float v0, v0, v3

    if-gez v0, :cond_b9

    .line 1611
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_b8

    const/16 v19, 0x3

    .line 1612
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_b7

    const/16 v20, 0x0

    goto :goto_83

    :cond_b7
    const/16 v20, 0x1

    :goto_83
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v23

    move-object/from16 v18, v8

    invoke-static/range {v18 .. v23}, Lorg/telegram/messenger/Utilities;->blurBitmap(Ljava/lang/Object;IIIII)V

    :cond_b8
    const/4 v0, 0x1

    goto :goto_84

    :cond_b9
    const/4 v0, 0x0

    goto :goto_84

    :cond_ba
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_84
    if-nez v0, :cond_bb

    .line 1618
    iget-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_bb

    .line 1619
    invoke-static {v8}, Lorg/telegram/messenger/Utilities;->pinBitmap(Landroid/graphics/Bitmap;)I
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1d

    goto :goto_89

    :catchall_1d
    move-exception v0

    goto :goto_88

    :catchall_1e
    move-exception v0

    :goto_85
    const/4 v5, 0x0

    goto :goto_88

    :catchall_1f
    move-exception v0

    .line 1464
    :try_start_36
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1f

    :try_start_37
    throw v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_20

    :catchall_20
    move-exception v0

    move-object/from16 v8, v36

    :goto_86
    const/4 v4, 0x0

    :goto_87
    const/4 v5, 0x0

    const/16 v17, 0x0

    .line 1623
    :goto_88
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :cond_bb
    :goto_89
    move v2, v5

    move/from16 v0, v17

    .line 1626
    :goto_8a
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1627
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_bd

    if-eqz v13, :cond_bd

    .line 1628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image Loader image is empty = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v8, :cond_bc

    const/4 v9, 0x1

    goto :goto_8b

    :cond_bc
    const/4 v9, 0x0

    :goto_8b
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_bd
    if-eqz v8, :cond_be

    .line 1630
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_be

    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v3, :cond_be

    .line 1631
    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v7, v8, v1}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1633
    :cond_be
    iget-object v1, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    if-eqz v1, :cond_bf

    iget-object v1, v1, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v1, :cond_bf

    const-string v3, "ignoreOrientation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c0

    :cond_bf
    if-nez v2, :cond_c2

    if-nez v4, :cond_c2

    if-eqz v0, :cond_c0

    goto :goto_8d

    :cond_c0
    if-eqz v8, :cond_c1

    .line 1636
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_8c

    :cond_c1
    const/4 v4, 0x0

    :goto_8c
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    :cond_c2
    :goto_8d
    if-eqz v8, :cond_c3

    .line 1634
    new-instance v1, Lorg/telegram/messenger/ExtendedBitmapDrawable;

    invoke-direct {v1, v8, v4, v0}, Lorg/telegram/messenger/ExtendedBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    move-object v4, v1

    goto :goto_8e

    :cond_c3
    const/4 v4, 0x0

    :goto_8e
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_94

    .line 887
    :cond_c4
    :goto_8f
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 888
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 889
    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    if-eqz v0, :cond_c5

    const-string v3, "_"

    .line 890
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 891
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_c5

    const/4 v3, 0x0

    .line 892
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v4, 0x1

    .line 893
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 894
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    goto :goto_90

    :cond_c5
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 900
    :goto_90
    :try_start_38
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v6, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->finalFilePath:Ljava/io/File;

    iget v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->imageType:I

    if-ne v0, v5, :cond_c6

    move v9, v4

    goto :goto_91

    :cond_c6
    move v9, v3

    :goto_91
    invoke-static {v6, v2, v1, v9}, Lorg/telegram/messenger/SvgHelper;->getBitmap(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_21

    goto :goto_92

    :catchall_21
    move-exception v0

    .line 902
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_92
    if-eqz v2, :cond_c7

    .line 904
    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c7

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->filter:Ljava/lang/String;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c7

    iget-object v0, v7, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->cacheImage:Lorg/telegram/messenger/ImageLoader$CacheImage;

    iget-object v0, v0, Lorg/telegram/messenger/ImageLoader$CacheImage;->parentObject:Ljava/lang/Object;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v1, :cond_c7

    .line 905
    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-direct {v7, v2, v0}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->applyWallpaperSetting(Landroid/graphics/Bitmap;Lorg/telegram/tgnet/TLRPC$WallPaper;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_c7
    if-eqz v2, :cond_c8

    .line 907
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_93

    :cond_c8
    const/4 v4, 0x0

    :goto_93
    invoke-direct {v7, v4}, Lorg/telegram/messenger/ImageLoader$CacheOutTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    :goto_94
    return-void

    :catchall_22
    move-exception v0

    .line 872
    :try_start_39
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_22

    throw v0
.end method
