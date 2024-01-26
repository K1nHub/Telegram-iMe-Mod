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

.field enterTransitionOffsetX:F

.field enterTransitionOffsetY:F

.field enterTransitionScale:F

.field enterTransitionScalePx:F

.field enterTransitionScalePy:F

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

    .line 710
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 711
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 705
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    .line 706
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 707
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    .line 754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 756
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 757
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 758
    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 759
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 760
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 712
    sget v0, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    .line 713
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 715
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 716
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const/4 v0, -0x1

    const v1, 0x3e051eb8    # 0.13f

    invoke-static {p2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 764
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    if-nez v2, :cond_0

    return-void

    .line 767
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v12

    .line 768
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 769
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v4, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-static {v3, v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 770
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

    .line 773
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 774
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const v15, 0x3d4ccccd    # 0.05f

    const/high16 v16, 0x437f0000    # 255.0f

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 777
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    div-float v2, v12, v15

    invoke-static {v2, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 778
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v2, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v3, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 779
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 780
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v14, v14, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v18, v8

    goto :goto_1

    .line 775
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)F

    move-result v6

    const/16 v7, 0xff

    const/16 v17, 0x1

    move-object/from16 v2, p1

    move v4, v14

    move/from16 v18, v8

    move/from16 v8, v17

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    .line 782
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 783
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getY()F

    move-result v1

    add-float/2addr v2, v1

    invoke-virtual {v9, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 785
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    mul-float v1, v1, v16

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v6, v10, v6

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 786
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 791
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v3, v1

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    cmpl-float v1, v1, v15

    if-lez v1, :cond_4

    .line 794
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    add-float/2addr v4, v1

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 796
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 797
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 799
    :cond_4
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 800
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    .line 801
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 802
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 803
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 805
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    .line 806
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 807
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_5

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 809
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_5

    .line 810
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 815
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v1

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v4

    add-float/2addr v1, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v4, v10, v4

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    invoke-virtual {v9, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 819
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    goto :goto_3

    :cond_7
    move v1, v11

    :goto_3
    sub-float v1, v10, v1

    .line 820
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v2, v10, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 822
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v4, v4, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v1, v1, v16

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 824
    :cond_8
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

    .line 825
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

    .line 826
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_9

    move/from16 v3, v18

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    int-to-float v4, v2

    if-eqz v3, :cond_a

    int-to-float v3, v1

    const/16 v5, 0x24

    .line 827
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    goto :goto_5

    :cond_a
    move v3, v11

    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v9, v4, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v7, -0x1

    move v6, v7

    .line 828
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_1e

    if-ne v6, v7, :cond_b

    .line 831
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_7

    .line 833
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_7
    move-object v5, v1

    .line 835
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1d

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_c

    goto/16 :goto_10

    .line 838
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 840
    instance-of v1, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_1c

    .line 841
    move-object v1, v5

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 842
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_12

    .line 855
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    .line 856
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    if-ne v6, v7, :cond_d

    .line 858
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    sub-float/2addr v4, v7

    .line 859
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    sub-float/2addr v5, v7

    .line 861
    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->getX()F

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

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v7, v13

    .line 862
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v13

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    add-float/2addr v13, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    add-float/2addr v13, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    add-float/2addr v13, v8

    iget-object v8, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v8}, Landroid/view/View;->getY()F

    move-result v8

    sub-float/2addr v13, v8

    .line 863
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    .line 864
    iget-boolean v11, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v11, :cond_e

    const v11, 0x3f5c28f6    # 0.86f

    mul-float/2addr v11, v8

    sub-float/2addr v8, v11

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    add-float/2addr v13, v8

    move v8, v11

    .line 871
    :cond_e
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v11, v11, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v7, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 872
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v5, v13, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 874
    iget-object v10, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 875
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    move/from16 v20, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 876
    iget v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/16 v21, 0x6

    if-nez v6, :cond_f

    .line 877
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v6

    goto :goto_8

    .line 879
    :cond_f
    iget-boolean v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v6, :cond_10

    .line 880
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v6

    move/from16 v22, v21

    move/from16 v23, v22

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    const/16 v21, 0x0

    :goto_8
    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 883
    :goto_9
    invoke-virtual {v9, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 884
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 886
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    const/4 v11, 0x0

    cmpl-float v3, v3, v11

    if-nez v3, :cond_11

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_11

    .line 887
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v11, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v11, v4

    sub-float/2addr v11, v7

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v4, 0x0

    invoke-static {v11, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 888
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v11, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v11, v5

    sub-float/2addr v11, v13

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v11, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v8

    .line 889
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 890
    iput v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 891
    iput v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    :cond_11
    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    goto :goto_a

    :cond_12
    move/from16 v20, v6

    .line 894
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

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_a
    if-eqz v2, :cond_17

    .line 898
    iget-boolean v7, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_13

    .line 899
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    .line 900
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 901
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    sub-int v11, v11, v22

    int-to-float v11, v11

    .line 902
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    sub-int v8, v22, v21

    int-to-float v8, v8

    div-float/2addr v8, v10

    .line 903
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v11, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    .line 904
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v19, 0x40000000    # 2.0f

    div-float v8, v8, v19

    move/from16 v21, v14

    sub-float v14, v7, v8

    move/from16 v22, v15

    sub-float v15, v13, v8

    add-float/2addr v7, v8

    add-float/2addr v13, v8

    invoke-virtual {v10, v14, v15, v7, v13}, Landroid/graphics/RectF;->set(FFFF)V

    div-float v11, v11, v19

    const/4 v7, 0x4

    .line 905
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v11, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 906
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_b

    :cond_13
    move/from16 v21, v14

    move/from16 v22, v15

    :goto_b
    const/4 v7, 0x0

    .line 908
    iput-boolean v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-nez v8, :cond_14

    .line 928
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    move/from16 v8, v18

    const/4 v10, 0x0

    goto :goto_d

    .line 910
    :cond_14
    iget-object v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 911
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 912
    iget-object v8, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v8, v8, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-eqz v8, :cond_15

    .line 913
    iget-object v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 915
    :cond_15
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x4

    :goto_c
    if-ge v10, v11, :cond_16

    .line 917
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    aget v14, v8, v10

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 919
    :cond_16
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v10, 0x0

    .line 920
    invoke-static {v3, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 921
    invoke-static {v4, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 922
    invoke-static {v5, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 923
    invoke-static {v6, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    .line 919
    invoke-virtual {v7, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 925
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 926
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    move/from16 v8, v18

    .line 930
    :goto_d
    iput-boolean v8, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 931
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v3, :cond_1a

    .line 932
    iput-boolean v8, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 933
    invoke-virtual {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    goto :goto_e

    :cond_17
    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    const/4 v10, 0x0

    .line 936
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-nez v2, :cond_18

    .line 937
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v2

    .line 938
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v12

    mul-float/2addr v5, v2

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 939
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 940
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_e

    .line 942
    :cond_18
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 943
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 944
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 945
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 947
    :cond_19
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v12

    mul-float/2addr v5, v3

    .line 948
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 949
    iget-object v4, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 950
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 953
    :cond_1a
    :goto_e
    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1b

    .line 954
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_1b
    move/from16 v14, v20

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v15, -0x1

    goto/16 :goto_f

    :cond_1c
    move/from16 v20, v6

    move v10, v11

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    .line 957
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

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 958
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v6, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v7, v1, v12

    mul-float v7, v7, v16

    float-to-int v7, v7

    const/16 v11, 0x1f

    move-object/from16 v1, p1

    move-object v13, v5

    move v5, v6

    move/from16 v14, v20

    move v6, v7

    const/4 v15, -0x1

    move v7, v11

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v1

    sub-float v1, v2, v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    shr-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    shr-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual {v9, v3, v1, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 960
    invoke-virtual {v13, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 963
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    :cond_1d
    :goto_10
    move v2, v10

    move v10, v11

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    move v14, v6

    move v15, v7

    :goto_11
    add-int/lit8 v6, v14, 0x1

    move/from16 v18, v8

    move v11, v10

    move v7, v15

    move/from16 v14, v21

    move/from16 v15, v22

    const/16 v13, 0x8

    move v10, v2

    goto/16 :goto_6

    :cond_1e
    move/from16 v21, v14

    move v1, v15

    move/from16 v8, v18

    .line 965
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_12

    :cond_1f
    move/from16 v21, v14

    move/from16 v8, v18

    .line 968
    :goto_12
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_20

    move v1, v8

    goto :goto_13

    :cond_20
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_22

    .line 970
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 971
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$902(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z

    .line 972
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 973
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v4, v21

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 975
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 976
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 977
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    .line 980
    :cond_22
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 983
    :goto_14
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_24

    .line 984
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_23

    .line 985
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    .line 987
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1108(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    .line 990
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v9, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 991
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 992
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 994
    :cond_25
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->exec()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 724
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateSearchBox()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 733
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/16 v1, 0x24

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 736
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 737
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/2addr p2, v2

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_2

    move p1, p2

    goto :goto_1

    .line 734
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 743
    :cond_2
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 744
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p2, p2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x41000000    # 8.0f

    div-float/2addr p2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    if-gt p2, v2, :cond_3

    .line 746
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    mul-int/2addr p2, v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    .line 748
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/2addr p2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_2

    :cond_4
    move p2, p1

    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 751
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
