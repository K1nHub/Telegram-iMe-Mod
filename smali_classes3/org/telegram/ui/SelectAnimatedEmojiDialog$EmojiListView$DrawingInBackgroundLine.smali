.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;
.super Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawingInBackgroundLine"
.end annotation


# instance fields
.field private appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

.field drawInBackgroundViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field imageViewEmojis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field

.field public position:I

.field skewAlpha:F

.field skewBelow:Z

.field public startOffset:I

.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)V
    .locals 1

    .line 3520
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 3525
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3526
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 p1, 0x0

    .line 3527
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    .line 3734
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V
    .locals 3

    if-eqz p2, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p4, p4, v0

    float-to-int p4, p4

    .line 3826
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3827
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3828
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3829
    iget-object p1, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    goto :goto_0

    .line 3832
    :cond_0
    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p2, :cond_2

    .line 3833
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3834
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget-object v0, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 3835
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 3836
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3837
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private skew(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 3812
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 3813
    iget-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    int-to-float v0, p3

    .line 3814
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    mul-float p2, p2, v3

    .line 3815
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float p2, v1, p2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, v0

    neg-float v0, v1

    mul-float p2, p2, v0

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    neg-int p2, p3

    int-to-float p2, p2

    .line 3816
    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3818
    :cond_0
    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p2, p2

    mul-float p2, p2, v3

    .line 3819
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float p2, v1, p2

    iget p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, p3

    mul-float p2, p2, v1

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 11

    move-object v0, p0

    .line 3531
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3534
    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 v3, 0x0

    .line 3535
    iput-boolean v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    .line 3536
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 3537
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3538
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 3539
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-static {v5, v4, v2}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3f400000    # 0.75f

    mul-float v1, v1, v6

    add-float/2addr v1, v5

    .line 3540
    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    .line 3543
    :cond_1
    iget v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 v5, 0x1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x4

    if-le v1, v6, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getLiteMode()Lorg/telegram/messenger/SharedConfig$LiteMode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SharedConfig$LiteMode;->enabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ne v1, v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_7

    .line 3545
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 3546
    :goto_2
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 3547
    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3548
    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    iget-object v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v4

    if-nez v8, :cond_8

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v2

    if-nez v8, :cond_8

    if-eqz v6, :cond_5

    iget v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-le v8, v9, :cond_5

    iget v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-lt v8, v9, :cond_8

    :cond_5
    iget-boolean v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v5, v1

    :cond_8
    :goto_3
    if-eqz v5, :cond_9

    .line 3555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->prepareDraw(J)V

    move-object v1, p1

    move/from16 v2, p6

    .line 3556
    invoke-virtual {p0, p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 3557
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_4

    :cond_9
    move-object v1, p1

    move/from16 v2, p6

    .line 3559
    invoke-super/range {p0 .. p6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    :goto_4
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    .line 3598
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 3720
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3721
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3722
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v2, :cond_1

    .line 3723
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-eqz v2, :cond_0

    .line 3724
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3725
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3726
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    .line 3728
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v3, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected drawInUiThread(Landroid/graphics/Canvas;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3738
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v2, :cond_13

    .line 3739
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3740
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    move/from16 v4, p2

    const/4 v5, 0x0

    .line 3741
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_12

    .line 3742
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3743
    iget-boolean v7, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 3747
    :cond_0
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v7

    .line 3748
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v3

    if-nez v8, :cond_1

    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v8, :cond_3

    :cond_1
    const v8, 0x3f4ccccd    # 0.8f

    const v10, 0x3e4ccccd    # 0.2f

    .line 3749
    iget-boolean v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    const/4 v12, 0x4

    if-eq v11, v12, :cond_2

    const v11, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v11

    :goto_1
    sub-float v11, v9, v11

    mul-float v10, v10, v11

    add-float/2addr v8, v10

    mul-float v7, v7, v8

    .line 3751
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v8, 0x1

    cmp-long v14, v10, v12

    if-lez v14, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v14

    sub-long/2addr v10, v14

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v14

    cmp-long v16, v10, v14

    if-gez v16, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_5

    .line 3752
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    if-ltz v11, :cond_5

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    if-ltz v11, :cond_5

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-lez v11, :cond_5

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_6

    .line 3754
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    .line 3755
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    sub-int/2addr v8, v11

    .line 3756
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v12

    sub-int/2addr v11, v12

    if-ltz v8, :cond_7

    if-ge v8, v11, :cond_7

    .line 3758
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v12

    long-to-float v4, v12

    .line 3759
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    long-to-float v12, v12

    div-float/2addr v12, v4

    invoke-static {v12, v3, v9}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    int-to-float v8, v8

    int-to-float v11, v11

    const/high16 v12, 0x40800000    # 4.0f

    div-float v12, v11, v12

    .line 3760
    invoke-static {v4, v8, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v13

    .line 3761
    invoke-static {v4, v8, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v4

    .line 3762
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v8, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v4, v4, v8

    add-float/2addr v4, v8

    mul-float v7, v7, v4

    move v4, v13

    goto :goto_4

    .line 3766
    :cond_6
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    mul-float v4, v4, v8

    .line 3769
    :cond_7
    :goto_4
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 3770
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v11

    if-nez v11, :cond_8

    if-nez v10, :cond_8

    .line 3771
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v2, v10}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    const/4 v10, 0x0

    .line 3774
    iget-boolean v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/16 v12, 0xff

    if-eqz v11, :cond_9

    .line 3775
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v10, v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 3776
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3777
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 3778
    :cond_9
    iget-boolean v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v11, :cond_c

    iget-boolean v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v11, :cond_c

    .line 3779
    iget-object v10, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v10, :cond_11

    .line 3780
    iget-boolean v10, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v10, :cond_a

    goto :goto_7

    .line 3783
    :cond_a
    iget-object v10, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_b

    goto :goto_7

    .line 3787
    :cond_b
    invoke-virtual {v10, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3788
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 3789
    :cond_c
    iget-object v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v11, :cond_d

    .line 3790
    invoke-virtual {v11, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 3792
    :cond_d
    :goto_5
    iget-object v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v11, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v12, :cond_e

    .line 3793
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3795
    :cond_e
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    iput v11, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 3796
    iput v5, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    cmpl-float v12, v7, v9

    if-nez v12, :cond_10

    cmpg-float v9, v11, v9

    if-gez v9, :cond_f

    goto :goto_6

    .line 3804
    :cond_f
    invoke-direct {v0, v1, v10, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    goto :goto_7

    .line 3798
    :cond_10
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3799
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v7, v7, v9, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3800
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-direct {v0, v1, v5, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skew(Landroid/graphics/Canvas;II)V

    .line 3801
    invoke-direct {v0, v1, v10, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    .line 3802
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3807
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method public onFrameReady()V
    .locals 4

    .line 3843
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 3844
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3845
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3846
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 3847
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3850
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 13

    .line 3604
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3605
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 3606
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3607
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v3, :cond_0

    goto/16 :goto_7

    .line 3611
    :cond_0
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_6

    .line 3612
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3614
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v7

    cmpl-float v4, v7, v4

    if-nez v4, :cond_1

    iget-boolean v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v4, :cond_3

    :cond_1
    const v4, 0x3f4ccccd    # 0.8f

    const v7, 0x3e4ccccd    # 0.2f

    .line 3615
    iget-boolean v8, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v8, :cond_2

    const v8, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    :goto_1
    sub-float v8, v5, v8

    mul-float v8, v8, v7

    add-float/2addr v8, v4

    mul-float v5, v5, v8

    :cond_3
    if-nez v3, :cond_4

    goto/16 :goto_7

    :cond_4
    const/16 v4, 0xff

    .line 3620
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3622
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    .line 3623
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 3624
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 3625
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v10

    mul-float v10, v10, v4

    mul-float v10, v10, v5

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 3626
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v11

    mul-float v11, v11, v7

    mul-float v11, v11, v5

    sub-float/2addr v10, v11

    float-to-int v10, v10

    .line 3627
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v12

    mul-float v4, v4, v12

    mul-float v4, v4, v5

    add-float/2addr v11, v4

    float-to-int v4, v11

    .line 3628
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v6

    mul-float v7, v7, v6

    mul-float v7, v7, v5

    add-float/2addr v11, v7

    float-to-int v5, v11

    .line 3624
    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3630
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3631
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    if-nez v4, :cond_5

    .line 3632
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    .line 3634
    :cond_5
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3635
    iput-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    .line 3636
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 3639
    :cond_6
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v3, :cond_9

    .line 3640
    :cond_7
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v3, :cond_8

    goto :goto_2

    :cond_8
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    .line 3642
    :cond_9
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v11

    cmp-long v3, v7, v11

    if-gez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_c

    .line 3643
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ltz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ltz v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v7

    cmp-long v3, v7, v9

    if-lez v3, :cond_c

    .line 3644
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 3645
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    sub-int/2addr v3, v7

    .line 3646
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v3, :cond_b

    if-ge v3, v7, :cond_b

    .line 3648
    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v8

    long-to-float v8, v8

    .line 3649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v11, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v11, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-float v9, v9

    div-float/2addr v9, v8

    invoke-static {v9, v4, v5}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    int-to-float v3, v3

    int-to-float v7, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float v8, v7, v8

    .line 3650
    invoke-static {v4, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v9

    .line 3651
    invoke-static {v4, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v3

    .line 3652
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v3}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    mul-float v9, v9, v5

    goto :goto_4

    :cond_b
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_4

    .line 3656
    :cond_c
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    mul-float v9, v5, v3

    .line 3659
    :goto_4
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v3, :cond_10

    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v3, :cond_10

    .line 3660
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_d

    goto/16 :goto_7

    :cond_d
    const/4 v3, 0x0

    .line 3665
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_e

    .line 3666
    move-object v3, v4

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_e
    if-eqz v3, :cond_14

    .line 3669
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v4, :cond_f

    goto/16 :goto_7

    .line 3672
    :cond_f
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v9, v9, v7

    float-to-int v7, v9

    .line 3673
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 3674
    invoke-virtual {v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3675
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 3677
    :cond_10
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3678
    invoke-virtual {v4, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_5
    if-nez v4, :cond_11

    goto/16 :goto_7

    .line 3684
    :cond_11
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    const/4 v7, 0x4

    if-eqz v3, :cond_12

    .line 3685
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_6

    .line 3687
    :cond_12
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3689
    :goto_6
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v8, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v9, v3, v8

    invoke-virtual {v4, v9, v8}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3690
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v8, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v8

    iput-wide p1, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 3691
    iput-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 3693
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->update(J)V

    .line 3696
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 3697
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 3698
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3699
    iget-boolean v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    const/4 v8, 0x3

    if-eq v4, v8, :cond_13

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v7, :cond_13

    .line 3701
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    const v8, 0x3f5c28f6    # 0.86f

    mul-float v7, v7, v8

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3702
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    mul-float v9, v9, v8

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 3703
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float v10, v10, v8

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 3704
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3700
    invoke-virtual {v3, v4, v7, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3707
    :cond_13
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3708
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v6, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 3710
    iput v5, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 3711
    iput v1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    .line 3713
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_15
    return-void
.end method
