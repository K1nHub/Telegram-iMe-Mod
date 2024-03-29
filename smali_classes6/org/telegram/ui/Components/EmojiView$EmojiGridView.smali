.class Lorg/telegram/ui/Components/EmojiView$EmojiGridView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmojiGridView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;
    }
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastChildCount:I

.field lineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field lineDrawablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private touches:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;",
            ">;"
        }
    .end annotation
.end field

.field unusedArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field

.field unusedLineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field viewsGroupedByLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 2

    .line 3334
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 3335
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 3346
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 3347
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    .line 3348
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 3349
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    .line 3350
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3482
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    .line 3873
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 3874
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x15e

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 4

    .line 3353
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v1, 0x0

    .line 3354
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3355
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3356
    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v3, :cond_0

    .line 3357
    check-cast v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->getSpan()Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public animateExpandAppearDuration()J
    .locals 4

    .line 3654
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    .line 3655
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x258

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    .line 3659
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 3660
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x23

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x190

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    .line 3650
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandAppearDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandCrossfadeDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x96

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public clearAllTouches()V
    .locals 5

    .line 3632
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 3633
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3634
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3635
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz v0, :cond_0

    .line 3638
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 3639
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-array v3, v1, [I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3641
    :cond_1
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3642
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearTouchesFor(Landroid/view/View;)V
    .locals 6

    .line 3613
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    .line 3614
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3615
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3616
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 3617
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    .line 3620
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_0

    .line 3621
    iget-object v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-array v4, v0, [I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3623
    :cond_0
    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3624
    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 3486
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3488
    iget v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3489
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    .line 3490
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    :cond_0
    const/4 v9, 0x0

    move v1, v9

    .line 3494
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3495
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3496
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3497
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3499
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3500
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13700(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v10, 0x1

    if-lez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$13700(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandDuration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    move v1, v10

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    if-eqz v1, :cond_3

    .line 3501
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13800(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    if-ltz v1, :cond_3

    move v11, v10

    goto :goto_2

    :cond_3
    move v11, v9

    .line 3502
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13600(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    if-eqz v1, :cond_8

    move v12, v9

    .line 3503
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v12, v1, :cond_8

    .line 3504
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3505
    instance-of v1, v13, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_6

    .line 3506
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 3507
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 3509
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3510
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_4

    .line 3512
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3514
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3516
    :cond_5
    move-object v1, v13

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v11, :cond_7

    if-eqz v13, :cond_7

    .line 3519
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 3520
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v2

    sub-int/2addr v2, v10

    if-ne v1, v2, :cond_7

    .line 3521
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$13700(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x430c0000    # 140.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    cmpg-float v2, v1, v4

    if-gez v2, :cond_7

    .line 3523
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    sub-float v14, v4, v1

    mul-float/2addr v7, v14

    float-to-int v7, v7

    const/16 v15, 0x1f

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3524
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v14, v1

    add-float/2addr v14, v1

    .line 3526
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v8, v14, v14, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3527
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$13800(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3528
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 3535
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3536
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3537
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move v13, v9

    .line 3540
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v13, v1, :cond_e

    .line 3541
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3542
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3543
    iget v4, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    move v5, v9

    .line 3545
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 3546
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iget v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    if-ne v6, v4, :cond_9

    .line 3547
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    .line 3548
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v2, :cond_c

    .line 3553
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3554
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    goto :goto_8

    .line 3556
    :cond_b
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 3558
    :goto_8
    iput v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    .line 3559
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 3561
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3562
    iput-object v1, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3563
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3564
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3565
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    .line 3566
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v4

    .line 3567
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    sub-int v6, v1, v3

    if-lez v5, :cond_d

    if-lez v6, :cond_d

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v2

    move-object/from16 v2, p1

    move-wide v3, v11

    .line 3569
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 3571
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 3574
    :cond_e
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_10

    .line 3575
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_f

    .line 3576
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3577
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3578
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_a

    .line 3580
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 3583
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 3805
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 3806
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 3807
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v4, v2

    goto :goto_4

    :cond_4
    move v4, v1

    :goto_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_e

    .line 3809
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 3810
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 3811
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    .line 3812
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    .line 3815
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 3816
    invoke-virtual {p0, v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x15

    if-eqz v0, :cond_8

    if-eqz v8, :cond_e

    .line 3821
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 3822
    iput v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    .line 3823
    iput v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->y:F

    .line 3824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->time:J

    .line 3825
    iput-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 3826
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_7

    .line 3827
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3829
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3830
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3831
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    goto/16 :goto_6

    .line 3834
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    .line 3835
    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    .line 3836
    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    sub-float/2addr v7, v6

    float-to-double v6, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 3838
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->y:F

    sub-float/2addr v3, v8

    float-to-double v12, v3

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v3, v8

    float-to-double v10, v3

    cmpg-double v3, v6, v10

    if-gez v3, :cond_c

    if-nez v4, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 3841
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v10, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->time:J

    sub-long/2addr v6, v10

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v10, v3

    cmp-long v3, v6, v10

    if-gez v3, :cond_c

    .line 3843
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 3844
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 3845
    instance-of v7, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v7, :cond_a

    .line 3846
    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3847
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/Components/EmojiView;->access$13500(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3849
    :try_start_0
    invoke-virtual {p0, v5, v2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 3851
    :cond_a
    instance-of v7, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    if-eqz v7, :cond_b

    .line 3852
    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    .line 3853
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->expand(ILandroid/view/View;)V

    .line 3855
    :try_start_1
    invoke-virtual {p0, v5, v2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_c

    .line 3858
    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    :catch_0
    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 3861
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v3, :cond_d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_d

    .line 3862
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-array v5, v1, [I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_d
    if-eqz v0, :cond_e

    .line 3864
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 3865
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3869
    :cond_e
    :goto_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_f

    if-nez v4, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 3588
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 3589
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 3594
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13600(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Landroid/util/LongSparseArray;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3596
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3597
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3599
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3600
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3602
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3603
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3340
    invoke-static {}, Lorg/telegram/ui/ContentPreviewViewer;->getInstance()Lorg/telegram/ui/ContentPreviewViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v4, v1, Lorg/telegram/ui/Components/EmojiView;->contentPreviewViewerDelegate:Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    iget-object v5, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/ui/Components/RecyclerListView;ILorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    .line 3341
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 3378
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3379
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3380
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3381
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$13402(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 3382
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3384
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 3385
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$5400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3386
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x1

    .line 3365
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3366
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3367
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 3368
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3c

    goto :goto_0

    :cond_0
    const/16 v4, 0x2d

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    div-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    const/4 v0, 0x0

    .line 3369
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3370
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 3371
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7200(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 3372
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 3471
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 3473
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3474
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3476
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3477
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$5000(Lorg/telegram/ui/Components/EmojiView;II)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 3399
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const v2, -0x39e3c000    # -10000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 3438
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_b

    .line 3440
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 3441
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6400(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6600(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    .line 3442
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$6402(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3443
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    :cond_3
    move v0, v3

    :goto_1
    if-nez v0, :cond_b

    .line 3449
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3450
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    add-float/2addr v0, v2

    .line 3451
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->pickerView:Lorg/telegram/ui/Components/EmojiColorPickerWindow$EmojiColorPickerView;

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3452
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6900(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v2, v1

    int-to-float v1, v2

    sub-float/2addr v0, v1

    .line 3453
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v1

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->onTouchMove(I)V

    goto/16 :goto_5

    .line 3401
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3402
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->dismiss()V

    .line 3404
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->getSkinTone(I)Ljava/lang/String;

    move-result-object v0

    .line 3405
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3406
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$6000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v6

    if-nez v6, :cond_6

    if-eqz v0, :cond_5

    .line 3408
    sget-object v6, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    invoke-static {v3, v0}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 3411
    :cond_5
    sget-object v0, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3413
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v0

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$6000(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v6

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 3414
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v3

    invoke-static {v0, v3, v5}, Lorg/telegram/ui/Components/EmojiView;->access$13500(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3416
    :try_start_0
    invoke-virtual {p0, v1, v4}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3419
    :catch_0
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveEmojiColors()V

    goto :goto_4

    :cond_6
    const-string v1, "\ud83c\udffb"

    const-string v6, ""

    .line 3421
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffc"

    .line 3422
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffd"

    .line 3423
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udffe"

    .line 3424
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\ud83c\udfff"

    .line 3425
    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    .line 3427
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v6

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/EmojiView;->addColorToCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v6, v0}, Lorg/telegram/ui/Components/EmojiView;->access$13500(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    goto :goto_4

    .line 3429
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lorg/telegram/ui/Components/EmojiView;->access$13500(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3433
    :cond_8
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3434
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/EmojiView;->access$6302(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3436
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$6402(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3437
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3456
    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiColorPickerWindow;->isCompound()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiColorPickerWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return v4

    .line 3460
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6502(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3461
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6702(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3462
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 3391
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3394
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public updateEmojiDrawables()V
    .locals 4

    .line 3466
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v0, Lorg/telegram/ui/Components/EmojiView;->emojiCacheType:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$13600(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-static {v1, p0, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$13602(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    return-void
.end method
