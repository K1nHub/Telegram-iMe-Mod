.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmojiListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;
    }
.end annotation


# instance fields
.field private animatedEmojiDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private invalidated:Z

.field lineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field lineDrawablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field unusedArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field

.field unusedLineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field viewsGroupedByLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V
    .locals 0

    .line 3309
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 3310
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 3318
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 3319
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    .line 3320
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    .line 3321
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    .line 3322
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 3325
    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    const/4 p1, 0x1

    .line 3312
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setDrawSelectorBehind(Z)V

    const/4 p1, 0x0

    .line 3313
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x4

    .line 3314
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorRadius(I)V

    .line 3315
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string p2, "listSelectorSDK21"

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)Landroid/util/LongSparseArray;
    .locals 0

    .line 3306
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method private release(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3859
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3860
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3862
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 2

    .line 3337
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->empty:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->canOverrideColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "windowBackgroundWhiteBlueIcon"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    goto :goto_0

    .line 3340
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "listSelectorSDK21"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 3342
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 3355
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v9, 0x0

    .line 3358
    iput-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    .line 3359
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v10

    .line 3361
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3362
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3363
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3364
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_1

    .line 3365
    invoke-interface {v1, v8}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 3367
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3368
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    move v1, v9

    .line 3371
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3372
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3373
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3374
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3376
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 3377
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x1

    if-lez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandDuration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    move v1, v11

    goto :goto_1

    :cond_4
    move v1, v9

    :goto_1
    if-eqz v1, :cond_5

    .line 3378
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v1

    if-ltz v1, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    move v12, v9

    .line 3379
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->animatedEmojiDrawables:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_d

    move v13, v9

    .line 3380
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v13, v1, :cond_d

    .line 3381
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3382
    instance-of v1, v14, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v1, :cond_a

    .line 3383
    move-object v1, v14

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3384
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->updatePressedProgress()V

    .line 3385
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    .line 3386
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3389
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3390
    invoke-virtual {v1, v8, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawSelected(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 3391
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3393
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 3394
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v7, v15

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v4, v5, v6, v7, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/16 v4, 0xff

    .line 3396
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    int-to-float v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3397
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3398
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    if-nez v3, :cond_9

    .line 3402
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 3403
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_5

    .line 3405
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3407
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3409
    :cond_9
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3410
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 3411
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v2, :cond_a

    .line 3412
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    :cond_a
    if-eqz v12, :cond_c

    if-eqz v14, :cond_c

    .line 3417
    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 3418
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    move v3, v9

    goto :goto_6

    :cond_b
    move v3, v11

    :goto_6
    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_c

    .line 3419
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J

    move-result-wide v5

    sub-long/2addr v2, v5

    long-to-float v2, v2

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    cmpg-float v2, v1, v3

    if-gez v2, :cond_c

    .line 3421
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    sub-float v15, v3, v1

    mul-float/2addr v7, v15

    float-to-int v7, v7

    const/16 v16, 0x1f

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 3422
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v15, v1

    add-float/2addr v15, v1

    .line 3424
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v8, v15, v15, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 3425
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3426
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 3433
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3434
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3435
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move v14, v9

    .line 3438
    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v14, v1, :cond_13

    .line 3439
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3440
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3441
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    move v5, v9

    .line 3443
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 3444
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    iget v6, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->position:I

    if-ne v6, v4, :cond_e

    .line 3445
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    .line 3446
    iget-object v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    if-nez v2, :cond_11

    .line 3451
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 3452
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    goto :goto_a

    .line 3454
    :cond_10
    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-direct {v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;)V

    const/4 v5, 0x7

    .line 3455
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    .line 3457
    :goto_a
    iput v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->position:I

    .line 3458
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 3460
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3461
    iput-object v1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3462
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3463
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v8, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3464
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    .line 3465
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v5, v1, v4

    .line 3466
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-lez v5, :cond_12

    if-lez v6, :cond_12

    .line 3468
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v7

    move-object v1, v2

    move-object/from16 v2, p1

    move-wide v3, v12

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 3470
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    :cond_13
    move v1, v9

    .line 3473
    :goto_b
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 3474
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_14

    .line 3475
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3476
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    iput-object v2, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 3477
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_c

    .line 3479
    :cond_14
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3482
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3484
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v9, v1, :cond_18

    .line 3485
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3486
    instance-of v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_16

    .line 3487
    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 3488
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_17

    .line 3489
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3491
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 3492
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 3490
    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3494
    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 3495
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_e

    :cond_16
    if-eqz v1, :cond_17

    .line 3497
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_17

    .line 3498
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3499
    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3500
    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3501
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_17
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 3505
    :cond_18
    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 3332
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public invalidate()V
    .locals 1

    .line 3867
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3870
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidated:Z

    .line 3871
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 3841
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 3842
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-ne p0, v1, :cond_0

    .line 3843
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3849
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 3850
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-ne p0, v1, :cond_0

    .line 3851
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 3853
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    .line 3854
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    .line 3855
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->release(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 3349
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 3350
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method
