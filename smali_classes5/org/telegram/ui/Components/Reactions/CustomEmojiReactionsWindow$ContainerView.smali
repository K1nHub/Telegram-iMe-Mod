.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source "CustomEmojiReactionsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field backgroundPaint:Landroid/graphics/Paint;

.field private dimPaint:Landroid/graphics/Paint;

.field radiusTmp:[I

.field shadow:Landroid/graphics/drawable/Drawable;

.field shadowPad:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field transitionReactions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            "Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V
    .locals 3

    .line 500
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 501
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 494
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    .line 495
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    .line 496
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->dimPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 497
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    .line 502
    sget v0, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    .line 503
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 504
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v2, "chat_messagePanelShadow"

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 505
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v0, "actionBarDefaultSubmenuBackground"

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 526
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    if-nez v2, :cond_0

    return-void

    .line 529
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v11

    .line 530
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->dimPaint:Landroid/graphics/Paint;

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v11

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v2, v2, v12

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 531
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 532
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v10, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 533
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v4, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-static {v3, v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 534
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    const/16 v13, 0x8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v14

    .line 536
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    const v2, 0x3d4ccccd    # 0.05f

    div-float v3, v11, v2

    invoke-static {v3, v9, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 537
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v6

    iget v6, v3, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v3, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v15, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v15

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    invoke-virtual {v1, v4, v6, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 538
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 540
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 541
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v14, v14, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 543
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    add-float/2addr v4, v1

    .line 545
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 546
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 547
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-virtual {v8, v4, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 548
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 557
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v7, 0x1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    .line 558
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 559
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_2

    .line 560
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 561
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_2

    .line 562
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 567
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 569
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v4, v9, v4

    mul-float v1, v1, v4

    add-float/2addr v2, v1

    invoke-virtual {v8, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 571
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v2, v9, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v2, v1, v9

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 573
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v1, v1, v12

    float-to-int v1, v1

    const/16 v16, 0x1f

    move/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v18, v6

    move/from16 v6, v17

    const/16 v17, 0x1

    move/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    :cond_4
    move/from16 v18, v6

    const/16 v17, 0x1

    .line 575
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 576
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, v2

    int-to-float v4, v1

    const/16 v5, 0x24

    .line 577
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    iget-object v5, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v8, v3, v4, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 578
    :goto_2
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_18

    .line 580
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_6

    if-ne v6, v7, :cond_6

    :cond_5
    :goto_3
    move v15, v6

    move/from16 v25, v14

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/16 v17, -0x1

    goto/16 :goto_d

    :cond_6
    if-ne v6, v7, :cond_7

    .line 584
    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_4

    .line 586
    :cond_7
    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_4
    move-object v5, v1

    .line 588
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_8

    goto :goto_3

    .line 591
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 593
    instance-of v1, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_17

    .line 594
    move-object v1, v5

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 595
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_e

    .line 608
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    .line 609
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    if-ne v6, v7, :cond_9

    .line 611
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    sub-float/2addr v4, v7

    .line 612
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    sub-float/2addr v5, v7

    .line 614
    :cond_9
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v13, v13, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getX()F

    move-result v13

    add-float/2addr v7, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v13, v13, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v13, v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getX()F

    move-result v13

    add-float/2addr v7, v13

    iget-object v13, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v13}, Landroid/view/View;->getX()F

    move-result v13

    sub-float/2addr v7, v13

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v7, v13

    .line 615
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v13

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getY()F

    move-result v12

    add-float/2addr v13, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getY()F

    move-result v12

    add-float/2addr v13, v12

    iget-object v12, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v12, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v12, v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getY()F

    move-result v12

    add-float/2addr v13, v12

    iget-object v12, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    sub-float/2addr v13, v12

    .line 616
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    .line 617
    iget-boolean v15, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v15, :cond_a

    const v15, 0x3f5c28f6    # 0.86f

    mul-float v15, v15, v12

    sub-float/2addr v12, v15

    div-float/2addr v12, v3

    add-float/2addr v7, v12

    add-float/2addr v13, v12

    move v12, v15

    .line 624
    :cond_a
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v15, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v7, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v15

    .line 625
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v5, v13, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 627
    iget-object v10, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v12, v10

    .line 628
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v9, v12, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 629
    iget v9, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/16 v24, 0x6

    if-nez v9, :cond_b

    .line 630
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    move/from16 v24, v9

    goto :goto_5

    .line 632
    :cond_b
    iget-boolean v9, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v9, :cond_c

    .line 633
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    move/from16 v24, v9

    move/from16 v25, v24

    move/from16 v26, v25

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    const/16 v24, 0x0

    :goto_5
    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 636
    :goto_6
    invoke-virtual {v8, v15, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 637
    invoke-virtual {v8, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v3, 0x0

    cmpl-float v15, v16, v3

    if-nez v15, :cond_d

    cmpl-float v15, v19, v3

    if-nez v15, :cond_d

    .line 640
    iget-object v15, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    sub-float/2addr v3, v7

    iget v4, v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v15, 0x0

    invoke-static {v3, v15, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v16

    .line 641
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v13

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v15, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v19

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v12

    .line 642
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v20

    move/from16 v21, v7

    move/from16 v22, v13

    :cond_d
    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    goto :goto_7

    .line 647
    :cond_e
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_7
    if-eqz v2, :cond_13

    .line 651
    iget-boolean v7, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_f

    .line 652
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v7, v13

    .line 653
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v13

    .line 654
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    sub-int v13, v13, v25

    int-to-float v13, v13

    .line 655
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v25

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v24

    sub-int v12, v25, v24

    int-to-float v12, v12

    div-float/2addr v12, v10

    .line 656
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v13, v12, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 657
    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v23, 0x40000000    # 2.0f

    div-float v10, v10, v23

    move/from16 v24, v6

    sub-float v6, v7, v10

    move/from16 v25, v14

    sub-float v14, v15, v10

    add-float/2addr v7, v10

    add-float/2addr v15, v10

    invoke-virtual {v12, v6, v14, v7, v15}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v13, v13, v23

    const/4 v6, 0x4

    .line 658
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v6, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v13, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    .line 659
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v12, v6, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_f
    move/from16 v24, v6

    move/from16 v25, v14

    :goto_8
    const/4 v6, 0x0

    .line 661
    iput-boolean v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    const/4 v6, 0x0

    cmpl-float v7, v9, v6

    if-nez v7, :cond_10

    .line 680
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_a

    .line 663
    :cond_10
    iget-object v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    .line 664
    iget-object v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 665
    iget-object v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v6, v6, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v6

    .line 667
    :cond_11
    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v7

    const/4 v10, 0x0

    const/4 v12, 0x4

    :goto_9
    if-ge v10, v12, :cond_12

    .line 669
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    aget v14, v7, v10

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 671
    :cond_12
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v10, 0x0

    .line 672
    invoke-static {v3, v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 673
    invoke-static {v4, v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 674
    invoke-static {v5, v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 675
    invoke-static {v9, v10, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    float-to-int v7, v7

    .line 671
    invoke-virtual {v6, v3, v4, v5, v7}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 677
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 678
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    const/4 v9, 0x1

    .line 682
    :goto_a
    iput-boolean v9, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 683
    iget-boolean v1, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v1, :cond_16

    .line 684
    iput-boolean v9, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 685
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_b

    :cond_13
    move/from16 v24, v6

    move/from16 v25, v14

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 688
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v2, :cond_14

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-nez v2, :cond_14

    .line 689
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v2

    .line 690
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v11

    mul-float v5, v5, v2

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 691
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 692
    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_b

    .line 694
    :cond_14
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 695
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 696
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 698
    :cond_15
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v11

    mul-float v5, v5, v3

    .line 699
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 700
    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 701
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    :cond_16
    :goto_b
    move/from16 v15, v24

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v12, 0x437f0000    # 255.0f

    const/16 v17, -0x1

    goto/16 :goto_c

    :cond_17
    move/from16 v24, v6

    move/from16 v25, v14

    const/4 v9, 0x1

    .line 705
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v4

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 706
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v11

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float v7, v7, v12

    float-to-int v7, v7

    const/16 v13, 0x1f

    move-object/from16 v1, p1

    move-object v14, v5

    move v5, v6

    move/from16 v15, v24

    move v6, v7

    const/16 v17, -0x1

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 707
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    sub-float v1, v2, v1

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    shr-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    shr-int/2addr v5, v9

    int-to-float v5, v5

    invoke-virtual {v8, v3, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 708
    invoke-virtual {v14, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 711
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_d
    add-int/lit8 v6, v15, 0x1

    move/from16 v14, v25

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v13, 0x8

    const/16 v17, 0x1

    goto/16 :goto_2

    :cond_18
    move/from16 v25, v14

    move/from16 v1, v18

    const/4 v9, 0x1

    .line 713
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    goto :goto_e

    :cond_19
    move/from16 v25, v14

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    .line 716
    :goto_e
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 717
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$702(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z

    .line 718
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClip:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 719
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v6, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClip:Landroid/graphics/Path;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v11, v25

    invoke-virtual {v6, v5, v11, v11, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 721
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 722
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClip:Landroid/graphics/Path;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 723
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_f

    :cond_1b
    move/from16 v10, v16

    :goto_f
    invoke-virtual {v8, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 724
    invoke-virtual {v8, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 725
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 726
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 728
    :cond_1c
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 729
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 731
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1e

    .line 732
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    .line 735
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$908(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    .line 738
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v8, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 739
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 510
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p2, 0x24

    .line 511
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_0

    move p1, p2

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    .line 519
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
