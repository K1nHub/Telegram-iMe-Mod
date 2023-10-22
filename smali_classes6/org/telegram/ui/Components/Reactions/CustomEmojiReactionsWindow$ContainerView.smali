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

    .line 703
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 704
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 698
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    .line 699
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 700
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    .line 742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 744
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 745
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 746
    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 747
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 748
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 705
    sget v0, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    .line 706
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadowPad:Landroid/graphics/Rect;

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 707
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    iget-object v2, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 708
    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 709
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const/4 v0, -0x1

    const v1, 0x3e051eb8    # 0.13f

    invoke-static {p2, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 711
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

    .line 752
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    if-nez v2, :cond_0

    return-void

    .line 755
    :cond_0
    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v1, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v12

    .line 756
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v3, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget v4, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    invoke-static {v3, v1, v4, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 758
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

    .line 761
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 762
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

    .line 765
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    div-float v2, v12, v15

    invoke-static {v2, v10, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 766
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

    .line 767
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 768
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v14, v14, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move/from16 v18, v8

    goto :goto_1

    .line 763
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

    .line 770
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 772
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

    .line 773
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

    .line 774
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 776
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 779
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

    .line 781
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    cmpl-float v1, v1, v15

    if-lez v1, :cond_4

    .line 782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 783
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

    .line 784
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 787
    :cond_4
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    .line 788
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    .line 789
    iput v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 790
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 791
    iput v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    .line 793
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 794
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_5

    .line 796
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 797
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_5

    .line 798
    iget-object v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 803
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    .line 805
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

    .line 807
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

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    sub-float v2, v10, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v2, v1, v10

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 810
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

    .line 812
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

    .line 813
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

    .line 814
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v7, v6, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    mul-float/2addr v5, v7

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

    invoke-virtual {v9, v3, v4, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/4 v7, -0x1

    move v6, v7

    .line 815
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_1c

    if-ne v6, v7, :cond_9

    .line 818
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    goto :goto_5

    .line 820
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_5
    move-object v5, v1

    .line 822
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v13, :cond_a

    goto/16 :goto_e

    .line 825
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 827
    instance-of v1, v5, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_1a

    .line 828
    move-object v1, v5

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 829
    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->transitionReactions:Ljava/util/HashMap;

    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_10

    .line 842
    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    .line 843
    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    if-ne v6, v7, :cond_b

    .line 845
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    sub-float/2addr v4, v7

    .line 846
    iget-object v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v7, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v7, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    sub-float/2addr v5, v7

    .line 848
    :cond_b
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

    .line 849
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

    .line 850
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    .line 851
    iget-boolean v11, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v11, :cond_c

    const v11, 0x3f5c28f6    # 0.86f

    mul-float/2addr v11, v8

    sub-float/2addr v8, v11

    div-float/2addr v8, v3

    add-float/2addr v7, v8

    add-float/2addr v13, v8

    move v8, v11

    .line 858
    :cond_c
    iget-object v11, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v11, v11, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v7, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 859
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v3, v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v5, v13, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 861
    iget-object v10, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 862
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    move/from16 v20, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 863
    iget v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->position:I

    const/16 v21, 0x6

    if-nez v6, :cond_d

    .line 864
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v6

    goto :goto_6

    .line 866
    :cond_d
    iget-boolean v6, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->selected:Z

    if-eqz v6, :cond_e

    .line 867
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    move/from16 v21, v6

    move/from16 v22, v21

    move/from16 v23, v22

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 870
    :goto_7
    invoke-virtual {v9, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 871
    invoke-virtual {v9, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 873
    iget v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    const/4 v11, 0x0

    cmpl-float v3, v3, v11

    if-nez v3, :cond_f

    iget v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_f

    .line 874
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

    .line 875
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

    .line 876
    iget-object v5, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v5, v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    .line 877
    iput v7, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    .line 878
    iput v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    :cond_f
    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    goto :goto_8

    :cond_10
    move/from16 v20, v6

    .line 881
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

    :goto_8
    if-eqz v2, :cond_15

    .line 885
    iget-boolean v7, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_11

    .line 886
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    .line 887
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    .line 888
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    sub-int v11, v11, v22

    int-to-float v11, v11

    .line 889
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    sub-int v8, v22, v21

    int-to-float v8, v8

    div-float/2addr v8, v10

    .line 890
    iget-object v10, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v10, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v11, v8, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    .line 891
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

    .line 892
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v7, v8

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-static {v11, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 893
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v8, v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v7, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_11
    move/from16 v21, v14

    move/from16 v22, v15

    :goto_9
    const/4 v7, 0x0

    .line 895
    iput-boolean v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    if-nez v8, :cond_12

    .line 915
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    move/from16 v8, v18

    const/4 v10, 0x0

    goto :goto_b

    .line 897
    :cond_12
    iget-object v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 898
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 899
    iget-object v8, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v8, v8, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 900
    iget-object v7, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v7, v7, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    .line 902
    :cond_13
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x4

    :goto_a
    if-ge v10, v11, :cond_14

    .line 904
    iget-object v13, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    aget v14, v8, v10

    aput v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 906
    :cond_14
    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/4 v10, 0x0

    .line 907
    invoke-static {v3, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    float-to-int v3, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 908
    invoke-static {v4, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    float-to-int v4, v4

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 909
    invoke-static {v5, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    iget-object v8, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v8, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 910
    invoke-static {v6, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    .line 906
    invoke-virtual {v7, v3, v4, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 912
    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 913
    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->radiusTmp:[I

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    move/from16 v8, v18

    .line 917
    :goto_b
    iput-boolean v8, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->drawSelected:Z

    .line 918
    iget-boolean v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-nez v3, :cond_18

    .line 919
    iput-boolean v8, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 920
    invoke-virtual {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    goto :goto_c

    :cond_15
    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    const/4 v10, 0x0

    .line 923
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v2, :cond_16

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-nez v2, :cond_16

    .line 924
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v2

    .line 925
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v12

    mul-float/2addr v5, v2

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 926
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 927
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    goto :goto_c

    .line 929
    :cond_16
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->checkPlayLoopImage()V

    .line 930
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 931
    iget-object v3, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v3, v3, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 932
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v2, v2, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    .line 934
    :cond_17
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, v12

    mul-float/2addr v5, v3

    .line 935
    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 936
    iget-object v4, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 937
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 940
    :cond_18
    :goto_c
    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_19

    .line 941
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_19
    move/from16 v14, v20

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v15, -0x1

    goto/16 :goto_d

    :cond_1a
    move/from16 v20, v6

    move v10, v11

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    .line 944
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

    .line 945
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

    .line 946
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

    .line 947
    invoke-virtual {v13, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 950
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    :cond_1b
    :goto_e
    move v2, v10

    move v10, v11

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v8, v18

    move v14, v6

    move v15, v7

    :goto_f
    add-int/lit8 v6, v14, 0x1

    move/from16 v18, v8

    move v11, v10

    move v7, v15

    move/from16 v14, v21

    move/from16 v15, v22

    const/16 v13, 0x8

    move v10, v2

    goto/16 :goto_4

    :cond_1c
    move/from16 v21, v14

    move v1, v15

    move/from16 v8, v18

    .line 952
    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_10

    :cond_1d
    move/from16 v21, v14

    move/from16 v8, v18

    .line 955
    :goto_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1e

    move v1, v8

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_20

    .line 957
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 958
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$902(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z

    .line 959
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 960
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v4, v21

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 962
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 963
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 964
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 965
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    .line 967
    :cond_20
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 970
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_22

    .line 971
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 972
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setSkipDraw(Z)V

    .line 974
    :cond_21
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1108(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    .line 977
    :cond_22
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v9, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 978
    iget-object v1, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$1200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 979
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 981
    :cond_23
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->exec()V

    return-void
.end method

.method public invalidate()V
    .locals 2

    .line 717
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 718
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

    .line 719
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateSearchBox()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 p2, 0x24

    .line 730
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p2, v0

    if-ge p2, p1, :cond_2

    move p1, p2

    goto :goto_1

    .line 727
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    :cond_2
    :goto_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 739
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
