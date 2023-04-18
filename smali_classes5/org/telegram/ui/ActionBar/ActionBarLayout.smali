.class public Lorg/telegram/ui/ActionBar/ActionBarLayout;
.super Landroid/widget/FrameLayout;
.source "ActionBarLayout.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
    }
.end annotation


# static fields
.field private static headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private static layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private static scrimPaint:Landroid/graphics/Paint;


# instance fields
.field private accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private animateEndColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private animateSetThemeAccentIdAfterAnimation:I

.field private animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private animateSetThemeNightAfterAnimation:Z

.field private animateStartColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private animateThemeAfterAnimation:Z

.field protected animationInProgress:Z

.field private animationProgress:F

.field public animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

.field private animationRunnable:Ljava/lang/Runnable;

.field private attached:Z

.field private backgroundView:Landroid/view/View;

.field private beginTrackingSent:Z

.field public containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

.field private containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

.field private currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field debugBlackScreenRunnable:Ljava/lang/Runnable;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delayedAnimationResumed:Z

.field private delayedOpenAnimationRunnable:Ljava/lang/Runnable;

.field private delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

.field private drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private fragmentsStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field public highlightActionButtons:Z

.field private inActionMode:Z

.field private inBubbleMode:Z

.field private inPreviewMode:Z

.field public innerTranslationX:F

.field private isMusicPlaying:Z

.field lastActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastFrameTime:J

.field private maybeStartTracking:Z

