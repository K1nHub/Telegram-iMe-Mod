.class public Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
.super Ljava/lang/Object;
.source "CustomEmojiReactionsWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;
    }
.end annotation


# instance fields
.field animatingEnterChild:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field attachToParent:Z

.field baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private cascadeAnimation:Z

.field containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

.field private dismissProgress:F

.field private dismissed:Z

.field public drawingRect:Landroid/graphics/RectF;

.field enterTransitionFinished:Z

.field enterTransitionProgress:F

.field private frameDrawCount:I

.field fromRadius:F

.field fromRect:Landroid/graphics/RectF;

.field private invalidatePath:Z

.field isShowing:Z

.field keyboardHeight:F

.field location:[I

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onDismiss:Ljava/lang/Runnable;

.field private final pathToClipApi20:Landroid/graphics/Path;

.field reactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field private final type:I

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private wasFocused:Z

.field windowManager:Landroid/view/WindowManager;

.field public windowView:Landroid/widget/FrameLayout;

.field yTranslation:F


# direct methods
.method public static synthetic $r8$lambda$7V6OrWZnW44N7OsDyAfNUCiH36I(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSxSBS06qcwuCKyx8eBD51nbBL0(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JvNv5fVauNyrVsPKWguczaZYHCA(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$MitwF-3CQnapm97-taCnL5nCT5U(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$dismiss$8(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TB9-SUW_i8D6u7xKCSt9x2UdI4s(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aW5l4ihZFh7c6KGgVfzMqHtbDHQ(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$eE7qR02nwqiKrWiXTRdFu_aro0s(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7vNPxSlzxBRAODW87VZlJY3cTQ(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xMXJ8-z2GBVq_1ij0X2werKez8w(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$removeView$7()V

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;",
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;",
            "Lorg/telegram/ui/Components/ReactionsContainerLayout;",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    .line 83
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClipApi20:Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 334
    iput-object v1, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    .line 335
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 493
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    .line 494
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    const/4 v10, 0x0

    .line 673
    iput v10, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    .line 102
    iput v13, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    .line 103
    iput-object v14, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    .line 104
    iput-object v11, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v8, p6

    .line 105
    iput-object v8, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v11, :cond_0

    .line 106
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 107
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;

    invoke-direct {v1, v12, v9}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v1, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    .line 157
    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;

    invoke-direct {v2, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x1

    if-ne v13, v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v10

    .line 162
    :goto_1
    iput-boolean v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-direct {v0, v12, v9}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    .line 167
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    move v6, v0

    goto :goto_2

    :cond_2
    move v6, v7

    .line 168
    :goto_2
    new-instance v5, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;

    const/4 v4, 0x0

    const/16 v16, 0x0

    if-eq v13, v7, :cond_3

    move/from16 v17, v7

    goto :goto_3

    :cond_3
    move/from16 v17, v10

    :goto_3
    const/16 v18, 0x10

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object/from16 v19, v5

    move-object/from16 v5, v16

    move/from16 v7, v17

    move-object/from16 v8, p6

    move-object/from16 v16, v9

    move/from16 v9, v18

    move-object/from16 v10, p5

    move-object/from16 v11, p2

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v0, v19

    iput-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_4

    .line 222
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;

    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 236
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    .line 239
    :goto_4
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;

    invoke-direct {v2, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V

    .line 249
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;

    invoke-direct {v2, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V

    .line 255
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    .line 256
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-object/from16 v2, p4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReactions(Ljava/util/HashSet;)V

    .line 257
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDrawBackground(Z)V

    .line 258
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v6, 0x30

    const/16 v7, 0x10

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    if-eq v13, v1, :cond_5

    .line 262
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    :cond_5
    iget-object v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v3, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;

    invoke-direct {v3, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V

    .line 268
    :cond_6
    iget-boolean v0, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v0, :cond_7

    .line 269
    invoke-virtual/range {p5 .. p5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 270
    iget-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_5

    .line 272
    :cond_7
    invoke-direct {v12, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 273
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iput-object v3, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    .line 274
    iget-object v4, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    :goto_5
    iput-object v15, v12, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    .line 278
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;

    invoke-direct {v0, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setOnSwitchedToLoopView(Ljava/lang/Runnable;)V

    .line 279
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 280
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;

    invoke-direct {v0, v12, v15}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    const-wide/16 v3, 0x32

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 286
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateWindowPosition()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/graphics/Path;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClipApi20:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return p0
.end method

.method static synthetic access$1108(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 2

    .line 67
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 67
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->showUnlockPremiumAlert()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->checkAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)F
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p1
.end method

.method private checkAnimationEnd(Z)V
    .locals 2

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    .line 576
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->disableHw()V

    .line 577
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 578
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    if-eqz p1, :cond_1

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 582
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidateViews()V

    .line 583
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->checkInitialization()V

    .line 584
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    .line 585
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 586
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    goto :goto_0

    .line 588
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 589
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onCustomEmojiWindowOpened()V

    .line 591
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resetBackgroundBitmaps()V

    .line 592
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    :cond_1
    return-void
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 310
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 311
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 312
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-nez v1, :cond_0

    const/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v1, 0x63

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x10

    .line 313
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz p1, :cond_1

    const p1, 0x10100

    .line 315
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_1
    const p1, 0x10108

    .line 317
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    const/4 p1, -0x3

    .line 319
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method private createTransition(Z)V
    .locals 9

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    if-eqz p1, :cond_0

    .line 343
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 345
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    aget v4, v2, v3

    sub-int/2addr v0, v4

    const/16 v4, 0x2c

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    const/16 v4, 0x34

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/16 v4, 0x1a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    sub-int/2addr v0, v4

    int-to-float v0, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getTopOffset()F

    move-result v4

    add-float/2addr v0, v4

    .line 348
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v0, v0, v3

    aget v4, v2, v3

    sub-int/2addr v0, v4

    const/16 v4, 0xc

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 352
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :cond_3
    const/16 v4, 0x10

    .line 356
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    .line 357
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 360
    :cond_4
    iget v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    if-ne v6, v3, :cond_5

    .line 361
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v7, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    :cond_5
    if-ne v6, v1, :cond_6

    .line 363
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v5

    aget v7, v2, v5

    sub-int/2addr v6, v7

    const/16 v7, 0x12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 365
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v5

    aget v7, v2, v5

    sub-int/2addr v6, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_1
    if-nez p1, :cond_7

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    goto :goto_2

    .line 371
    :cond_7
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    .line 372
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 375
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v4, v4, v5

    aget v6, v2, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    sub-float/2addr v4, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    aget v6, v6, v3

    aget v2, v2, v3

    sub-int/2addr v6, v2

    int-to-float v2, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    sub-float/2addr v2, v6

    invoke-virtual {v0, v4, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    if-eqz p1, :cond_9

    .line 380
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lt v0, v1, :cond_8

    const/16 v0, 0x2008

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 381
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    goto :goto_4

    .line 383
    :cond_9
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 385
    :goto_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    .line 386
    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    .line 388
    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    .line 389
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    if-eqz p1, :cond_b

    iget-boolean v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v4, :cond_b

    move v4, v3

    goto :goto_5

    :cond_b
    move v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    .line 391
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    new-array v0, v1, [F

    .line 393
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    aput v1, v0, v5

    if-eqz p1, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_c
    aput v2, v0, v3

    invoke-static {v0}, Lorg/telegram/ui/Components/StableAnimator;->ofFloat([F)Lorg/telegram/ui/Components/StableAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 394
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_d

    .line 410
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames()V

    .line 412
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 437
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v0, :cond_e

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 441
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 442
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 444
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 445
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->switchLayerType(Z)V

    if-nez p1, :cond_f

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iput-boolean v3, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 448
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 449
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 452
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiReactionsBackground(Z)V

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 454
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;-><init>(Landroid/animation/ValueAnimator;)V

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    .line 456
    :goto_7
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    return-void
.end method

.method private getBlurOffset()F
    .locals 2

    .line 999
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0

    .line 1002
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private synthetic lambda$createTransition$5(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 396
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 397
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContainersAlpha()V

    .line 398
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateContentPosition()V

    .line 399
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    const/4 p2, 0x1

    .line 400
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    .line 402
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 403
    iget-object p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 405
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz p2, :cond_1

    .line 406
    iget p2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(FZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$dismiss$8(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 658
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissProgress:F

    .line 659
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 158
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/graphics/Canvas;IIIIFF)V
    .locals 9

    .line 264
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    move v0, p3

    int-to-float v0, v0

    move v1, p4

    int-to-float v1, v1

    move v3, p5

    int-to-float v3, v3

    move v4, p6

    int-to-float v4, v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 265
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    move-result-object v0

    move-object v8, p0

    iget-object v1, v8, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float v4, v1, p7

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->getBlurOffset()F

    move-result v1

    add-float v5, v1, p8

    const/4 v3, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 284
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    return-void
.end method

.method private synthetic lambda$removeView$7()V
    .locals 2

    .line 613
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->attachToParent:Z

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    goto :goto_0

    .line 620
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :catch_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 626
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateCascadeEnter$6(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 551
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 552
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 553
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 554
    invoke-direct {p0, v1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateWindowPosition$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 305
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->invalidate()V

    return-void
.end method

.method private setScaleForChild(Landroid/view/View;F)V
    .locals 1

    .line 497
    instance-of v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 498
    check-cast p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    goto :goto_0

    .line 499
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 501
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showUnlockPremiumAlert()V
    .locals 5

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private switchLayerType(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 480
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 481
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 482
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_1

    .line 483
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 484
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 485
    invoke-virtual {v1, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 488
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v0, p1, v2}, Landroid/widget/HorizontalScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method private syncReactionFrames()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 602
    iget-object v3, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v3, :cond_0

    .line 603
    iput-boolean v0, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 604
    invoke-virtual {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCascadeEnter(FZ)V
    .locals 11

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    .line 509
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v3, v5, :cond_3

    .line 510
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 511
    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v9, v0

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v6

    add-float/2addr v9, v10

    .line 515
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v9, v10

    if-gez v10, :cond_2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v9, v6

    if-lez v6, :cond_2

    cmpl-float v6, p1, v8

    if-eqz v6, :cond_2

    if-nez v2, :cond_1

    .line 517
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 519
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    :cond_2
    invoke-direct {p0, v5, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 526
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    add-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getY()F

    move-result v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 527
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 528
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 529
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 532
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v5, v9

    .line 533
    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->bottom:F

    cmpg-float v10, v5, v10

    if-gez v10, :cond_6

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_6

    cmpl-float v5, p1, v8

    if-eqz v5, :cond_6

    if-nez v2, :cond_5

    .line 535
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 537
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 540
    :cond_6
    invoke-direct {p0, v3, v8}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setScaleForChild(Landroid/view/View;F)V

    move v4, v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    if-eqz v2, :cond_9

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 548
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 550
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 558
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    .line 567
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 568
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateContainersAlpha()V
    .locals 2

    .line 460
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-nez v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateContentPosition()V
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetX:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionOffsetY:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePx:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScalePy:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget v1, v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;->enterTransitionScale:F

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private updateWindowPosition()V
    .locals 5

    .line 290
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 293
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    const/16 v1, 0x20

    .line 294
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 295
    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/16 v1, 0x18

    .line 296
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 298
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v3, v4

    int-to-float v1, v1

    sub-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    :cond_3
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    move v0, v1

    .line 304
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 632
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 635
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    .line 636
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 638
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    .line 639
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 640
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 2

    .line 649
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-nez p1, :cond_1

    .line 654
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 656
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 657
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 662
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$8;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 668
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 669
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dismissWithAlpha()V
    .locals 4

    .line 680
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 686
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$9;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 697
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 698
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 676
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public removeView()V
    .locals 5

    .line 611
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 612
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecentReactions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method
