.class public Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawingInBackgroundLine"
.end annotation


# instance fields
.field drawInBackgroundViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;",
            ">;"
        }
    .end annotation
.end field

.field imageViewEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;",
            ">;"
        }
    .end annotation
.end field

.field lite:Z

.field public position:I

.field public startOffset:I

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V
    .locals 0

    .line 1418
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 1423
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    const/16 p1, 0x2008

    .line 1425
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->lite:Z

    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;F)V
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p4, p3

    float-to-int p3, p4

    .line 1578
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1579
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1581
    :cond_0
    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p2, :cond_1

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1583
    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p2

    iget-object v0, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    iget-object v2, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1584
    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1585
    iget-object p2, p3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method private getAspectRatio(Lorg/telegram/messenger/ImageReceiver;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    return v0

    .line 1503
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1504
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1505
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    .line 1507
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1508
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1509
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 1511
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1513
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    .line 1515
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getStaticThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1516
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1517
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    :cond_4
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 5

    .line 1429
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1432
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->lite:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_4

    .line 1434
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1435
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->getScale()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_3
    if-eqz v2, :cond_5

    .line 1442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->prepareDraw(J)V

    .line 1443
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 1444
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_4

    .line 1446
    :cond_5
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    :goto_4
    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 1524
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1525
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1526
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->notDraw:Z

    if-nez v2, :cond_1

    .line 1527
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_0

    .line 1528
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1530
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected drawInUiThread(Landroid/graphics/Canvas;F)V
    .locals 10

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1539
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    .line 1540
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1541
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1542
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->notDraw:Z

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1546
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->getScale()F

    move-result v2

    .line 1547
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v3, p2

    .line 1549
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1553
    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_1

    .line 1555
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1557
    :cond_1
    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v6, :cond_2

    .line 1558
    invoke-virtual {v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 1560
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    instance-of v7, v6, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_3

    .line 1561
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v7}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_4

    .line 1564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1565
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v2, v6, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1566
    invoke-direct {p0, p1, v5, v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;F)V

    .line 1567
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 1569
    :cond_4
    invoke-direct {p0, p1, v5, v1, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1572
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method public onFrameReady()V
    .locals 4

    .line 1592
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 1593
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1594
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1595
    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 1596
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1599
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 10

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1453
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 1454
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1455
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->notDraw:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 1458
    :cond_0
    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    :goto_1
    if-nez v3, :cond_2

    goto/16 :goto_3

    .line 1462
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1463
    iget-object v4, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v4, :cond_3

    .line 1464
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1466
    :cond_3
    iget-object v4, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v6, v4, v5

    invoke-virtual {v3, v6, v5}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1467
    iget-object v4, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v4, v4, v5

    iput-wide p1, v4, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 1468
    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 1470
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->update(J)V

    .line 1475
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1477
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->getAspectRatio(Lorg/telegram/messenger/ImageReceiver;)F

    move-result v3

    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    const/high16 v6, 0x40000000    # 2.0f

    if-gez v5, :cond_4

    .line 1479
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 1480
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 1481
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 1482
    iput v3, v4, Landroid/graphics/Rect;->left:I

    .line 1483
    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_5

    .line 1485
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    .line 1486
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 1487
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v5

    float-to-int v5, v6

    .line 1488
    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 1489
    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1492
    :cond_5
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v3, v5

    invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 1493
    iget-object v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 1495
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method
