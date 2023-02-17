.class Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawingInBackgroundLine"
.end annotation


# instance fields
.field private appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

.field drawInBackgroundViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field imageViewEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field public startOffset:I

.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V
    .locals 1

    .line 3931
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 3935
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    .line 4001
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 8

    .line 3939
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 3942
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
    if-nez v0, :cond_5

    .line 3944
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandDuration()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 3945
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 3946
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3947
    iget v5, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    iget-object v5, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-nez v5, :cond_6

    iget v5, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v6

    if-le v5, v6, :cond_4

    iget v4, v4, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$14400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v5

    if-ge v4, v5, :cond_4

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 3954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->prepareDraw(J)V

    .line 3955
    invoke-virtual {p0, p1, p6}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 3956
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_4

    .line 3958
    :cond_7
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    :goto_4
    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3993
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3994
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3995
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_0

    .line 3996
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4005
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    .line 4006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4007
    iget v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v4, p2

    const/4 v5, 0x0

    .line 4008
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 4009
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 4010
    invoke-virtual {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 4014
    :cond_0
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v7, v7, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v7

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14500(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v7, :cond_1

    :goto_1
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 4019
    :cond_1
    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3cf5c28f    # 0.03f

    mul-float v8, v8, v9

    float-to-int v8, v8

    .line 4020
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 4022
    iget v8, v6, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->pressedProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v3

    if-eqz v11, :cond_2

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x3e4ccccd    # 0.2f

    sub-float v8, v10, v8

    mul-float v8, v8, v12

    add-float/2addr v8, v11

    mul-float v8, v8, v10

    goto :goto_2

    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    .line 4025
    :goto_2
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v15, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v15, v15, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v15}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v15

    sub-long/2addr v11, v15

    iget-object v15, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandDuration()J

    move-result-wide v15

    cmp-long v17, v11, v15

    if-gez v17, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_4

    .line 4026
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v11

    if-ltz v11, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v11

    if-ltz v11, :cond_4

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-lez v15, :cond_4

    .line 4027
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v11, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 4028
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v11

    sub-int/2addr v6, v11

    .line 4029
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->access$14400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v12, v12, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v12}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v12

    sub-int/2addr v11, v12

    if-ltz v6, :cond_4

    if-ge v6, v11, :cond_4

    .line 4031
    iget-object v12, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandAppearDuration()J

    move-result-wide v12

    long-to-float v12, v12

    .line 4032
    iget-object v13, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandCrossfadeDuration()J

    move-result-wide v13

    long-to-float v13, v13

    .line 4033
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v17

    sub-long v14, v14, v17

    long-to-float v2, v14

    const v14, 0x3ee66666    # 0.45f

    mul-float v14, v14, v12

    sub-float/2addr v2, v14

    div-float/2addr v2, v13

    invoke-static {v2, v3, v10}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    .line 4034
    sget-object v13, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v18

    sub-long v14, v14, v18

    long-to-float v3, v14

    div-float/2addr v3, v12

    const/4 v12, 0x0

    invoke-static {v3, v12, v10}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    invoke-virtual {v13, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    int-to-float v13, v6

    int-to-float v14, v11

    const/high16 v15, 0x40a00000    # 5.0f

    div-float v15, v14, v15

    .line 4035
    invoke-static {v2, v13, v14, v15}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    const/high16 v2, 0x40800000    # 4.0f

    div-float v2, v14, v2

    .line 4036
    invoke-static {v3, v13, v14, v2}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v13

    .line 4037
    div-int/lit8 v14, v11, 0x4

    add-int/2addr v6, v14

    int-to-float v6, v6

    add-int/2addr v11, v14

    int-to-float v11, v11

    invoke-static {v3, v6, v11, v2}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v2

    .line 4038
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v3

    mul-float v8, v8, v2

    mul-float v4, v4, v13

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    .line 4042
    invoke-virtual {v7, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 4043
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    cmpl-float v2, v8, v10

    if-eqz v2, :cond_5

    .line 4045
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4046
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v8, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4047
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4048
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 4050
    :cond_5
    invoke-virtual {v7, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 4053
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public onFrameReady()V
    .locals 3

    .line 4059
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 4060
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4061
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 4062
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4063
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4066
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 9

    .line 3964
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3965
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3966
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3967
    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 3971
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14500(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_2

    .line 3972
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 3976
    :cond_1
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->update(J)V

    .line 3977
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v6

    iget v7, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3978
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v4

    iput-wide p1, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 3979
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->overrideAlpha:F

    const/16 v3, 0xff

    .line 3980
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 3981
    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3cf5c28f    # 0.03f

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 3982
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3983
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$14600(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v3

    iget v5, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v5

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 3984
    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 3985
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$9600(Lorg/telegram/ui/Components/EmojiView;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3986
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    .line 3987
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
