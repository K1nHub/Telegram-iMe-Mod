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

.field lite:Z

.field public position:I

.field skewAlpha:F

.field skewBelow:Z

.field public startOffset:I

.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)V
    .locals 1

    .line 3686
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;-><init>()V

    .line 3691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3692
    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 p1, 0x0

    .line 3693
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    const/16 p1, 0x2008

    .line 3695
    invoke-static {p1}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->lite:Z

    .line 3906
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V
    .locals 3

    if-eqz p2, :cond_0

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p4, p3

    float-to-int p3, p4

    .line 4004
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4005
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4006
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 4007
    :cond_0
    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez p2, :cond_1

    iget-boolean p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p2, :cond_2

    :cond_1
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz p2, :cond_2

    .line 4008
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4009
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result p2

    iget-object v0, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v1

    iget-object v2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4010
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4011
    iget-object p2, p3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4012
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method private skew(Landroid/graphics/Canvas;II)V
    .locals 5

    .line 3990
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    .line 3991
    iget-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    int-to-float v0, p3

    .line 3992
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 3993
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float p2, v1, p2

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, v0

    neg-float v0, v1

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    neg-int p2, p3

    int-to-float p2, p2

    .line 3994
    invoke-virtual {p1, v4, p2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 3996
    :cond_0
    invoke-virtual {p1, v1, v0, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    int-to-float p2, p2

    mul-float/2addr p2, v3

    .line 3997
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    sub-float p2, v1, p2

    iget p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    sub-float/2addr v1, p3

    mul-float/2addr p2, v1

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Canvas;->skew(FF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;JIIF)V
    .locals 10

    move-object v7, p0

    .line 3699
    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3702
    iput v1, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/4 v2, 0x0

    .line 3703
    iput-boolean v2, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewBelow:Z

    .line 3704
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 3705
    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3706
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    iget-object v6, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 3707
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v4, v0

    invoke-static {v4, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 3708
    iput v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    .line 3711
    :cond_1
    iget v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    cmpg-float v0, v0, v1

    const/4 v4, 0x1

    if-ltz v0, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x4

    if-le v0, v5, :cond_3

    iget-boolean v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->lite:Z

    if-eqz v0, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    if-ne v0, v5, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    if-nez v0, :cond_7

    .line 3713
    iget-object v5, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-lez v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v8

    sub-long/2addr v5, v8

    iget-object v8, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v8

    cmp-long v5, v5, v8

    if-gez v5, :cond_4

    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v2

    .line 3714
    :goto_2
    iget-object v6, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    .line 3715
    iget-object v6, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3716
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v3

    if-nez v8, :cond_8

    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backAnimator:Landroid/animation/ValueAnimator;

    if-nez v8, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v8

    cmpl-float v8, v8, v3

    if-nez v8, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    cmpl-float v8, v8, v3

    if-nez v8, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v8

    cmpl-float v8, v8, v1

    if-nez v8, :cond_8

    if-eqz v5, :cond_5

    iget v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-le v8, v9, :cond_5

    iget v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->position:I

    iget-object v9, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v9

    if-lt v8, v9, :cond_8

    :cond_5
    iget-boolean v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    move v4, v0

    .line 3723
    :cond_8
    :goto_3
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isHwEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v1

    goto :goto_4

    :cond_9
    move/from16 v6, p6

    :goto_4
    if-nez v4, :cond_b

    .line 3726
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->isPreparing()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 3731
    invoke-super/range {v0 .. v6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->draw(Landroid/graphics/Canvas;JIIF)V

    goto :goto_6

    .line 3727
    :cond_b
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->prepareDraw(J)V

    move-object v0, p1

    .line 3728
    invoke-virtual {p0, p1, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInUiThread(Landroid/graphics/Canvas;F)V

    .line 3729
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :goto_6
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x0

    .line 3770
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 3892
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3893
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3894
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v2, :cond_1

    .line 3895
    iget-boolean v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-eqz v2, :cond_0

    .line 3896
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3897
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 3898
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_1

    .line 3900
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
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3910
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    .line 3911
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3912
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    move/from16 v4, p2

    move v5, v2

    .line 3913
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 3914
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3915
    iget-boolean v7, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v7, :cond_0

    goto/16 :goto_7

    .line 3919
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 3920
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v8, v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    if-nez v8, :cond_1

    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v8, :cond_3

    :cond_1
    const v8, 0x3f4ccccd    # 0.8f

    const v12, 0x3e4ccccd    # 0.2f

    .line 3921
    iget-boolean v13, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v13, :cond_2

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-eq v13, v10, :cond_2

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-eq v13, v9, :cond_2

    const v13, 0x3f333333    # 0.7f

    goto :goto_1

    :cond_2
    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v13

    :goto_1
    sub-float v13, v11, v13

    mul-float/2addr v12, v13

    add-float/2addr v8, v12

    mul-float/2addr v7, v8

    .line 3923
    :cond_3
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    const/4 v12, 0x1

    if-lez v8, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v18

    sub-long v16, v16, v18

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-gez v8, :cond_4

    move v8, v12

    goto :goto_2

    :cond_4
    move v8, v2

    :goto_2
    if-eqz v8, :cond_5

    .line 3924
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-ltz v13, :cond_5

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    if-ltz v13, :cond_5

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v16

    cmp-long v13, v16, v14

    if-lez v13, :cond_5

    goto :goto_3

    :cond_5
    move v12, v2

    :goto_3
    if-eqz v12, :cond_6

    .line 3926
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v12, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v12

    .line 3927
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    sub-int/2addr v12, v13

    .line 3928
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v14, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v14

    sub-int/2addr v13, v14

    if-ltz v12, :cond_7

    if-ge v12, v13, :cond_7

    .line 3930
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v14

    long-to-float v4, v14

    .line 3931
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v9, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-float v9, v14

    div-float/2addr v9, v4

    invoke-static {v9, v3, v11}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    int-to-float v9, v12

    int-to-float v12, v13

    const/high16 v13, 0x40800000    # 4.0f

    div-float v13, v12, v13

    .line 3932
    invoke-static {v4, v9, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v14

    .line 3933
    invoke-static {v4, v9, v12, v13}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v4

    .line 3934
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v9, v4}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v4, v9

    add-float/2addr v4, v9

    mul-float/2addr v7, v4

    move v4, v14

    goto :goto_4

    .line 3938
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v9

    mul-float/2addr v4, v9

    .line 3941
    :cond_7
    :goto_4
    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 3942
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v8, :cond_8

    .line 3943
    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v9, v2, v8}, Landroid/graphics/Rect;->offset(II)V

    :cond_8
    const/4 v8, 0x0

    .line 3946
    iget-boolean v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/16 v13, 0xff

    if-eqz v12, :cond_a

    .line 3947
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3948
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v12

    const/4 v14, 0x5

    if-ne v12, v14, :cond_9

    .line 3949
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    int-to-float v12, v12

    const v14, 0x3e19999a    # 0.15f

    mul-float/2addr v12, v14

    float-to-int v12, v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v15

    neg-int v15, v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v14, v15

    invoke-virtual {v9, v12, v14}, Landroid/graphics/Rect;->inset(II)V

    .line 3951
    :cond_9
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3952
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_5

    .line 3953
    :cond_a
    iget-boolean v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v12, :cond_d

    iget-boolean v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v12, :cond_d

    .line 3954
    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v8, :cond_13

    .line 3955
    iget-boolean v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v8, :cond_b

    goto/16 :goto_7

    .line 3958
    :cond_b
    iget-object v8, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_c

    goto/16 :goto_7

    .line 3962
    :cond_c
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3963
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 3964
    :cond_d
    iget-object v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v12, :cond_e

    .line 3965
    invoke-virtual {v12, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 3967
    :cond_e
    :goto_5
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v12

    if-eqz v12, :cond_f

    iget-object v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v13, v12, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v13, :cond_f

    .line 3968
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3970
    :cond_f
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skewAlpha:F

    iput v12, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 3971
    iput v5, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    cmpl-float v7, v7, v11

    if-nez v7, :cond_11

    cmpg-float v7, v12, v11

    if-gez v7, :cond_10

    goto :goto_6

    .line 3982
    :cond_10
    invoke-direct {v0, v1, v8, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    goto :goto_7

    .line 3973
    :cond_11
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3974
    iget-boolean v7, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_12

    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    if-eq v7, v10, :cond_12

    iget-object v7, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    const/4 v10, 0x4

    if-eq v7, v10, :cond_12

    .line 3976
    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f59999a    # 0.85f

    invoke-virtual {v1, v10, v10, v7, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3978
    :cond_12
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v0, v1, v5, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->skew(Landroid/graphics/Canvas;II)V

    .line 3979
    invoke-direct {v0, v1, v8, v6, v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;F)V

    .line 3980
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3985
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_15
    return-void
.end method

.method public onFrameReady()V
    .locals 4

    .line 4018
    invoke-super {p0}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onFrameReady()V

    const/4 v0, 0x0

    .line 4019
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4020
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4021
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v2, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 4022
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->release()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method public prepareDraw(J)V
    .locals 13

    .line 3776
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 3777
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 3778
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3779
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v3, :cond_0

    goto/16 :goto_8

    .line 3783
    :cond_0
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v3, :cond_7

    .line 3784
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3785
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const v7, 0x3fa66666    # 1.3f

    goto :goto_1

    :cond_1
    move v7, v5

    .line 3786
    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v8

    cmpl-float v4, v8, v4

    if-nez v4, :cond_2

    iget-boolean v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v4, :cond_4

    :cond_2
    const v4, 0x3f4ccccd    # 0.8f

    const v8, 0x3e4ccccd    # 0.2f

    .line 3787
    iget-boolean v9, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v9, :cond_3

    const v9, 0x3f333333    # 0.7f

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v9

    :goto_2
    sub-float/2addr v5, v9

    mul-float/2addr v5, v8

    add-float/2addr v5, v4

    mul-float/2addr v7, v5

    :cond_4
    if-nez v3, :cond_5

    goto/16 :goto_8

    :cond_5
    const/16 v4, 0xff

    .line 3792
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3794
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 3795
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v5, v8

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v5, v8

    .line 3796
    sget-object v8, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 3797
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v10

    mul-float/2addr v10, v4

    mul-float/2addr v10, v7

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 3798
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v11

    mul-float/2addr v11, v5

    mul-float/2addr v11, v7

    sub-float/2addr v10, v11

    float-to-int v10, v10

    .line 3799
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v12

    mul-float/2addr v4, v12

    mul-float/2addr v4, v7

    add-float/2addr v11, v4

    float-to-int v4, v11

    .line 3800
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    add-float/2addr v11, v5

    float-to-int v5, v11

    .line 3796
    invoke-virtual {v8, v9, v10, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3802
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v4, v5

    invoke-virtual {v8, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3803
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    if-nez v4, :cond_6

    .line 3804
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    .line 3806
    :cond_6
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3807
    invoke-virtual {v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3808
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3811
    :cond_7
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v3, :cond_a

    .line 3812
    :cond_8
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    .line 3814
    :cond_a
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-lez v3, :cond_b

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

    if-gez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_4

    :cond_b
    move v3, v0

    :goto_4
    if-eqz v3, :cond_d

    .line 3815
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ltz v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v3

    if-ltz v3, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v7

    cmp-long v3, v7, v9

    if-lez v3, :cond_d

    .line 3816
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 3817
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    sub-int/2addr v3, v7

    .line 3818
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v8

    sub-int/2addr v7, v8

    if-ltz v3, :cond_c

    if-ge v3, v7, :cond_c

    .line 3820
    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v8

    long-to-float v8, v8

    .line 3821
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

    .line 3822
    invoke-static {v4, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v9

    .line 3823
    invoke-static {v4, v3, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v3

    .line 3824
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->appearScaleInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v3}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    mul-float/2addr v9, v5

    goto :goto_5

    :cond_c
    move v9, v5

    goto :goto_5

    .line 3828
    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float v9, v5, v3

    .line 3831
    :goto_5
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-nez v3, :cond_11

    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-nez v3, :cond_11

    .line 3832
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_e

    goto/16 :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 3837
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v7, v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_f

    .line 3838
    move-object v3, v4

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    :cond_f
    if-eqz v3, :cond_15

    .line 3841
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    if-nez v4, :cond_10

    goto/16 :goto_8

    .line 3844
    :cond_10
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v9, v7

    float-to-int v7, v9

    .line 3845
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setAlpha(I)V

    .line 3846
    invoke-virtual {v2, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3847
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    .line 3849
    :cond_11
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3850
    invoke-virtual {v4, v9}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :goto_6
    if-nez v4, :cond_12

    goto/16 :goto_8

    .line 3856
    :cond_12
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    const/4 v7, 0x4

    if-eqz v3, :cond_13

    .line 3857
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    goto :goto_7

    .line 3859
    :cond_13
    invoke-virtual {v4, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 3861
    :goto_7
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v8, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v9, v3, v8

    invoke-virtual {v4, v9, v8}, Lorg/telegram/messenger/ImageReceiver;->setDrawInBackgroundThread(Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;I)Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    move-result-object v9

    aput-object v9, v3, v8

    .line 3862
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v8, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v3, v3, v8

    iput-wide p1, v3, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->time:J

    .line 3863
    iput-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 3865
    invoke-virtual {v2, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->update(J)V

    .line 3868
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    .line 3869
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 3870
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v3, v4, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 3871
    iget-boolean v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    const/4 v8, 0x3

    if-eq v4, v8, :cond_14

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v4

    if-eq v4, v7, :cond_14

    .line 3873
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    const v8, 0x3f5c28f6    # 0.86f

    mul-float/2addr v7, v8

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3874
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    mul-float/2addr v9, v8

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 3875
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 3876
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v6

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3872
    invoke-virtual {v3, v4, v7, v9, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3879
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v4, v6

    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3880
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->backgroundThreadDrawHolder:[Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;

    iget v6, p0, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->threadIndex:I

    aget-object v4, v4, v6

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/ImageReceiver$BackgroundThreadDrawHolder;->setBounds(Landroid/graphics/Rect;)V

    .line 3882
    iput v5, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    .line 3883
    iput v1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    .line 3885
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->drawInBackgroundViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_16
    return-void
.end method