.field private measureSpec:[I

.field public messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field public messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private onCloseAnimationEndRunnable:Ljava/lang/Runnable;

.field private onFragmentStackChangedListener:Ljava/lang/Runnable;

.field private onOpenAnimationEndRunnable:Ljava/lang/Runnable;

.field private overlayAction:Ljava/lang/Runnable;

.field private overrideWidthOffset:I

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field protected parentActivity:Landroid/app/Activity;

.field private presentingFragmentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private previewOpenAnimationInProgress:Z

.field private pulledDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation
.end field

.field private rebuildAfterAnimation:Z

.field private rebuildLastAfterAnimation:Z

.field private removeActionBarExtraHeight:Z

.field private showLastAfterAnimation:Z

.field startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

.field protected startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field private themeAnimationValue:F

.field private themeAnimatorDelegate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private themeAnimatorDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private themeAnimatorSet:Landroid/animation/AnimatorSet;

.field private titleOverlayText:Ljava/lang/String;

.field private titleOverlayTextId:I

.field private transitionAnimationInProgress:Z

.field private transitionAnimationPreviewMode:Z

.field private transitionAnimationStartTime:J

.field private useAlphaAnimations:Z

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$2Yc0sNAbJBAPMNlQ0lGgIF0RINA(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$presentFragment$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5axi2H1dVJM5l4BE2P5Joh2b56c(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateThemedValues$7(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Ta9Kpf2VUSEEBTF91I8xN8X88o(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$presentFragment$1(ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MeIq_6MEOu8BaBg4tORiWnpVLXM(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$5(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O76bPrdZ9uWu_32ej3OIk9AAVQE(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$new$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$YEhFTXSv7CCwLi-8pRUX4XIdtb4(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$3(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oTyvKH3ekClU3j9FduVnKoGkktQ(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$closeLastFragment$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$uamZT2woIH9ycYYt_1AaInpFalU(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$presentFragment$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$vpyYG4DaWlQ-zKPT8lblZXTvU_Y(Lorg/telegram/ui/ActionBar/ActionBarLayout;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lambda$animateThemedValues$6(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 489
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    .line 424
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 425
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f828f5c    # 1.02f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 426
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    .line 443
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, -0x1

    .line 486
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 537
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    .line 2674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    .line 2675
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    .line 490
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    .line 492
    sget-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 493
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->layer_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 494
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    :cond_0
    return-void
.end method

.method static synthetic access$100()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 70
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ActionBar/ActionBarLayout;J)J
    .locals 0

    .line 70
    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)F
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F
    .locals 0

    .line 70
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return p1
.end method

.method static synthetic access$1216(Lorg/telegram/ui/ActionBar/ActionBarLayout;F)F
    .locals 1

    .line 70
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/OvershootInterpolator;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/graphics/drawable/ColorDrawable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    return p0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onSlideAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/ActionBarLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ActionBar/ActionBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addEndDescriptions(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2257
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2258
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 2259
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2260
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addStartDescriptions(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2240
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2242
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 2243
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 2244
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2245
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v4

    aput v4, v0, v1

    .line 2246
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2247
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2248
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private attachView(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 1726
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1730
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1732
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1733
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1736
    :cond_1
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "windowBackgroundWhite"

    .line 1737
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1739
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1740
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1741
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v0, :cond_3

    .line 1742
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1744
    :cond_3
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1746
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1748
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1749
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method private checkNeedRebuild()V
    .locals 4

    .line 2500
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2501
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildLastAfterAnimation:Z

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastAfterAnimation:Z

    invoke-virtual {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    .line 2502
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    goto :goto_0

    .line 2503
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    if-eqz v0, :cond_1

    .line 2504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAccentIdAfterAnimation:I

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeNightAfterAnimation:Z

    invoke-interface {p0, v0, v2, v3, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    const/4 v0, 0x0

    .line 2505
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2506
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x1

    .line 1754
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->finishing:Z

    .line 1755
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1756
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    .line 1757
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1758
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1759
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1761
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    const-string p1, "closeLastFragmentInternalRemoveOld"

    .line 1762
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    return-void
.end method

.method private drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V
    .locals 6

    const/4 v0, 0x0

    .line 766
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 768
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 769
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 770
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v2, :cond_1

    const/16 v2, 0x20

    .line 771
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    .line 772
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 773
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p2

    add-float/2addr v1, p2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge p2, v5, :cond_0

    const/16 v0, 0x14

    :cond_0
    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    .line 774
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v4

    add-int/2addr v3, p2

    invoke-virtual {v0, v4, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 775
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public static findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 6

    .line 2652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2654
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2655
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2658
    :cond_0
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v4, p1

    float-to-int v5, p2

    .line 2659
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    .line 2660
    invoke-virtual {v2, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v2

    .line 2662
    :cond_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 2663
    check-cast v2, Landroid/view/ViewGroup;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v4, p1, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v3, p2, v3

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$animateThemedValues$6(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, p1, :cond_b

    if-nez v1, :cond_0

    .line 2286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    goto :goto_1

    .line 2288
    :cond_0
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v5, :cond_a

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto/16 :goto_4

    .line 2291
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_1
    if-eqz v3, :cond_a

    .line 2295
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_4

    .line 2296
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v2, :cond_3

    .line 2297
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v0, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 2298
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 2299
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v4, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 2300
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 2302
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->saveColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2304
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 2305
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    .line 2306
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v6, v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v6, :cond_5

    .line 2307
    check-cast v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 2308
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2309
    :cond_5
    instance-of v6, v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v6, :cond_6

    .line 2310
    check-cast v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2311
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addStartDescriptions(Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 2314
    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_7

    .line 2315
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 2318
    :cond_7
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    .line 2319
    iget-object v2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_8

    .line 2320
    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 2321
    :cond_8
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v3, :cond_9

    .line 2322
    check-cast v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->addEndDescriptions(Ljava/util/ArrayList;)V

    :cond_9
    :goto_3
    move v2, v4

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_14

    .line 2327
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    if-nez p1, :cond_e

    .line 2328
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v1, v4

    goto :goto_6

    :cond_d
    :goto_5
    move v1, v3

    :goto_6
    sub-int/2addr p1, v1

    move v1, v0

    :goto_7
    if-ge v1, p1, :cond_e

    .line 2330
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2331
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 2332
    invoke-virtual {v2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2335
    :cond_e
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->instant:Z

    if-eqz p1, :cond_11

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2336
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setThemeAnimationValue(F)V

    .line 2337
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2338
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2339
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2340
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 2341
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 2342
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_f

    .line 2343
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    if-eqz p3, :cond_10

    .line 2346
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_10
    return-void

    .line 2350
    :cond_11
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 2351
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_12

    .line 2352
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2354
    :cond_12
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz p1, :cond_13

    const/4 v1, 0x0

    .line 2356
    invoke-interface {p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 2358
    :cond_13
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2359
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$11;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2392
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    const-string v3, "themeAnimationValue"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2393
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    iget-wide v0, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2394
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_14
    if-eqz p3, :cond_15

    .line 2397
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_15
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$animateThemedValues$7(Ljava/lang/Runnable;)V
    .locals 0

    .line 2409
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$3(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1956
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1963
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_1

    .line 1957
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1959
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const/4 v0, 0x0

    .line 1960
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1961
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    .line 1965
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1966
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    const/4 v0, 0x1

    .line 1967
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1968
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1969
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$4()V
    .locals 1

    const/4 v0, 0x0

    .line 1973
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$5(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x0

    .line 2011
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/16 p1, 0x8

    .line 2012
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2013
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2014
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2016
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 2017
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 3

    .line 2676
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2677
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 2678
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x1

    .line 2680
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAllFragmentViews(ZZ)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$presentFragment$0(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1493
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_0
    const/4 p0, 0x1

    .line 1495
    invoke-virtual {p1, p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1496
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method private synthetic lambda$presentFragment$1(ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1526
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    .line 1527
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1528
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    .line 1529
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1530
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_0

    .line 1532
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1533
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    if-eqz p4, :cond_1

    .line 1536
    invoke-virtual {p4, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1538
    :cond_1
    invoke-virtual {p5, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1539
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method private synthetic lambda$presentFragment$2()V
    .locals 1

    const/4 v0, 0x0

    .line 1554
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    return-void
.end method

.method private observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2640
    instance-of v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v0, :cond_0

    .line 2641
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2643
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2644
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2645
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2646
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onAnimationEndCheck(Z)V
    .locals 2

    .line 1092
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    .line 1093
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 1094
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1095
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1096
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 1098
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1100
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1102
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1104
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 1105
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1106
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 1108
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1109
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1110
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1111
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    return-void
.end method

.method private onCloseAnimationEnd()V
    .locals 4

    .line 2477
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2478
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2480
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2481
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 2483
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2485
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    const-wide/16 v2, 0x0

    .line 2486
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 2487
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2488
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2489
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2490
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 2492
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2494
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    .line 2495
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    :cond_2
    return-void
.end method

.method private onFragmentStackChanged(Ljava/lang/String;)V
    .locals 1

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1662
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1664
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->onFragmentStackChanged()V

    .line 1665
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkBlackScreen(Ljava/lang/String;)V

    return-void
.end method

.method private onOpenAnimationEnd()V
    .locals 3

    .line 2511
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2512
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2514
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    const-wide/16 v1, 0x0

    .line 2515
    iput-wide v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    const/4 v1, 0x0

    .line 2516
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2517
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2519
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2520
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2521
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkNeedRebuild()V

    :cond_0
    return-void
.end method

.method private onSlideAnimationEnd(Z)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v0, :cond_0

    return-void

    .line 790
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 791
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 792
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 793
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    .line 794
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string p1, "onSlideAnimationEnd"

    .line 797
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    .line 799
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 801
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 802
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 804
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 805
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 806
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 807
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 808
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    goto/16 :goto_0

    .line 812
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v0, :cond_5

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 814
    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 816
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 817
    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 818
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 819
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 820
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 822
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 823
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 826
    :cond_2
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 827
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 829
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 833
    :cond_3
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_4

    .line 834
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 836
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 839
    :cond_4
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v0, :cond_5

    .line 840
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 842
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 849
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 850
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 851
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    .line 852
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 853
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 854
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    return-void
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 859
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 862
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 863
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 866
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 868
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 870
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 872
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 873
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 875
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 876
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    .line 877
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 878
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 879
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 881
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isPinnedPlayerVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 882
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 885
    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 887
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 889
    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 891
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v3, :cond_4

    .line 892
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 894
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 895
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v6, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 898
    :cond_5
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v3, :cond_7

    .line 899
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 901
    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 903
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v6

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    :cond_7
    iget-object v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v3, :cond_9

    .line 906
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 908
    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 910
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v5, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    :cond_9
    iget-boolean v3, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v3, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v3, "windowBackgroundWhite"

    .line 914
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 916
    :cond_a
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 917
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_b

    .line 918
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 921
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 922
    invoke-virtual {v2, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 923
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    return-void
.end method

.method private presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1154
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1155
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    if-eqz p1, :cond_1

    .line 1157
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 p1, 0x0

    .line 1158
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "presentFragmentInternalRemoveOld"

    .line 1160
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto :goto_1

    .line 1162
    :cond_1
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 1165
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1167
    :try_start_0
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1169
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1171
    :try_start_1
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1173
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1178
    :cond_2
    :goto_0
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1179
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    .line 1181
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1185
    :cond_3
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz p1, :cond_4

    .line 1186
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    .line 1188
    iget-object v0, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1191
    :cond_4
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz p1, :cond_5

    .line 1192
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    .line 1194
    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 1199
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 2137
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 2140
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 2141
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 2143
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 p2, 0x0

    .line 2144
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment(Z)Z

    goto :goto_0

    .line 2146
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2147
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    .line 2148
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2149
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeFragmentFromStackInternal "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private startLayoutAnimation(ZZZ)V
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1204
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgress:F

    .line 1205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastFrameTime:J

    .line 1207
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZZZ)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$addFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z
    .locals 6

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return v1

    .line 1673
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1676
    :cond_3
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/4 v0, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq p2, v0, :cond_5

    if-ne p2, v2, :cond_4

    goto :goto_0

    .line 1719
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "addFragmentToStack"

    .line 1720
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1678
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1680
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 1681
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1682
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 1684
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1688
    :cond_6
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v4, :cond_7

    .line 1689
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    .line 1691
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1694
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v4, :cond_8

    .line 1695
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_8

    .line 1697
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1701
    :cond_8
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v4, :cond_9

    .line 1702
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 1704
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1705
    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1709
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v2, :cond_a

    .line 1711
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attachView(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1712
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1713
    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1714
    invoke-virtual {p1, v3, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1715
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1717
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFragmentToStack "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 4

    .line 2266
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2276
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2277
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2278
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2280
    :cond_1
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2281
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    if-lt v0, v1, :cond_5

    .line 2400
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    if-eqz v0, :cond_5

    .line 2401
    iget v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v3, :cond_3

    .line 2402
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    .line 2403
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    :cond_3
    if-nez p2, :cond_4

    .line 2406
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 2407
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 2409
    :cond_4
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeInBackground(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 2412
    :cond_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void

    .line 2267
    :cond_6
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateThemeAfterAnimation:Z

    .line 2268
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAfterAnimation:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 2269
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeNightAfterAnimation:Z

    .line 2270
    iget p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateSetThemeAccentIdAfterAnimation:I

    if-eqz p2, :cond_7

    .line 2272
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method

.method public synthetic animateThemedValues(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    return-void
.end method

.method public synthetic animateThemedValues(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V

    return-void
.end method

.method public bringToFront(I)V
    .locals 6

    .line 2055
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 2059
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2060
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2061
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 2063
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2067
    :cond_1
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v3, :cond_2

    .line 2068
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 2070
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2073
    :cond_2
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v3, :cond_3

    .line 2074
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 2076
    iget-object v4, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2080
    :cond_3
    iget-object v3, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 2081
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_4

    .line 2083
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2084
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2085
    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2089
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2090
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 2091
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_6

    .line 2093
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 2095
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 2097
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 2098
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2101
    :cond_7
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2102
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2103
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v2, :cond_8

    .line 2104
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 2106
    :cond_8
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 2108
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2110
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2111
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 2114
    :cond_a
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v0, :cond_c

    .line 2115
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 2117
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2119
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2122
    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2123
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2124
    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez p1, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_d

    const-string p1, "windowBackgroundWhite"

    .line 2125
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_d
    :goto_2
    return-void
.end method

.method public checkBlackScreen(Ljava/lang/String;)V
    .locals 2

    .line 2688
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_1

    .line 2689
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2690
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    .line 2691
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    .line 2693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2695
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->lastActions:Ljava/util/ArrayList;

    .line 2698
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2699
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->debugBlackScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public checkTransitionAnimation()Z
    .locals 6

    .line 1126
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1129
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x5dc

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 1130
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onAnimationEndCheck(Z)V

    .line 1132
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    return v0
.end method

.method public synthetic closeLastFragment()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public closeLastFragment(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1841
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(ZZ)V

    return-void
.end method

.method public closeLastFragment(ZZ)V
    .locals 12

    .line 1845
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeLastFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    .line 1852
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1853
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x0

    .line 1855
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 1856
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v2, :cond_4

    if-eqz p1, :cond_5

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "view_animations"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p1, v1

    goto :goto_0

    :cond_5
    move p1, v0

    .line 1857
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1859
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-le v3, v1, :cond_6

    .line 1860
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    goto :goto_1

    :cond_6
    move-object v3, v4

    :goto_1
    const-wide/16 v6, 0xc8

    if-eqz v3, :cond_1d

    .line 1864
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v5, "actionBarDefault"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_8

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v5, v0

    goto :goto_3

    :cond_8
    :goto_2
    move v5, v1

    :goto_3
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->hasForceLightStatusBar()Z

    move-result v9

    invoke-static {p2, v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;ZZ)V

    .line 1865
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1866
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1867
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1869
    invoke-virtual {v3, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1870
    iget-object p2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez p2, :cond_9

    .line 1872
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 1875
    :cond_9
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v5, :cond_12

    .line 1876
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1877
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_a

    .line 1879
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1881
    :try_start_0
    invoke-virtual {v5, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 1883
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1886
    :cond_a
    :goto_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1887
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 1888
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1889
    iput v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1890
    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v0, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1892
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isPinnedPlayerVisible()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1893
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1896
    :cond_b
    invoke-virtual {p2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1897
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1898
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v5, :cond_c

    .line 1899
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1901
    :cond_c
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 1903
    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1905
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1906
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v5, v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1909
    :cond_e
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v5, :cond_10

    .line 1910
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_f

    .line 1912
    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1914
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v10

    invoke-static {v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1916
    :cond_10
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v5, :cond_12

    .line 1917
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_11

    .line 1919
    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1921
    :cond_11
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v9, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1926
    :cond_12
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1927
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1928
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1929
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1930
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1931
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_13

    .line 1932
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 1934
    :cond_13
    iget-object v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1935
    iget-boolean v5, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v5, :cond_14

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_14

    const-string v5, "windowBackgroundWhite"

    .line 1936
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_14
    if-eqz p1, :cond_1c

    .line 1940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 1941
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 1944
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    .line 1945
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1972
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez p1, :cond_15

    .line 1973
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v4

    :cond_15
    if-nez v4, :cond_1a

    .line 1976
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1977
    :cond_16
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$9;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 1987
    invoke-static {p1, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    .line 1989
    :cond_17
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz p1, :cond_18

    goto :goto_5

    :cond_18
    move p1, v0

    goto :goto_6

    :cond_19
    :goto_5
    move p1, v1

    :goto_6
    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    goto :goto_7

    .line 1992
    :cond_1a
    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1993
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1994
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_1b
    :goto_7
    const-string p1, "closeLastFragment"

    .line 1997
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1999
    :cond_1c
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragmentInternalRemoveOld(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2000
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2001
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 2002
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    goto :goto_8

    .line 2005
    :cond_1d
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz p1, :cond_1f

    if-nez p2, :cond_1f

    .line 2006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 2007
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 2010
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    .line 2021
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2023
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz p2, :cond_1e

    .line 2024
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    :cond_1e
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2028
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 2029
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2030
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2031
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$10;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2042
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_8

    .line 2044
    :cond_1f
    invoke-direct {p0, v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    const/16 p1, 0x8

    .line 2045
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2046
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz p2, :cond_20

    .line 2047
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    :goto_8
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public synthetic dismissDialogs()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$dismissDialogs(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_3

    .line 663
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onPreIme()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 666
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 11

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawCurrentPreviewFragmentAbove()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v0, :cond_2

    .line 673
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    :goto_0
    if-ne p2, v0, :cond_2

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return v1

    .line 680
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 681
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 682
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    .line 683
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    .line 685
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne p2, v5, :cond_3

    const/4 v4, 0x1

    .line 686
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    .line 687
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne p2, v5, :cond_4

    move v3, v2

    .line 691
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 692
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isTransitionAnimationInProgress()Z

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v6, :cond_5

    .line 693
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v1, v4, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 695
    :cond_5
    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne p2, v6, :cond_7

    .line 696
    invoke-direct {p0, p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 698
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 699
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 p4, -0x1

    if-nez v2, :cond_8

    .line 701
    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    if-eq v5, p4, :cond_c

    .line 702
    :cond_8
    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    if-eq v5, p4, :cond_9

    goto :goto_2

    :cond_9
    sub-int v5, v0, v2

    .line 703
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/4 v7, 0x0

    if-ne p2, v6, :cond_a

    int-to-float p4, v5

    const/16 v0, 0x14

    .line 704
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p4, v7, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p4

    .line 705
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, v2, v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 706
    sget-object p2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 707
    sget-object p2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 708
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-ne p2, v2, :cond_c

    int-to-float p2, v5

    int-to-float v0, v0

    div-float/2addr p2, v0

    const v0, 0x3f4ccccd    # 0.8f

    .line 709
    invoke-static {p2, v7, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    .line 710
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x43190000    # 153.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 711
    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    if-eq p2, p4, :cond_b

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 712
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    int-to-float v8, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v9, p2

    sget-object v10, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_b
    int-to-float v1, v3

    const/4 v2, 0x0

    int-to-float v3, v4

    .line 714
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float v4, p2

    sget-object v5, Lorg/telegram/ui/ActionBar/ActionBarLayout;->scrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    :goto_3
    return p3
.end method

.method public drawCurrentPreviewFragment(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 10

    .line 738
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v0, :cond_5

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 740
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 741
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    const/high16 v2, 0x437f0000    # 255.0f

    if-gez v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 742
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v6, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v8, v1

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_1

    .line 744
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 746
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 747
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    .line 749
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 751
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 752
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 753
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 754
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 755
    iget v3, v5, Landroid/graphics/Rect;->top:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_3

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/2addr v3, v1

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 756
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 757
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 758
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 761
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public synthetic drawHeaderShadow(Landroid/graphics/Canvas;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$drawHeaderShadow(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public drawHeaderShadow(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 562
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 563
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 564
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 565
    sget-object v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 568
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 570
    :cond_1
    :goto_0
    sget-object p2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sget-object v2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    sget-object p2, Lorg/telegram/ui/ActionBar/ActionBarLayout;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public expandPreviewFragment()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1786
    iput-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    const/4 v2, 0x0

    .line 1787
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    .line 1789
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1790
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1792
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    .line 1793
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1794
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1796
    :cond_0
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 1797
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1799
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isPinnedPlayerVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1800
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :cond_1
    const/4 v7, -0x1

    .line 1803
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1804
    iget-object v7, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1806
    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1808
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v5, [Landroid/animation/Animator;

    .line 1809
    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    .line 1810
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v4, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v9, v8, [F

    fill-array-data v9, :array_1

    .line 1811
    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1809
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0xc8

    .line 1812
    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1813
    new-instance v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    const-wide/16 v12, 0x0

    const-wide v14, 0x3fe28f5c28f5c28fL    # 0.58

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v9, v1

    invoke-direct/range {v9 .. v17}, Lorg/telegram/ui/Components/CubicBezierInterpolator;-><init>(DDDD)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1814
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;

    invoke-direct {v1, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarLayout$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1821
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1822
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1824
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 1825
    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 3

    .line 2605
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->extendActionMode(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public finishPreviewFragment()V
    .locals 1

    .line 1830
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_0

    return-void

    .line 1833
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1834
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1835
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    :cond_1
    const/4 v0, 0x1

    .line 1837
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    return-void
.end method

.method public bridge synthetic getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getBackgroundFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPreviewFragmentAlpha()F
    .locals 1

    .line 729
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 730
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inPreviewMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 1

    .line 2583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-object v0
.end method

.method public getFragmentStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    return-object v0
.end method

.method public getInnerTranslationX()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 604
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    return v0
.end method

.method public getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1121
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object v0
.end method

.method public getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 2554
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 2549
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getOverlayContainerView()Landroid/widget/FrameLayout;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getParentActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getParentActivity(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewMenu()Landroid/view/View;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object v0
.end method

.method public getPulledDialogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation

    .line 2559
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->pulledDialogs:Ljava/util/List;

    return-object v0
.end method

.method public getThemeAnimationValue()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2233
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimationValue:F

    return v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getView(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public synthetic hasIntegratedBlurInPreview()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$hasIntegratedBlurInPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isActionBarInCrossfade()Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$isActionBarInCrossfade(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    return v0
.end method

.method public isInBubbleMode()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inBubbleMode:Z

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 1308
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isMusicPlaying()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isMusicPlaying:Z

    return v0
.end method

.method public isPinnedPlayerVisible()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isMusicPlaying:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewOpenAnimationInProgress()Z
    .locals 1

    .line 1137
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewOpenAnimationInProgress:Z

    return v0
.end method

.method public isSwipeInProgress()Z
    .locals 1

    .line 1142
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return v0
.end method

.method public isTransitionAnimationInProgress()Z
    .locals 1

    .line 1147
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public movePreviewFragment(F)V
    .locals 3

    .line 1767
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1770
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float p1, p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    const/16 v2, 0x3c

    .line 1774
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1776
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->expandPreviewFragment()V

    goto :goto_0

    :cond_2
    :goto_1
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1780
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onActionModeFinished(Ljava/lang/Object;)V
    .locals 1

    .line 2470
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2471
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2473
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    return-void
.end method

.method public onActionModeStarted(Ljava/lang/Object;)V
    .locals 1

    .line 2462
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 2463
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 2465
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 2703
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2704
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1066
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1069
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1072
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v1, :cond_2

    .line 1073
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 1076
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1077
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1079
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 525
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 528
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 529
    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    iget-object v2, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v3, v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_0

    .line 531
    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 2709
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2710
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->attached:Z

    return-void
.end method

.method public onGetDebugItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugController$DebugItem;",
            ">;"
        }
    .end annotation

    .line 2627
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2629
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2630
    instance-of v2, v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v2, :cond_0

    .line 2631
    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2633
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    return-object v1

    .line 2636
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 2454
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    .line 2455
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onMenuButtonPressed()V

    .line 2457
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1087
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_0

    .line 541
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    .line 542
    aput p2, v1, p1

    .line 543
    invoke-interface {v0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onMeasureOverride([I)V

    .line 544
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->measureSpec:[I

    aget v0, p2, v2

    .line 545
    aget p2, p2, p1

    move p1, v0

    .line 547
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 646
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 630
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 928
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inActionMode:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    if-nez v0, :cond_15

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_14

    if-eqz p1, :cond_1

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 931
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 932
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 934
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return v1

    .line 937
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    .line 938
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    .line 941
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    .line 942
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    :cond_1
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_7

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v4, v5, :cond_7

    .line 945
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    .line 946
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 948
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 949
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 950
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 951
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v5, :cond_4

    int-to-float v5, v3

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/2addr v5, v0

    if-le v5, v4, :cond_4

    .line 952
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 953
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p0, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->findScrollingChild(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    .line 954
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 956
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    goto/16 :goto_3

    .line 958
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz p1, :cond_14

    .line 959
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez p1, :cond_6

    .line 960
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 961
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 963
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 964
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBeginSlide()V

    .line 965
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 967
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 968
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x0

    if-eqz p1, :cond_13

    .line 970
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_13

    .line 971
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    .line 972
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 974
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 976
    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const v6, 0x455ac000    # 3500.0f

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-nez v5, :cond_b

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 977
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    .line 978
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_b

    .line 979
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_b

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->canBeginSlide()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 980
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->prepareForMoving(Landroid/view/MotionEvent;)V

    .line 981
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    if-nez p1, :cond_b

    .line 982
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 983
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 985
    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->beginTrackingSent:Z

    .line 989
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz p1, :cond_12

    .line 990
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result p1

    .line 991
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 992
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 993
    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 994
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    cmpg-float v9, p1, v9

    if-gez v9, :cond_d

    cmpg-float v6, v7, v6

    if-ltz v6, :cond_c

    cmpg-float v6, v7, v8

    if-gez v6, :cond_d

    :cond_c
    move v6, v2

    goto :goto_0

    :cond_d
    move v6, v1

    .line 996
    :goto_0
    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->shouldOverrideSlideTransition(ZZ)Z

    move-result v7

    const-string v8, "innerTranslationX"

    const/16 v9, 0x32

    const/high16 v10, 0x43480000    # 200.0f

    if-nez v6, :cond_e

    .line 999
    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    sub-float p1, v11, p1

    .line 1000
    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, p1

    float-to-int v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v7, :cond_f

    new-array v7, v3, [Landroid/animation/Animator;

    .line 1002
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    .line 1003
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v1

    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v1

    new-array v9, v2, [F

    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1004
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1002
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 1009
    :cond_e
    iget-object v11, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    mul-float/2addr v10, p1

    float-to-int v10, v10

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v7, :cond_f

    new-array v7, v3, [Landroid/animation/Animator;

    .line 1011
    iget-object v10, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v12, v2, [F

    const/4 v13, 0x0

    aput v13, v12, v1

    .line 1012
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    int-to-long v11, v9

    invoke-virtual {v10, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v1

    new-array v9, v2, [F

    aput v13, v9, v1

    .line 1013
    invoke-static {p0, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v2

    .line 1011
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1018
    :cond_f
    :goto_1
    invoke-virtual {v0, v1, v6, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCustomSlideTransition(ZZF)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_10

    new-array v7, v2, [Landroid/animation/Animator;

    aput-object v0, v7, v1

    .line 1020
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1023
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_11

    .line 1025
    invoke-virtual {v0, v1, v6, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCustomSlideTransition(ZZF)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_11

    new-array v0, v2, [Landroid/animation/Animator;

    aput-object p1, v0, v1

    .line 1027
    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1031
    :cond_11
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;

    invoke-direct {p1, p0, v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Z)V

    invoke-virtual {v5, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1037
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1038
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationInProgress:Z

    goto :goto_2

    .line 1041
    :cond_12
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1042
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1045
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    .line 1046
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1047
    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_3

    :cond_13
    if-nez p1, :cond_14

    .line 1050
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->maybeStartTracking:Z

    .line 1051
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    .line 1053
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_14

    .line 1054
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1055
    iput-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->velocityTracker:Landroid/view/VelocityTracker;

    .line 1059
    :cond_14
    :goto_3
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    return p1

    :cond_15
    return v1
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 638
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    return p1
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1322
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1323
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    .line 1324
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    .line 1325
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    .line 1326
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    .line 1327
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v10, 0x0

    if-eqz v8, :cond_34

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkTransitionAnimation()Z

    move-result v5

    if-nez v5, :cond_34

    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v5, v7, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_0
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_10

    .line 1332
    :cond_1
    iget-boolean v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    if-eqz v0, :cond_3

    .line 1333
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 1334
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1335
    iput-object v11, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 1337
    :cond_2
    invoke-virtual {v7, v10, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(ZZ)V

    .line 1339
    :cond_3
    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 1340
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_5

    .line 1341
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1342
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1344
    :cond_4
    iput-object v11, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1346
    :cond_5
    iput-object v3, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v3, :cond_6

    move v0, v12

    goto :goto_0

    :cond_6
    move v0, v10

    .line 1347
    :goto_0
    invoke-virtual {v8, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    .line 1348
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->hideKeyboardOnShow()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v9, :cond_7

    .line 1349
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_7
    if-nez v9, :cond_9

    if-nez v1, :cond_8

    .line 1351
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    invoke-interface {v0, v1, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v10

    goto :goto_2

    :cond_9
    :goto_1
    move v0, v12

    .line 1353
    :goto_2
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v13, v1

    goto :goto_3

    :cond_a
    move-object v13, v11

    .line 1355
    :goto_3
    invoke-virtual {v8, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1356
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->checkPasscode()V

    .line 1357
    iget-object v1, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-nez v1, :cond_b

    .line 1359
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    goto :goto_4

    .line 1361
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    .line 1363
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    .line 1364
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1369
    :cond_c
    :goto_4
    iget-object v2, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0x18

    if-eqz v3, :cond_d

    .line 1372
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1374
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 1375
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x2

    .line 1376
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1377
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v14, v5

    const/4 v15, 0x6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    sub-int/2addr v14, v15

    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1379
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_d
    move v5, v10

    .line 1381
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v14, -0x1

    .line 1382
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1383
    iput v14, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v15, 0x15

    const/4 v2, 0x2

    if-eqz v9, :cond_12

    .line 1385
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPreviewHeight()I

    move-result v11

    .line 1386
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v12, v15, :cond_e

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_6

    :cond_e
    move v12, v10

    :goto_6
    if-lez v11, :cond_f

    .line 1387
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v16, v12

    if-ge v11, v15, :cond_f

    .line 1388
    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v15, v12

    sub-int/2addr v15, v11

    div-int/2addr v15, v2

    add-int/2addr v12, v15

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    move v11, v10

    goto :goto_7

    :cond_10
    const/16 v11, 0x18

    .line 1391
    :goto_7
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1392
    sget v12, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v11, v12

    iput v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_8
    const/16 v11, 0x8

    if-eqz v3, :cond_11

    .line 1395
    iget v12, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v5, v15

    add-int/2addr v12, v5

    iput v12, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1398
    :cond_11
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_9

    .line 1400
    :cond_12
    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v10, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1402
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isPinnedPlayerVisible()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1403
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1407
    :cond_13
    :goto_9
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1408
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldAddToContainer()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1409
    iget-boolean v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    if-eqz v5, :cond_14

    .line 1410
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 1412
    :cond_14
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_15

    .line 1414
    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1416
    :cond_15
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1417
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v6, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v11, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    iget-object v12, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1420
    :cond_16
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-eqz v5, :cond_18

    .line 1421
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_17

    .line 1423
    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1425
    :cond_17
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v11

    invoke-static {v14, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1427
    :cond_18
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    if-eqz v5, :cond_1a

    .line 1428
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_19

    .line 1430
    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1432
    :cond_19
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v6, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v14, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v5, v6, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    :cond_1a
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "presentFragment"

    .line 1437
    invoke-direct {v7, v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChanged(Ljava/lang/String;)V

    .line 1438
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onViewCreated()V

    .line 1439
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1441
    iget-object v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 1442
    iget-boolean v5, v8, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    if-nez v5, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_1b

    const-string v5, "windowBackgroundWhite"

    .line 1443
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1446
    :cond_1b
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1447
    iget-object v6, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iput-object v6, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1448
    iput-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 1449
    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v11, 0x0

    .line 1450
    invoke-virtual {v7, v11}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->setInnerTranslationX(F)V

    .line 1451
    iget-object v5, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    if-eqz v9, :cond_1e

    .line 1454
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1c

    .line 1455
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;

    invoke-direct {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v5, 0x1

    .line 1462
    invoke-virtual {v1, v5}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v5, 0x4

    .line 1463
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setElevation(F)V

    .line 1465
    :cond_1c
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_1d

    .line 1466
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, 0x2e000000

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1468
    :cond_1d
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->previewBackgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1469
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v10}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1472
    :cond_1e
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    if-nez v0, :cond_1f

    .line 1474
    invoke-direct {v7, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1475
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v1, :cond_1f

    .line 1476
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    :cond_1f
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_20

    .line 1481
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    :cond_20
    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v0, :cond_24

    if-eqz v9, :cond_21

    goto :goto_a

    .line 1635
    :cond_21
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1636
    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1637
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    if-eqz v13, :cond_23

    .line 1640
    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1641
    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_23
    const/4 v0, 0x1

    .line 1643
    invoke-virtual {v8, v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1644
    invoke-virtual {v8, v0, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1645
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    goto/16 :goto_f

    :cond_24
    :goto_a
    const/4 v0, 0x1

    .line 1485
    iget-boolean v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    const-wide/16 v14, 0xc8

    if-eqz v1, :cond_27

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_27

    .line 1486
    invoke-direct {v7, v4, v13}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragmentInternalRemoveOld(ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    .line 1489
    iput-boolean v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 1491
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda8;

    invoke-direct {v0, v13, v8}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1501
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v13, :cond_26

    .line 1505
    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    :cond_26
    const/4 v1, 0x1

    .line 1507
    invoke-virtual {v8, v1, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1508
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1509
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1510
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->accelerateDecelerateInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1511
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1512
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;

    invoke-direct {v1, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1518
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_f

    .line 1520
    :cond_27
    iput-boolean v9, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationPreviewMode:Z

    .line 1521
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationStartTime:J

    const/4 v0, 0x1

    .line 1522
    iput-boolean v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    .line 1524
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda7;

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v9

    move-object v5, v13

    move-object v14, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    iput-object v14, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1542
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_29

    if-eqz v13, :cond_28

    .line 1544
    invoke-virtual {v13, v10, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1546
    :cond_28
    invoke-virtual {v8, v1, v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1549
    :cond_29
    iput-boolean v10, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    .line 1550
    iput-object v13, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1551
    iput-object v8, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v9, :cond_2a

    .line 1554
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBarLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;)V

    invoke-virtual {v8, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_c

    :cond_2a
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_31

    .line 1557
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    if-eqz v9, :cond_2b

    .line 1559
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1560
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1561
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    goto :goto_d

    .line 1563
    :cond_2b
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1564
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1565
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1567
    :goto_d
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_e

    .line 1611
    :cond_2c
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1612
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;

    invoke-direct {v0, v7, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    .line 1623
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    :cond_2d
    const/4 v0, 0x1

    .line 1625
    invoke-direct {v7, v0, v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startLayoutAnimation(ZZZ)V

    goto/16 :goto_b

    :cond_2e
    :goto_e
    if-eqz v13, :cond_2f

    if-nez v9, :cond_2f

    .line 1569
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveKeyboardPositionBeforeTransition()V

    .line 1571
    :cond_2f
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBarLayout$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v6, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    .line 1594
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1595
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;

    invoke-direct {v0, v7, v13, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarLayout$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    .line 1610
    :cond_30
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_b

    :cond_31
    if-nez v9, :cond_33

    .line 1628
    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->access$000(Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;)Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_32
    if-eqz v13, :cond_33

    .line 1629
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveKeyboardPositionBeforeTransition()V

    .line 1631
    :cond_33
    iput-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    goto/16 :goto_b

    :goto_f
    return v0

    :cond_34
    :goto_10
    return v10

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    return p1
.end method

.method public synthetic presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    move-result p1

    return p1
.end method

.method public rebuildAllFragmentViews(ZZ)V
    .locals 3

    .line 2427
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->startedTracking:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2433
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 2437
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inPreviewMode:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2441
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 2442
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2444
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_4

    .line 2445
    invoke-interface {v0, p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    :cond_4
    if-eqz p2, :cond_5

    .line 2448
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastFragment()V

    :cond_5
    return-void

    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 2428
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildAfterAnimation:Z

    .line 2429
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->rebuildLastAfterAnimation:Z

    .line 2430
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->showLastAfterAnimation:Z

    return-void
.end method

.method public synthetic rebuildFragments(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$rebuildFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    return-void
.end method

.method public rebuildLogout()V
    .locals 1

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2419
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 2420
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentActionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 2421
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->newFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2422
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->oldFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public removeAllFragments()V
    .locals 2

    .line 2173
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2174
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic removeFragmentFromStack(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V

    return-void
.end method

.method public synthetic removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
    .locals 3

    .line 2157
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 2158
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 2159
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    .line 2161
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFragmentFromStack "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->checkBlackScreen(Ljava/lang/String;)V

    .line 2162
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2163
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->closeLastFragment(Z)V

    goto :goto_1

    .line 2165
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2166
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    .line 2168
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->allowFinishFragmentInsteadOfRemoveFromStack()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeFragmentFromStackInternal(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    :goto_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 658
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public resumeDelayedFragmentAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedAnimationResumed:Z

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->waitingForKeyboardCloseRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 1304
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delayedOpenAnimationRunnable:Ljava/lang/Runnable;

    :cond_1
    :goto_0
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 2574
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->backgroundView:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    return-void
.end method

.method public setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    .line 2579
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 1

    .line 2615
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    if-eqz v0, :cond_0

    .line 2616
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;->setFragmentPanTranslationOffset(I)V

    :cond_0
    return-void
.end method

.method public setFragmentStack(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 501
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    .line 502
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 503
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 504
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 505
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 506
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 507
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 508
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerViewBack:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;-><init>(Lorg/telegram/ui/ActionBar/ActionBarLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 512
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 513
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 514
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 515
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 519
    invoke-virtual {v0, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFragmentStackChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1657
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setHighlightActionButtons(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->highlightActionButtons:Z

    return-void
.end method

.method public setInBubbleMode(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->inBubbleMode:Z

    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 577
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->innerTranslationX:F

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 580
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    .line 583
    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onSlideProgress(ZF)V

    .line 584
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr p1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 585
    invoke-static {p1, v2, v3}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    .line 586
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isBeginToShow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v2

    .line 588
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 590
    invoke-static {v2, v0, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setNavigationBarColor(I)V

    :cond_0
    return-void
.end method

.method public setMusicPlaying(Z)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isMusicPlaying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 94
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isMusicPlaying:Z

    .line 95
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->updatePinnedPlayerVisible()V

    return-void
.end method

.method public setOverrideWidthOffset(I)V
    .locals 0

    .line 723
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overrideWidthOffset:I

    .line 724
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setPulledDialogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;)V"
        }
    .end annotation

    .line 2564
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->pulledDialogs:Ljava/util/List;

    return-void
.end method

.method public setRemoveActionBarExtraHeight(Z)V
    .locals 0

    .line 2587
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->removeActionBarExtraHeight:Z

    return-void
.end method

.method public setThemeAnimationValue(F)V
    .locals 18
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2181
    iput v1, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimationValue:F

    .line 2182
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 2183
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2184
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 2185
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 2187
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 2188
    aget v10, v7, v9

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 2189
    aget v11, v7, v9

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 2190
    aget v12, v7, v9

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 2191
    aget v13, v7, v9

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 2193
    aget v14, v6, v9

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 2194
    aget v15, v6, v9

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 2195
    aget v16, v6, v9

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 2196
    aget v16, v6, v9

    move/from16 v17, v2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    move-object/from16 v16, v6

    int-to-float v6, v2

    sub-int/2addr v13, v2

    int-to-float v2, v13

    mul-float/2addr v2, v1

    add-float/2addr v6, v2

    float-to-int v2, v6

    const/16 v6, 0xff

    .line 2198
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v13, v14

    sub-int/2addr v10, v14

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 2199
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v13, v15

    sub-int/2addr v11, v15

    int-to-float v11, v11

    mul-float/2addr v11, v1

    add-float/2addr v13, v11

    float-to-int v11, v13

    .line 2200
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v13, v3

    sub-int/2addr v12, v3

    int-to-float v3, v12

    mul-float/2addr v3, v1

    add-float/2addr v13, v3

    float-to-int v3, v13

    .line 2201
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2202
    invoke-static {v2, v10, v11, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 2203
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2204
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setAnimatedColor(I)V

    const/4 v6, 0x0

    .line 2205
    invoke-virtual {v3, v2, v6, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2208
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    .line 2209
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v3, :cond_2

    .line 2211
    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor()V

    .line 2212
    invoke-interface {v3, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->onAnimationProgress(F)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2215
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 2216
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_4

    .line 2217
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 2218
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v4

    .line 2219
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2222
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz v2, :cond_5

    .line 2223
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 2225
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v2, :cond_6

    .line 2226
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onThemeProgress(F)V

    :cond_6
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 2

    .line 2592
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    .line 2593
    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    .line 2594
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->overlayAction:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 2595
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 2596
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2597
    iget-object p2, p2, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p2, :cond_0

    .line 2598
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayText:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->titleOverlayTextId:I

    invoke-virtual {p2, v0, v1, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUseAlphaAnimations(Z)V
    .locals 0

    .line 2569
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->useAlphaAnimations:Z

    return-void
.end method

.method public showLastFragment()V
    .locals 1

    .line 2130
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2133
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->bringToFront(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 2527
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2530
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->transitionAnimationInProgress:Z

    if-eqz v0, :cond_4

    .line 2531
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 2532
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 2533
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 2535
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2536
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onCloseAnimationEnd()V

    goto :goto_0

    .line 2537
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2538
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->onOpenAnimationEnd()V

    .line 2540
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->containerView:Lorg/telegram/ui/ActionBar/ActionBarLayout$LayoutContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    if-eqz p1, :cond_5

    .line 2543
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void
.end method

.method public updatePinnedPlayerColors()V
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez v1, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {v1}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateColors()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updatePinnedPlayerVisible()V
    .locals 5

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 100
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    if-nez v3, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->isPinnedPlayerVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 105
    invoke-static {}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 106
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v3, v4}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->setVisibility(I)V

    .line 107
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    invoke-virtual {v3, v4}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->updateTitle(Z)V

    goto :goto_1

    .line 109
    :cond_2
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 110
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->pinnedPlayerView:Lcom/iMe/fork/ui/view/PinnedPlayerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/iMe/fork/ui/view/PinnedPlayerView;->setVisibility(I)V

    .line 112
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 114
    iget-object v1, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    return-void
.end method
