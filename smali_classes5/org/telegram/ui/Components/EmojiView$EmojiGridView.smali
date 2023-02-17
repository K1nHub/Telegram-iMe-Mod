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

.field private touches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
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

    .line 3577
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 3578
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 3589
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 3590
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    .line 3591
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 3592
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    .line 3593
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 3749
    iput p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    .line 4139
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 4140
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v0, 0x15e

    invoke-direct {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 4

    .line 3596
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v1, 0x0

    .line 3597
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3598
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3599
    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v3, :cond_0

    .line 3600
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

    .line 3922
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$14400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    .line 3923
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    mul-long v0, v0, v2

    const-wide/16 v2, 0x258

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    .line 3927
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$14400(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 3928
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x23

    mul-long v0, v0, v2

    const-wide/16 v2, 0x190

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    .line 3918
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
    .locals 6

    .line 3897
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 3898
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3900
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3902
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    if-eqz v1, :cond_0

    .line 3904
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 3905
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-array v4, v3, [I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3907
    :cond_1
    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3908
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clearTouchesFor(Landroid/view/View;)V
    .locals 6

    .line 3880
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 3881
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 3882
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 3883
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    if-eqz v1, :cond_0

    .line 3885
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    .line 3886
    iget-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-array v4, v3, [I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3888
    :cond_1
    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3889
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 3753
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3755
    iget v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 3756
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    .line 3757
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lastChildCount:I

    :cond_0
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 3761
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3762
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3763
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3764
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3766
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3767
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v10, 0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->animateExpandDuration()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 3768
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14200(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    .line 3769
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v12, 0x0

    .line 3770
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v12, v1, :cond_8

    .line 3771
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridView;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 3772
    instance-of v1, v13, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v1, :cond_6

    .line 3773
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 3774
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 3776
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3777
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_4

    .line 3779
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3781
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3783
    :cond_5
    move-object v1, v13

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v11, :cond_7

    if-eqz v13, :cond_7

    .line 3786
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 3787
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$14300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v2

    sub-int/2addr v2, v10

    if-ne v1, v2, :cond_7

    .line 3788
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiView;->access$14100(Lorg/telegram/ui/Components/EmojiView;)J

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

    .line 3790
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

    mul-float v7, v7, v14

    float-to-int v7, v7

    const/16 v15, 0x1f

    move-object/from16 v1, p1

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3791
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v14, v14, v1

    add-float/2addr v14, v1

    .line 3793
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

    .line 3794
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$14200(Lorg/telegram/ui/Components/EmojiView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3795
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 3802
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3803
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3804
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 3807
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v13, v1, :cond_e

    .line 3808
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3809
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3810
    iget v4, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->position:I

    const/4 v5, 0x0

    .line 3812
    :goto_6
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 3813
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iget v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    if-ne v6, v4, :cond_9

    .line 3814
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    .line 3815
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    if-nez v2, :cond_c

    .line 3820
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3821
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    goto :goto_8

    .line 3823
    :cond_b
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 3825
    :goto_8
    iput v4, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->position:I

    .line 3826
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 3828
    :cond_c
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3829
    iput-object v1, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3830
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3831
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

    .line 3832
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->startOffset:I

    .line 3833
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v4

    .line 3834
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

    .line 3836
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 3838
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 3841
    :cond_e
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_10

    .line 3842
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_f

    .line 3843
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3844
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3845
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_a

    .line 3847
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 3850
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 4072
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
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4073
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
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    .line 4074
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_e

    .line 4076
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 4077
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 4078
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    if-nez v7, :cond_6

    .line 4079
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    .line 4082
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 4083
    invoke-virtual {p0, v7, v3}, Lorg/telegram/ui/Components/RecyclerListView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x15

    if-eqz v0, :cond_8

    if-eqz v8, :cond_e

    .line 4088
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridView;)V

    .line 4089
    iput v7, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    .line 4090
    iput v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->y:F

    .line 4091
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->time:J

    .line 4092
    iput-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 4093
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_7

    .line 4094
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4096
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 4097
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4098
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    goto/16 :goto_6

    .line 4101
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;

    if-eqz v8, :cond_c

    if-eqz v0, :cond_c

    .line 4102
    iget v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->x:F

    sub-float/2addr v7, v6

    float-to-double v6, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 4104
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

    mul-float v3, v3, v8

    float-to-double v10, v3

    cmpg-double v3, v6, v10

    if-gez v3, :cond_c

    if-nez v4, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 4107
    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

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

    .line 4109
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    .line 4110
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 4111
    instance-of v7, v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    if-eqz v7, :cond_a

    .line 4112
    check-cast v3, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 4113
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/4 v7, 0x0

    invoke-static {v6, v3, v7}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 4115
    :try_start_0
    invoke-virtual {p0, v5, v2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    goto :goto_5

    .line 4117
    :cond_a
    instance-of v7, v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    if-eqz v7, :cond_b

    .line 4118
    check-cast v3, Lorg/telegram/ui/Components/EmojiView$EmojiPackExpand;

    .line 4119
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object v7

    invoke-virtual {v7, v6, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->expand(ILandroid/view/View;)V

    .line 4121
    :try_start_1
    invoke-virtual {p0, v5, v2}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_b
    if-eqz v3, :cond_c

    .line 4124
    invoke-virtual {v3}, Landroid/view/View;->callOnClick()Z

    :cond_c
    :goto_5
    if-eqz v0, :cond_d

    .line 4127
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v3, :cond_d

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v9, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_d

    .line 4128
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-array v5, v1, [I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_d
    if-eqz v0, :cond_e

    .line 4130
    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$TouchDownInfo;->view:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 4131
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 4135
    :cond_e
    :goto_6
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_f

    if-nez v4, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->touches:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    :cond_f
    const/4 v1, 0x1

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

    .line 3855
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 3856
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 3861
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 3862
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Landroid/util/LongSparseArray;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3863
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3864
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3866
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3867
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3869
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3870
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3583
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

    .line 3584
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

    .line 3621
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7900(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13800(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3622
    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3623
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3624
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->access$13802(Lorg/telegram/ui/Components/EmojiView;Z)Z

    .line 3625
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3627
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 3628
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiView;->access$5300(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 3629
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->updateEmojiDrawables()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/4 v0, 0x1

    .line 3608
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3609
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3610
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 3611
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

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

    .line 3612
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    .line 3613
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 3614
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7800(Lorg/telegram/ui/Components/EmojiView;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 3615
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2

    .line 3738
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    if-nez p1, :cond_2

    const/4 p1, -0x1

    .line 3740
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3741
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/Components/EmojiView;->access$3200(Lorg/telegram/ui/Components/EmojiView;ZZ)V

    .line 3743
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3744
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$4900(Lorg/telegram/ui/Components/EmojiView;II)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 3642
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x3

    const v5, -0x39e3c000    # -10000.0f

    const/4 v6, 0x1

    if-eq v0, v6, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    goto/16 :goto_3

    .line 3696
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 3698
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6600(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    .line 3699
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6600(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v7, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v6}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v8

    cmpl-float v0, v0, v8

    if-gtz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$6800(Lorg/telegram/ui/Components/EmojiView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v7, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v7

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 3700
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3701
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v5}, Lorg/telegram/ui/Components/EmojiView;->access$6802(Lorg/telegram/ui/Components/EmojiView;F)F

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_11

    .line 3707
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3708
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v0

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v0, p1

    .line 3709
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3710
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7100(Lorg/telegram/ui/Components/EmojiView;)[I

    move-result-object p1

    aget p1, p1, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr p1, v4

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 3711
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6300(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    if-gez p1, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    if-le p1, v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, p1

    .line 3717
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result p1

    if-eq p1, v3, :cond_6

    const/16 p1, 0x9

    .line 3719
    :try_start_0
    invoke-virtual {p0, p1, v6}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3722
    :catch_0
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->setSelection(I)V

    goto/16 :goto_7

    .line 3644
    :cond_7
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3645
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 3648
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$7000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;->getSelection()I

    move-result p1

    const-string/jumbo v7, "\ud83c\udfff"

    const-string/jumbo v8, "\ud83c\udffe"

    const-string/jumbo v9, "\ud83c\udffd"

    const-string/jumbo v10, "\ud83c\udffc"

    const-string/jumbo v11, "\ud83c\udffb"

    if-eq p1, v6, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v3, :cond_8

    move-object p1, v0

    goto :goto_4

    :cond_8
    move-object p1, v7

    goto :goto_4

    :cond_9
    move-object p1, v8

    goto :goto_4

    :cond_a
    move-object p1, v9

    goto :goto_4

    :cond_b
    move-object p1, v10

    goto :goto_4

    :cond_c
    move-object p1, v11

    .line 3665
    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3666
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz p1, :cond_d

    .line 3668
    sget-object v2, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    invoke-static {v1, p1}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 3671
    :cond_d
    sget-object p1, Lorg/telegram/messenger/Emoji;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->access$5900(Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 3674
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3676
    :try_start_1
    invoke-virtual {p0, v4, v6}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3679
    :catch_1
    invoke-static {}, Lorg/telegram/messenger/Emoji;->saveEmojiColors()V

    goto :goto_6

    :cond_e
    const-string v2, ""

    .line 3681
    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3682
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3683
    invoke-virtual {v1, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3684
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 3685
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_f

    .line 3687
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v3

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/EmojiView;->access$6200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    goto :goto_6

    .line 3689
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$6500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lorg/telegram/ui/Components/EmojiView;->access$13900(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;Ljava/lang/String;)V

    .line 3693
    :cond_10
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/EmojiView;->access$6502(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;)Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;

    .line 3694
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$6602(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3695
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v5}, Lorg/telegram/ui/Components/EmojiView;->access$6802(Lorg/telegram/ui/Components/EmojiView;F)F

    :cond_11
    :goto_7
    return v6

    .line 3727
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6702(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3728
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$6902(Lorg/telegram/ui/Components/EmojiView;F)F

    .line 3729
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 3634
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3637
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    return-void
.end method

.method public updateEmojiDrawables()V
    .locals 4

    .line 3733
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->getAnimatedEmojiSpans()[Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridView;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$14000(Lorg/telegram/ui/Components/EmojiView;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, p0, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$14002(Lorg/telegram/ui/Components/EmojiView;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    return-void
.end method
