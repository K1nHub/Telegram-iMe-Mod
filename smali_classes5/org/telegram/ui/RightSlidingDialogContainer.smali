.class public abstract Lorg/telegram/ui/RightSlidingDialogContainer;
.super Landroid/widget/FrameLayout;
.source "RightSlidingDialogContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;
    }
.end annotation


# static fields
.field public static fragmentDialogId:J


# instance fields
.field private actionModePaint:Landroid/graphics/Paint;

.field currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

.field currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field currentFragmentFullscreenView:Landroid/view/View;

.field currentFragmentView:Landroid/view/View;

.field currentTop:F

.field public enabled:Z

.field public fragmentViewPadding:I

.field isOpenned:Z

.field isPaused:Z

.field lastSize:I

.field private maybeStartTracking:Z

.field navigationLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field openAnimator:Landroid/animation/ValueAnimator;

.field openedProgress:F

.field private final parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private replaceAnimationInProgress:Z

.field replaceProgress:F

.field replacingFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field protected startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field swipeBackX:F

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static synthetic $r8$lambda$PUC7n-24Ek0aG1mbrHyYmw4xEUE(Lorg/telegram/ui/RightSlidingDialogContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$presentFragment$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SfyHPB1Uil5k_ypRfA3ih9WCH4o(Lorg/telegram/ui/RightSlidingDialogContainer;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$animateReplace$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$dq6L5PFM7G5W_Pk9_4vA2RwEm70(Lorg/telegram/ui/RightSlidingDialogContainer;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$animateReplace$3(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$risBzkSi3c0iv7_n2oKpicHBrpI(Lorg/telegram/ui/RightSlidingDialogContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$finishPreviewInernal$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-z19Q_3RJcf9v0zvkTxtBZ-86g(Lorg/telegram/ui/RightSlidingDialogContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$presentFragment$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$vFMPW-s-YleZcPjbqD2jXw0v_0A(Lorg/telegram/ui/RightSlidingDialogContainer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 51
    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 54
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 55
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const/4 p1, 0x1

    .line 342
    iput-boolean p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    .line 64
    iput-object p2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/RightSlidingDialogContainer;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method private animateReplace(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 6

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 150
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 152
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 153
    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/ui/RightSlidingDialogContainer;->setReplaceProgress(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;F)V

    .line 154
    iput-boolean v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimationInProgress:Z

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replacingFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 156
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 157
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 158
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->removeView(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->removeView(Landroid/view/View;)V

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 166
    :cond_1
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 167
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replacingFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 168
    iput-boolean v4, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimationInProgress:Z

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 170
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v3, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v1, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    iput-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 171
    new-instance v3, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-direct {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const/high16 v5, 0x43c80000    # 400.0f

    .line 172
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 171
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 175
    invoke-direct {p0, p1, v0, v4}, Lorg/telegram/ui/RightSlidingDialogContainer;->setReplaceProgress(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;F)V

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method public static getRightPaddingSize()I
    .locals 1

    .line 481
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4a

    goto :goto_0

    :cond_0
    const/16 v0, 0x4c

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateReplace$2(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    .line 177
    iput p2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceProgress:F

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animateReplace$3(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 181
    iget-object p3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 184
    iput-object p3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    const/4 p4, 0x1

    const/4 p5, 0x0

    .line 185
    invoke-virtual {p1, p4, p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    const/high16 p4, 0x3f800000    # 1.0f

    .line 186
    invoke-direct {p0, p2, p1, p4}, Lorg/telegram/ui/RightSlidingDialogContainer;->setReplaceProgress(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;F)V

    .line 187
    iput-boolean p5, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimationInProgress:Z

    .line 188
    iput-object p3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replacingFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 189
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 190
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 191
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->removeView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->removeView(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method

.method private synthetic lambda$finishPreviewInernal$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 302
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 303
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    return-void
.end method

.method private synthetic lambda$onTouchEvent$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 410
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 411
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    return-void
.end method

.method private synthetic lambda$presentFragment$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 116
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    return-void
.end method

.method private synthetic lambda$presentFragment$1()V
    .locals 0

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 450
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingX:I

    .line 452
    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationStarted(Z)V

    return-void
.end method

.method private setReplaceProgress(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;F)V
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    .line 209
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    sub-float v3, v1, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 211
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    int-to-float v3, v0

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    mul-float/2addr v3, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    sub-float v2, v1, p3

    .line 213
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPreviewOpenedProgress(F)V

    :cond_3
    if-eqz p2, :cond_5

    .line 217
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 218
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 219
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    int-to-float v0, v0

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 221
    :cond_4
    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPreviewReplaceProgress(F)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 518
    iget-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimationInProgress:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replacingFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceProgress:F

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/RightSlidingDialogContainer;->setReplaceProgress(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;F)V

    .line 520
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 522
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 523
    iget v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    iget v3, v3, Lorg/telegram/ui/ActionBar/ActionBar;->searchFieldVisibleAlpha:F

    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v7, v0, v1

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_8

    cmpl-float v0, v7, v2

    if-lez v0, :cond_8

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->actionModePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    .line 526
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->actionModePaint:Landroid/graphics/Paint;

    .line 528
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->actionModePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v7, v0

    const/high16 v8, 0x437f0000    # 255.0f

    if-nez v0, :cond_5

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 532
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentTop:F

    mul-float v0, v7, v8

    float-to-int v5, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 534
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentTop:F

    iget-object v5, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->actionModePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 536
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 538
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 544
    iget v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_6

    .line 545
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 546
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentTop:F

    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v5, v0

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 550
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 553
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 555
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 556
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    if-ne p2, v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 513
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public finishPreview()V
    .locals 1

    .line 275
    iget-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isOpenned:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationStarted(Z)V

    .line 279
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreviewInernal()V

    return-void
.end method

.method public finishPreviewInernal()V
    .locals 4

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isOpenned:Z

    .line 284
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 285
    iput v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 289
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 290
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v1, 0x0

    .line 291
    iput-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 292
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 295
    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationFinished(Z)V

    return-void

    .line 299
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 300
    iget v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    aput v3, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    .line 301
    new-instance v1, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/RightSlidingDialogContainer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$2;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getCurrentFragmetDialogId()J
    .locals 2

    .line 477
    sget-wide v0, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    return-wide v0
.end method

.method public getFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 485
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    return-object v0
.end method

.method abstract getOccupyStatusbar()Z
.end method

.method public hasFragment()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 248
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->getOccupyStatusbar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 251
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 252
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentViewPadding:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 254
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 256
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 258
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 259
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x10

    .line 260
    iget p2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->lastSize:I

    if-eq p2, p1, :cond_3

    .line 261
    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->lastSize:I

    .line 262
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 489
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isPaused:Z

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 496
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isPaused:Z

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->navigationLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 355
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->enabled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 357
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingPointerId:I

    .line 358
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingX:I

    .line 360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingY:I

    .line 361
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    .line 362
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_5

    .line 365
    iget-object v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 366
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 368
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingX:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 370
    iget-object v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 371
    iget-boolean v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    if-nez v6, :cond_4

    int-to-float v6, v3

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v2

    if-le v0, v5, :cond_4

    .line 373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 374
    invoke-direct {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 376
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    goto/16 :goto_2

    .line 378
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    if-eqz p1, :cond_d

    int-to-float p1, v3

    .line 388
    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->swipeBackX:F

    .line 389
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v4, p1

    const/4 v0, 0x0

    invoke-static {p1, v4, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 390
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    goto/16 :goto_2

    :cond_5
    const/4 v5, 0x0

    if-eqz p1, :cond_c

    .line 393
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v7, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTrackingPointerId:I

    if-ne v6, v7, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v2, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v6, 0x6

    if-ne v2, v6, :cond_c

    .line 394
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_7

    .line 395
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 397
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 399
    iget-boolean p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    if-eqz p1, :cond_b

    .line 400
    iget p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->swipeBackX:F

    .line 401
    iget-object v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 402
    iget-object v6, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    cmpg-float p1, p1, v7

    if-gez p1, :cond_9

    const p1, 0x455ac000    # 3500.0f

    cmpg-float p1, v2, p1

    if-ltz p1, :cond_8

    cmpg-float p1, v2, v6

    if-gez p1, :cond_9

    :cond_8
    move p1, v0

    goto :goto_0

    :cond_9
    move p1, v1

    :goto_0
    if-nez p1, :cond_a

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreviewInernal()V

    goto :goto_1

    :cond_a
    new-array p1, v3, [F

    .line 408
    iget v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    aput v2, p1, v1

    aput v4, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    .line 409
    new-instance v0, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/RightSlidingDialogContainer$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$3;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 424
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 428
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    .line 429
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    .line 432
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 433
    iput-object v5, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    :cond_c
    if-nez p1, :cond_d

    .line 436
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->maybeStartTracking:Z

    .line 437
    iput-boolean v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_d

    .line 439
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 440
    iput-object v5, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->velocityTracker:Landroid/view/VelocityTracker;

    .line 443
    :cond_d
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->startedTracking:Z

    return p1

    :cond_e
    return v1
.end method

.method public openAnimationFinished(Z)V
    .locals 0

    return-void
.end method

.method public openAnimationStarted(Z)V
    .locals 0

    return-void
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->navigationLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 72
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 74
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 78
    iput-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 80
    instance-of v1, p2, Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;

    if-eqz v1, :cond_1

    .line 81
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;

    invoke-interface {v1}, Lorg/telegram/ui/RightSlidingDialogContainer$BaseFragmentWithFullscreen;->getFullscreenView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentFullscreenView:Landroid/view/View;

    .line 82
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const-wide/16 v1, 0x0

    .line 86
    sput-wide v1, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    .line 87
    instance-of v1, p2, Lorg/telegram/ui/TopicsFragment;

    if-eqz v1, :cond_2

    .line 88
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/TopicsFragment;

    iget-wide v1, v1, Lorg/telegram/ui/TopicsFragment;->chatId:J

    neg-long v1, v1

    sput-wide v1, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentDialogId:J

    .line 90
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->listenToBackgroundUpdate(Ljava/lang/Runnable;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 97
    invoke-direct {p0, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->animateReplace(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 98
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isOpenned:Z

    if-nez p1, :cond_7

    .line 99
    iput-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->isOpenned:Z

    .line 100
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 101
    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationStarted(Z)V

    .line 102
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 103
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 104
    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    .line 106
    invoke-virtual {p0, v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationFinished(Z)V

    return-void

    .line 109
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 p1, 0x2

    new-array v2, p1, [F

    .line 110
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    .line 111
    iput v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    .line 112
    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimationStarted(Z)V

    .line 113
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->updateOpenAnimationProgress()V

    .line 114
    invoke-virtual {p2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/RightSlidingDialogContainer$1;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/RightSlidingDialogContainer$1;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-lt v1, p1, :cond_6

    const-wide/16 v1, 0x32

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x96

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 136
    iget-object p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    :cond_7
    :goto_1
    new-instance p1, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/RightSlidingDialogContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/RightSlidingDialogContainer;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPreviewDelegate(Lorg/telegram/ui/ActionBar/BaseFragment$PreviewDelegate;)V

    :cond_8
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 584
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    :cond_0
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 576
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    :cond_0
    return-void
.end method

.method public setCurrentTop(I)V
    .locals 3

    int-to-float v0, p1

    .line 457
    iput v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentTop:F

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    iget v2, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentViewPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentFullscreenView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public setFragmentViewPadding(I)V
    .locals 0

    .line 565
    iput p1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->fragmentViewPadding:I

    return-void
.end method

.method setOpenProgress(F)V
    .locals 0

    return-void
.end method

.method public setTransitionPaddingBottom(I)V
    .locals 2

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/TopicsFragment;

    if-eqz v1, :cond_0

    .line 570
    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/TopicsFragment;->setTransitionPadding(I)V

    :cond_0
    return-void
.end method

.method protected updateOpenAnimationProgress()V
    .locals 4

    .line 226
    iget-boolean v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->replaceAnimationInProgress:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    iget v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    invoke-virtual {p0, v0}, Lorg/telegram/ui/RightSlidingDialogContainer;->setOpenProgress(F)V

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragmentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    sub-float v3, v1, v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 234
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v0, Lorg/telegram/ui/DialogsActivity;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isMainActionBarMenuEnabled:Z

    if-nez v0, :cond_3

    .line 235
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentActionBarView:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_3

    const/16 v2, 0x30

    .line 236
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    sub-float/2addr v1, v3

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 238
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    .line 239
    iget v1, p0, Lorg/telegram/ui/RightSlidingDialogContainer;->openedProgress:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPreviewOpenedProgress(F)V

    .line 241
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_5
    :goto_0
    return-void
.end method
