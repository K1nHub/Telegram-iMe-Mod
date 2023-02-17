.class Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawingInBackgroundLine"
.end annotation


# instance fields
.field drawInBackgroundViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field imageViewEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public startOffset:I

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V
    .locals 1

    .line 994
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 998
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    .line 1060
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Lorg/telegram/ui/Components/StickerMasksAlert$1;)V
    .locals 0

    .line 994
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/StickerMasksAlert;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 6

    .line 1002
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 1005
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 1008
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 1009
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1010
    iget v4, v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v3, v0

    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->prepareDraw(J)V

    .line 1018
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 1019
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_4

    .line 1021
    :cond_6
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    :goto_4
    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1052
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1053
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1054
    iget-object v3, v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_0

    .line 1055
    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v2

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v2, v2, v4

    invoke-virtual {v3, p1, v2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected drawInUiThread(Landroid/graphics/Canvas;F)V
    .locals 10

    .line 1064
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1066
    iget v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->startOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    .line 1067
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1068
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1069
    iget-object v3, v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1074
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3cf5c28f    # 0.03f

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 1075
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1077
    iget v2, v2, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->pressedProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v1

    if-eqz v6, :cond_1

    const v6, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccd    # 0.2f

    sub-float v2, v4, v2

    mul-float v2, v2, v7

    add-float/2addr v2, v6

    mul-float v2, v2, v4

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, p2

    float-to-int v6, v6

    .line 1097
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 1098
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    .line 1100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1101
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1102
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 1105
    :cond_2
    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1108
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public onFrameReady()V
    .locals 3

    .line 1114
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 1115
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1116
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1117
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1118
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 9

    .line 1027
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1028
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1029
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;

    .line 1030
    iget-object v2, v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    .line 1031
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 1035
    :cond_0
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->update(J)V

    .line 1036
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1037
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v4

    iput-wide p1, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 1038
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    const/16 v3, 0xff

    .line 1039
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 1040
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3cf5c28f    # 0.03f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 1041
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1042
    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->access$3600(Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 1043
    iput-object v2, v1, Lorg/telegram/ui/Components/StickerMasksAlert$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 1045
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    .line 1046
    iget-object v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method
