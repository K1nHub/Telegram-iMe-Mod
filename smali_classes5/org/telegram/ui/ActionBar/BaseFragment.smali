.class public abstract Lorg/telegram/ui/ActionBar/BaseFragment;
.super Ljava/lang/Object;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;,
        Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;
    }
.end annotation


# instance fields
.field protected actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field protected arguments:Landroid/os/Bundle;

.field protected classGuid:I

.field protected currentAccount:I

.field protected finishing:Z

.field protected fragmentBeginToShow:Z

.field protected fragmentView:Landroid/view/View;

.field protected hasOwnBackground:Z

.field protected inBubbleMode:Z

.field protected inMenuMode:Z

.field protected inPreviewMode:Z

.field private isFinished:Z

.field protected isPaused:Z

.field public overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field protected parentDialog:Landroid/app/Dialog;

.field protected parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field protected passcodeView:Lorg/telegram/ui/Components/PasscodeView;

.field protected pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

.field private final pos:[I

.field private previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

.field private final rect:Landroid/graphics/Rect;

.field private removingFromStack:Z

.field private resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field public storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

.field protected visibleDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$2v1BOLf7rKog94Ss4PTmKQ60r3s([Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$showAsSheet$4([Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$F4_xoJVhGXNiImTKhyVwhLf_Vpk(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$showDialog$3(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MS3ZIT6gzIFzhIC4Q5GH_2nqB2M(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$checkPasscode$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$m0-8QfGxJI5yZJnBe7d2AlFoQuw(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/enums/LockedSection;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$checkPasscode$0(Lcom/iMe/fork/enums/LockedSection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mb3VHQgC8fdToNpp5SGlfan4FCg(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->lambda$checkPasscode$2(Lorg/telegram/ui/Components/PasscodeView;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->rect:Landroid/graphics/Rect;

    .line 238
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 260
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 97
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->rect:Landroid/graphics/Rect;

    .line 238
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 264
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    .line 265
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return-void
.end method

.method private synthetic lambda$checkPasscode$0(Lcom/iMe/fork/enums/LockedSection;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->setSectionLocked(Z)V

    .line 125
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/LockedSectionsController;->saveConfig()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$checkPasscode$1()V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    return-void
.end method

.method private synthetic lambda$checkPasscode$2(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 2

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez p1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 v0, 0x30

    .line 134
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic lambda$showAsSheet$4([Lorg/telegram/ui/ActionBar/BottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 1

    const/4 v0, 0x0

    .line 1046
    aget-object p0, p0, v0

    return-object p0
.end method

.method private synthetic lambda$showDialog$3(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 900
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 902
    :cond_0
    move-object p1, p2

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDialogDismiss(Landroid/app/Dialog;)V

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    .line 904
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method private setParentDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 1163
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public allowFinishFragmentInsteadOfRemoveFromStack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected allowPresentFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public attachStoryViewer(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)V
    .locals 1

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1239
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public canBeginSlide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkPasscode()V
    .locals 9

    .line 116
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSection()Lcom/iMe/fork/enums/LockedSection;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->needShowPasscode(ZILcom/iMe/fork/enums/LockedSection;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v2, Lorg/telegram/ui/Components/PasscodeView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p0, v3}, Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;Lcom/iMe/fork/enums/LockedSection;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 121
    new-instance v7, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/enums/LockedSection;)V

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    new-instance v1, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setDelegate(Lorg/telegram/ui/Components/PasscodeView$PasscodeViewDelegate;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkTouchEventOnView(Landroid/view/View;II)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 107
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    aget v3, v1, v0

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v0

    .line 109
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    aget v3, v1, v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    aget v4, v3, v0

    aget v5, v3, v2

    aget v0, v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pos:[I

    aget v2, v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v1, v4, v5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public clearViews()V
    .locals 3

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 370
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 371
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 376
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 377
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDestroyView()V

    .line 379
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 383
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 385
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 388
    :cond_2
    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 391
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_5

    .line 392
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 395
    :try_start_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 397
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 400
    :cond_4
    :goto_2
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    .line 402
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_7

    .line 403
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 406
    :try_start_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 408
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 411
    :cond_6
    :goto_3
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 414
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_8

    .line 415
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 416
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 418
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_9

    .line 419
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 420
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 422
    :cond_9
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method public closeLastFragment()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeStoryViewer()Z
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->onBackPressed()Z

    move-result v0

    return v0

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->onBackPressed()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 519
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 520
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 521
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 522
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 523
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 524
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultIcon:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 525
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    if-eqz p1, :cond_1

    .line 526
    :cond_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_1
    return-object v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public detachStoryViewer()V
    .locals 1

    .line 1248
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 1251
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public dismissCurrentDialog()V
    .locals 1

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    return-void

    .line 786
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 787
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 789
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dismissDialogOnPause(Landroid/app/Dialog;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public finishFragment()V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 546
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

    if-eqz v0, :cond_1

    .line 547
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;->finishFragment()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 549
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    :goto_0
    return-void
.end method

.method public finishFragment(Z)Z
    .locals 2

    .line 558
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 561
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    .line 562
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public finishPreviewFragment()V
    .locals 1

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 537
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->finishPreviewFragment()V

    :cond_0
    return-void
.end method

.method public getAccountInstance()Lorg/telegram/messenger/AccountInstance;
    .locals 1

    .line 948
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method public getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getBackupController()Lcom/iMe/fork/controller/BackupController;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    return-object v0
.end method

.method public getClassGuid()I
    .locals 1

    .line 312
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return v0
.end method

.method public getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    return-object v0
.end method

.method protected getContactsController()Lorg/telegram/messenger/ContactsController;
    .locals 1

    .line 956
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 308
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method protected getCustomSlideTransition(ZZF)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDialogTranslationSettingsController()Lcom/iMe/fork/controller/DialogTranslationController;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadController()Lorg/telegram/messenger/DownloadController;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    return-object v0
.end method

.method public getFileLoader()Lorg/telegram/messenger/FileLoader;
    .locals 1

    .line 984
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersController()Lcom/iMe/fork/controller/FiltersController;
    .locals 1

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    return-object v0
.end method

.method public getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentBeginToShow()Z
    .locals 1

    .line 284
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    return v0
.end method

.method public getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getHiddenChatsController()Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 726
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 727
    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationController()Lorg/telegram/messenger/LocationController;
    .locals 1

    .line 968
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLocationController()Lorg/telegram/messenger/LocationController;

    move-result-object v0

    return-object v0
.end method

.method public getLockedSection()Lcom/iMe/fork/enums/LockedSection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaController()Lorg/telegram/messenger/MediaController;
    .locals 1

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDataController()Lorg/telegram/messenger/MediaDataController;
    .locals 1

    .line 960
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 952
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    return-object v0
.end method

.method public getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;
    .locals 1

    .line 196
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMultiPanelController()Lcom/iMe/fork/controller/MultiPanelController;

    move-result-object v0

    return-object v0
.end method

.method public getMusicController()Lcom/iMe/fork/controller/MusicController;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getMusicController()Lcom/iMe/fork/controller/MusicController;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .locals 2

    .line 1134
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    .line 1135
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1136
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoryViewer;->getNavigationBarColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNeuroBotsController()Lcom/iMe/fork/controller/NeuroBotsController;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 1000
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 972
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method protected getNotificationsSettings()Landroid/content/SharedPreferences;
    .locals 1

    .line 996
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateOverlayStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 1

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-nez v0, :cond_0

    .line 1288
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 1290
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object v0
.end method

.method public getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;
    .locals 1

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-nez v0, :cond_0

    .line 1281
    new-instance v0, Lorg/telegram/ui/Stories/StoryViewer;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/StoryViewer;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 1283
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 759
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object v0
.end method

.method public getPinnedPlayerView()Lcom/iMe/fork/ui/view/PinnedPlayerView;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    return-object v0
.end method

.method public getPreviewHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getRecentChatsController()Lcom/iMe/fork/controller/RecentChatsController;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object v0
.end method

.method protected getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSecretChatHelper()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    return-object v0
.end method

.method public getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 980
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method public getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;
    .locals 1

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTemplatesController()Lcom/iMe/fork/controller/TemplatesController;

    move-result-object v0

    return-object v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    .line 944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getThemedColor(I)I
    .locals 1

    .line 1114
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public getThemedDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1123
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getToolsController()Lcom/iMe/fork/controller/ToolsController;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getToolsController()Lcom/iMe/fork/controller/ToolsController;

    move-result-object v0

    return-object v0
.end method

.method public getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    return-object v0
.end method

.method public getUserConfig()Lorg/telegram/messenger/UserConfig;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 1

    .line 932
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    return-object v0
.end method

.method public hasForceLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideKeyboardOnShow()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAllowPinnedPlayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBeginToShow()Z
    .locals 1

    .line 1159
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    return v0
.end method

.method protected isFinishing()Z
    .locals 1

    .line 586
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    return v0
.end method

.method public isInBubbleMode()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return v0
.end method

.method public isInMenuMode()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inMenuMode:Z

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    return v0
.end method

.method public isLastFragment()Z
    .locals 1

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLightStatusBar()Z
    .locals 6

    .line 1183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    .line 1188
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    .line 1189
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    :cond_1
    if-eqz v0, :cond_2

    .line 1193
    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1195
    invoke-static {v2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v0

    .line 1197
    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isPaused()Z
    .locals 1

    .line 668
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    return v0
.end method

.method public isRemovingFromStack()Z
    .locals 1

    .line 1175
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->removingFromStack:Z

    return v0
.end method

.method public isStoryViewer(Landroid/view/View;)Z
    .locals 2

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-ne p1, v0, :cond_0

    return v1

    .line 1260
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/ui/Stories/StoryViewer;->windowView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public movePreviewFragment(F)V
    .locals 1

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->movePreviewFragment(F)V

    return-void
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 683
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeStoryViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 0

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 839
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 840
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 845
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentActivityTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBeginSlide()V
    .locals 1

    .line 803
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 805
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 808
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 810
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    return-void
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onFragmentClosed()V
    .locals 0

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 5

    .line 595
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    .line 596
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->cancelTasksForGuid(I)V

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 598
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    .line 602
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    if-nez v1, :cond_2

    .line 603
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onPause()V

    :cond_0
    const/4 v0, 0x1

    .line 638
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 640
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissDialogOnPause(Landroid/app/Dialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 642
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 645
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 647
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_2

    .line 648
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 650
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_3
    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onRemoveFromParent()V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 621
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onResume()V

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    .line 626
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    .line 628
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_2

    .line 629
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->updatePlayingMode()V

    :cond_2
    return-void
.end method

.method public onSlideProgress(ZF)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationProgress(ZF)V
    .locals 0

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 830
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentBeginToShow:Z

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    return-void
.end method

.method public prepareFragmentToSlide(ZZ)V
    .locals 0

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 742
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 1

    .line 746
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 8

    .line 750
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v7}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 1

    .line 754
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    .line 734
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1

    .line 738
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowPresentFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeSelfFromStack()V
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    return-void
.end method

.method public removeSelfFromStack(Z)V
    .locals 2

    .line 571
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    .line 575
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 578
    :cond_1
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public resetFragment()V
    .locals 1

    .line 1221
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    if-eqz v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    const/4 v0, 0x0

    .line 1223
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isFinished:Z

    .line 1224
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    :cond_0
    return-void
.end method

.method protected resumeDelayedFragmentAnimation()V
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->resumeDelayedFragmentAnimation()V

    :cond_0
    return-void
.end method

.method public saveKeyboardPositionBeforeTransition()V
    .locals 0

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 272
    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return-void

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "trying to set current account when fragment UI already created"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFinishing(Z)V
    .locals 0

    .line 554
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 1013
    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setFragmentPanTranslationOffset(I)V

    :cond_0
    return-void
.end method

.method public setInBubbleMode(Z)V
    .locals 0

    .line 320
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    return-void
.end method

.method public setInMenuMode(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inMenuMode:Z

    return-void
.end method

.method public setInPreviewMode(Z)V
    .locals 3

    .line 344
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    goto :goto_0

    .line 349
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setKeyboardHeightFromParent(I)V
    .locals 1

    .line 1267
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setKeyboardHeightFromParent(I)V

    .line 1270
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v0, :cond_1

    .line 1271
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/StoryViewer;->setKeyboardHeightFromParent(I)V

    :cond_1
    return-void
.end method

.method public setNavigationBarColor(I)V
    .locals 4

    .line 1142
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1143
    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1144
    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    .line 1145
    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/LaunchActivity;->setNavigationBarColor(IZ)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 1148
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1149
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 1150
    invoke-virtual {v0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1151
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result p1

    const v1, 0x3f389375    # 0.721f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1152
    :goto_0
    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected setParentActivityTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 769
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setParentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 430
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-void
.end method

.method public setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 5

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eq v0, p1, :cond_e

    .line 436
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 437
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInBubbleMode()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 439
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 442
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 443
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 445
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 448
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eq p1, v3, :cond_3

    .line 449
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 450
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onDestroyView()V

    .line 451
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_2

    .line 452
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 453
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 455
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p1, :cond_3

    .line 456
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->release()V

    .line 457
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    .line 461
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_7

    .line 462
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eq p1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    .line 463
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    .line 464
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    .line 467
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 469
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    .line 474
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 477
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_8

    .line 478
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createActionBar(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_8

    .line 480
    iput-object p0, p1, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 484
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz p1, :cond_a

    .line 485
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    .line 488
    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 490
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 493
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_a

    .line 494
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    .line 497
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_c

    .line 498
    new-instance p1, Lcom/iMe/fork/ui/view/PinnedPlayerView;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0, v3, v4}, Lcom/iMe/fork/ui/view/PinnedPlayerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/LaunchActivity;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    const/16 v1, 0x8

    :goto_5
    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->setVisibility(I)V

    .line 501
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz p1, :cond_e

    .line 502
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_d

    .line 505
    :try_start_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    .line 507
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 510
    :cond_d
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eq p1, v0, :cond_e

    .line 511
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    :cond_e
    return-void
.end method

.method public setPreviewDelegate(Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->previewDelegate:Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;

    return-void
.end method

.method public setPreviewOpenedProgress(F)V
    .locals 0

    return-void
.end method

.method public setPreviewReplaceProgress(F)V
    .locals 0

    return-void
.end method

.method public setProgressToDrawerOpened(F)V
    .locals 0

    return-void
.end method

.method public setRemovingFromStack(Z)V
    .locals 0

    .line 1179
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->removingFromStack:Z

    return-void
.end method

.method public setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1229
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setVisibleDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method protected shouldOverrideSlideTransition(ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    const/4 v0, 0x0

    .line 1038
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    return-object p1
.end method

.method public showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)[Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 12

    .line 1042
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Lorg/telegram/ui/ActionBar/BottomSheet;

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 1046
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda1;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->newLayout(Landroid/content/Context;Landroidx/core/util/Supplier;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v0, v10

    .line 1047
    new-instance v11, Lorg/telegram/ui/ActionBar/BaseFragment$1;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    move-object v2, v11

    move-object v3, p0

    move-object v7, v0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/BaseFragment$1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;[Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;)V

    aput-object v11, v1, v10

    if-eqz p2, :cond_1

    .line 1104
    aget-object v2, v1, v10

    iget-boolean v3, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->allowNestedScroll:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowNestedScroll(Z)V

    .line 1105
    aget-object v2, v1, v10

    iget-boolean p2, p2, Lorg/telegram/ui/ActionBar/BaseFragment$BottomSheetParams;->transitionFromLeft:Z

    invoke-virtual {v2, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->transitionFromRight(Z)V

    .line 1107
    :cond_1
    aget-object p2, v1, v10

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentDialog(Landroid/app/Dialog;)V

    .line 1108
    aget-object p1, v1, v10

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 868
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    .line 872
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public showDialog(Landroid/app/Dialog;ZLandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 876
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isTransitionAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isSwipeInProgress()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->checkTransitionAnimation()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 880
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->overlayStoryViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->showDialog(Landroid/app/Dialog;)V

    return-object p1

    .line 883
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoryViewer;->isShown()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 884
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/StoryViewer;->showDialog(Landroid/app/Dialog;)V

    return-object p1

    .line 888
    :cond_2
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz p2, :cond_3

    .line 889
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 890
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 893
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 896
    :cond_3
    :goto_0
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    const/4 p2, 0x1

    .line 897
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 898
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    new-instance p2, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/ActionBar/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 907
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 908
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 910
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    .line 777
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
