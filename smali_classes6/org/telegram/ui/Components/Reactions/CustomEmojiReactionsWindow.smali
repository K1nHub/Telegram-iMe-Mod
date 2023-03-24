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
.field private account:I

.field animatingEnterChild:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field animationIndex:I

.field animators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

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

.field private onDismiss:Ljava/lang/Runnable;

.field pathToClip:Landroid/graphics/Path;

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

.field private valueAnimator:Landroid/animation/ValueAnimator;

.field private wasFocused:Z

.field windowManager:Landroid/view/WindowManager;

.field windowView:Landroid/widget/FrameLayout;

.field yTranslation:F


# direct methods
.method public static synthetic $r8$lambda$HAR-04I9xh2LdSPICzB2_aHJac0(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WbAW521i9_YX4Nh9VWFUSxEeduQ(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$removeView$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$eVX-6BdupcVqDcP6oYLJ654UQrg(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$updateCascadeEnter$3(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7vNPxSlzxBRAODW87VZlJY3cTQ(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y5tQg-mPkePbw43ob4_Z-xJlbtI(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$createTransition$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y7ktUklByTltIL4zrXf1mqWycy8(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->lambda$dismiss$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    .line 62
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->drawingRect:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->pathToClip:Landroid/graphics/Path;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 239
    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    .line 333
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    const/4 v13, 0x0

    .line 491
    iput v13, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    .line 87
    iput-object v11, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactions:Ljava/util/List;

    move-object/from16 v14, p1

    .line 88
    iput-object v14, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v7, p5

    .line 89
    iput-object v7, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 90
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 91
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;

    invoke-direct {v0, v10, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    .line 118
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;

    invoke-direct {v1, v10}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-direct {v0, v10, v3}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/content/Context;)V

    iput-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    .line 127
    new-instance v15, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    iput-object v15, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    .line 166
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;

    invoke-direct {v0, v10, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$3;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V

    .line 176
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;

    invoke-direct {v1, v10, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V

    .line 182
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    .line 183
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelectedReactions(Ljava/util/HashSet;)V

    .line 184
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDrawBackground(Z)V

    .line 185
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V

    .line 186
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    iget-object v1, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x10

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v0, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 189
    invoke-direct {v10, v13}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 191
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    .line 192
    iget-object v2, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iput-object v12, v10, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v0, 0x1

    .line 195
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 196
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;

    invoke-direct {v1, v10, v12}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    const-wide/16 v2, 0x32

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v13

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateWindowPosition()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->showUnlockPremiumAlert()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->checkAnimationEnd()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 0

    .line 54
    iget p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return p0
.end method

.method static synthetic access$808(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)I
    .locals 2

    .line 54
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->frameDrawCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private checkAnimationEnd()V
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->account:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    :cond_0
    return-void
.end method

.method private createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 220
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x1

    .line 221
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x3e8

    .line 222
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x10

    .line 223
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz p1, :cond_0

    const p1, 0x10100

    .line 225
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    const p1, 0x10108

    .line 227
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    const/4 p1, -0x3

    .line 229
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    return-object v0
.end method

.method private createTransition(Z)V
    .locals 9

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iput v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->fromRadius:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    if-eqz p1, :cond_0

    .line 248
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->location:[I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 251
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

    .line 252
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

    if-lez v4, :cond_2

    .line 253
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

    :cond_2
    const/16 v4, 0x10

    .line 255
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3

    .line 256
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    .line 259
    :cond_3
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

    if-nez p1, :cond_4

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    goto :goto_1

    .line 263
    :cond_4
    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    .line 264
    iget-object v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 267
    :goto_1
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

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    iget v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    if-eqz p1, :cond_6

    .line 272
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v0

    if-lt v0, v1, :cond_5

    const/16 v0, 0x2008

    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 273
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    goto :goto_3

    .line 275
    :cond_6
    iput-boolean v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    .line 277
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 278
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(F)V

    .line 280
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setEnterAnimationInProgress(Z)V

    .line 281
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->account:I

    .line 282
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animationIndex:I

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animationIndex:I

    new-array v0, v1, [F

    .line 283
    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    aput v1, v0, v5

    if-eqz p1, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_8
    aput v2, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 284
    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-nez p1, :cond_9

    .line 296
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->syncReactionFrames(Z)V

    .line 298
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$5;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 322
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz p1, :cond_a

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 326
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$createTransition$2(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->valueAnimator:Landroid/animation/ValueAnimator;

    .line 286
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setCustomEmojiEnterProgress(F)V

    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->invalidatePath:Z

    .line 289
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 291
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->cascadeAnimation:Z

    if-eqz p1, :cond_0

    .line 292
    iget p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionProgress:F

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->updateCascadeEnter(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dismiss$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 476
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissProgress:F

    .line 477
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 119
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->enterTransitionFinished:Z

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 2

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing:Z

    .line 198
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation(Z)V

    .line 200
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    return-void
.end method

.method private synthetic lambda$removeView$4()V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 444
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateCascadeEnter$3(Ljava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 387
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    .line 388
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 389
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 390
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private showUnlockPremiumAlert()V
    .locals 5

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private syncReactionFrames(Z)V
    .locals 3

    .line 419
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    .line 421
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 422
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 424
    iget-object v2, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v2, :cond_0

    .line 425
    iput-boolean p1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 426
    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCascadeEnter(F)V
    .locals 11

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 338
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

    .line 341
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v3, v5, :cond_3

    .line 342
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 343
    iget-object v9, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 346
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

    .line 347
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

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v6, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 354
    :cond_2
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleX(F)V

    .line 355
    invoke-virtual {v5, v8}, Landroid/view/View;->setScaleY(F)V

    move v4, v7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
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

    .line 360
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 361
    iget-object v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v3, v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 362
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 365
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

    .line 366
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

    .line 368
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 370
    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v5, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animatingEnterChild:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 373
    :cond_6
    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleX(F)V

    .line 374
    invoke-virtual {v3, v8}, Landroid/view/View;->setScaleY(F)V

    move v4, v7

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 381
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_8
    if-eqz v2, :cond_9

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 384
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 386
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->animators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$6;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x15e

    .line 405
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateWindowPosition()V
    .locals 5

    .line 206
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->yTranslation:F

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v2, v3

    const/16 v3, 0x20

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 211
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->keyboardHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :cond_1
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .line 216
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 450
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 453
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    const/4 v0, 0x1

    .line 454
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 456
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->createTransition(Z)V

    .line 457
    iget-boolean v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->wasFocused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_1

    .line 458
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/ChatActivity;->onEditTextDialogClose(ZZ)V

    :cond_1
    return-void
.end method

.method public dismiss(Z)V
    .locals 2

    .line 467
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 470
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismissed:Z

    if-nez p1, :cond_1

    .line 472
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->removeView()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 474
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 475
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 480
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$7;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x96

    .line 486
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 487
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

.method public onDismissListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismiss:Ljava/lang/Runnable;

    return-void
.end method

.method public removeView()V
    .locals 5

    .line 433
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

    .line 434
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

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

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method
