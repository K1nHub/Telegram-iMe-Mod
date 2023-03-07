.class public Lorg/telegram/ui/LNavigation/LNavigation;
.super Landroid/widget/FrameLayout;
.source "LNavigation.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout;
.implements Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    }
.end annotation


# static fields
.field private static SPRING_DAMPING_RATIO:F = 1.0f

.field private static SPRING_STIFFNESS:F = 1000.0f


# instance fields
.field private allowToPressByHover:Z

.field private animateEndColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private animateStartColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field private animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

.field private backgroundView:Landroid/view/View;

.field private blurPaint:Landroid/graphics/Paint;

.field private blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

.field private currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private customAnimation:Landroid/animation/AnimatorSet;

.field private delayedPresentAnimation:Ljava/lang/Runnable;

.field private delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

.field private dimmPaint:Landroid/graphics/Paint;

.field private drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

.field private fragmentStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private headerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private highlightActionButtons:Z

.field private ignoreRect:Landroid/graphics/Rect;

.field private isFirstHoverAllowed:Z

.field private isInActionMode:Z

.field private isInBubbleMode:Z

.field private isMusicPlaying:Z

.field private isSwipeDisallowed:Z

.field private isSwipeInProgress:Z

.field private layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private menuDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

.field private messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

.field private onFragmentStackChangedListener:Ljava/lang/Runnable;

.field private openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

.field private overlayLayout:Landroid/widget/FrameLayout;

.field private path:Landroid/graphics/Path;

.field private presentingFragmentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private previewExpandProgress:F

.field private previewFragmentRect:Landroid/graphics/Rect;

.field private previewFragmentSnapshot:Landroid/graphics/Bitmap;

.field private previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private previewOpenCallback:Ljava/lang/Runnable;

.field private pulledDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;",
            ">;"
        }
    .end annotation
.end field

.field private removeActionBarExtraHeight:Z

.field private startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

.field private startScroll:F

.field private stiffnessControl:Landroid/widget/LinearLayout;

.field private swipeProgress:F

.field private themeAnimationValue:F

.field private themeAnimator:Landroid/animation/ValueAnimator;

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

.field private titleOverlayAction:Ljava/lang/Runnable;

.field private titleOverlayTitle:Ljava/lang/String;

.field private titleOverlayTitleId:I

.field private touchCapturedView:Landroid/view/View;

.field private unmodifiableFragmentStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private useAlphaAnimations:Z

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$02A-VC70DmbrvBKQM-GUIu9MzXA(Lorg/telegram/ui/LNavigation/LNavigation;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$rebuildFragments$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CGEXyde-Nl8AGuEXTI9-q8WhkIU(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTAcAJfhyhE6aocjWAxDCq0qNk4(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$expandPreviewFragment$21(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6OBB4sOhsvCMQTBbaOlFuPtBVA(Lorg/telegram/ui/LNavigation/LNavigation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$finishPreviewFragment$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$FXLqE2KA3HIsP_XSI4P7SKlz6D4(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateThemedValues$19(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FZkux7sZik0evB4XbjDCPtsQ1LE(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$4(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSqrK5bUTRLvQRE32anbw0GZDeE(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$6(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GiZO9Dt_iZNVy7ARzHew66obtnM(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateThemedValues$17(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lkn6sNyUtKeMhFVqDpDWmWNk9qA(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LvLRcNp8Ejyxemry1CV1v_s6ZGw(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$closeLastFragment$14(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9XZtDjuArgz2FrR9_Hqzvrl_YQ(Lorg/telegram/ui/LNavigation/LNavigation;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateReset$3(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$PQHlRLuOjDL5SJivHDg3mBGsLeQ(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$8(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$QIw2S01BPoaUUAwaoLPKTqn2Vd8(Lorg/telegram/ui/LNavigation/LNavigation;ILandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$rebuildFragments$13(ILandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9PQaHmdH0EQ2ophqdFuU-yJfN4(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$7(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gj1NESXevVyYGuMrno-WJpPVptk(Lorg/telegram/ui/LNavigation/LNavigation;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateThemedValues$18(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i2fNZf-pgaYaEYRpLValMV6q2Qw(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$9(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$oKCNqlqJ1wSrYDzBHc6AuDPX6NE(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$presentFragment$10(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ocdYKKEaXHjBQQvOzLkiGtDaWaA(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$expandPreviewFragment$20(Landroid/view/View;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$r7vsvRHiAbF5S6_tV2pB2oZR5I8(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateReset$2(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rx8G9HDhPzfZFMscPTmnVybTsos(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$closeLastFragment$15(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$siCJFItf2LX8h_kOLy14qv6lXjk(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$animateReset$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$ublYqKF7yXQR5tzdukeScG2Lpxs(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/LNavigation/LNavigation;->lambda$closeLastFragment$16(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->pulledDialogs:Ljava/util/List;

    .line 151
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->ignoreRect:Landroid/graphics/Rect;

    .line 156
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    .line 161
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->dimmPaint:Landroid/graphics/Paint;

    .line 171
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    .line 176
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->unmodifiableFragmentStack:Ljava/util/List;

    const/4 p2, 0x0

    .line 256
    iput-boolean p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->highlightActionButtons:Z

    .line 281
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    .line 291
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    .line 296
    new-instance v1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/MenuDrawable;->TYPE_DEFAULT:I

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->menuDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 335
    new-instance v1, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    .line 339
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateStartColors:Ljava/util/ArrayList;

    .line 345
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateEndColors:Ljava/util/ArrayList;

    .line 363
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    .line 364
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 366
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->layer_shadow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->dimmPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x7a000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 370
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->menuDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRoundCap()V

    .line 374
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 375
    new-instance v2, Landroidx/core/view/GestureDetectorCompat;

    new-instance v3, Lorg/telegram/ui/LNavigation/LNavigation$1;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LNavigation/LNavigation$1;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V

    invoke-direct {v2, p1, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 461
    invoke-virtual {v2, p2}, Landroidx/core/view/GestureDetectorCompat;->setIsLongpressEnabled(Z)V

    .line 463
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    .line 464
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/16 v2, 0xc

    .line 465
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 467
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 470
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "windowBackgroundWhiteBlackText"

    .line 471
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    .line 472
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 473
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v5, v0, [Ljava/lang/Object;

    sget v6, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, p2

    const-string v6, "Stiffness: %f"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    const/16 v7, 0x24

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    new-instance v5, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 477
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 478
    new-instance v8, Lorg/telegram/ui/LNavigation/LNavigation$2;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/LNavigation/LNavigation$2;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/widget/TextView;)V

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 492
    sget v1, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    const/high16 v8, 0x43fa0000    # 500.0f

    sub-float/2addr v1, v8

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 493
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    const/16 v8, 0x26

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-array v2, v0, [Ljava/lang/Object;

    .line 498
    sget v3, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p2

    const-string v3, "Damping ratio: %f"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    new-instance v2, Lorg/telegram/ui/Components/SeekBarView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 503
    new-instance v3, Lorg/telegram/ui/LNavigation/LNavigation$3;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LNavigation/LNavigation$3;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 517
    sget v1, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    const v3, 0x3e4ccccd    # 0.2f

    sub-float/2addr v1, v3

    const v3, 0x3f4ccccd    # 0.8f

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(F)V

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    invoke-static {v6, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-direct {v1, p1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    const/4 p1, 0x0

    const-string v0, "Show chat open measurement"

    .line 521
    invoke-virtual {v1, v0, p1, p2, p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    new-instance p2, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    const/4 v0, -0x2

    const/16 v1, 0x50

    invoke-static {v6, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->highlightActionButtons:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->allowToPressByHover:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isInActionMode:Z

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->allowToPressByHover:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LNavigation/LNavigation;)F
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startScroll:F

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/LNavigation/LNavigation;F)F
    .locals 0

    .line 76
    iput p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startScroll:F

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/LNavigation/LNavigation;)F
    .locals 0

    .line 76
    iget p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/LNavigation/LNavigation;F)F
    .locals 0

    .line 76
    iput p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LNavigation/LNavigation;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateActionBars()V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/LNavigation/LNavigation;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/LNavigation/LNavigation;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->clearTouchFlags()V

    return-void
.end method

.method static synthetic access$1702(F)F
    .locals 0

    .line 76
    sput p0, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    return p0
.end method

.method static synthetic access$1802(F)F
    .locals 0

    .line 76
    sput p0, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isFirstHoverAllowed:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Path;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->removeActionBarExtraHeight:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateStartColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateEndColors:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/LNavigation/LNavigation;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 76
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/LNavigation/LNavigation;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeDisallowed:Z

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/LNavigation/LNavigation;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeDisallowed:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/LNavigation/LNavigation;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/LNavigation/LNavigation;)Landroid/graphics/Rect;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->ignoreRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->isIgnoredView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/LNavigation/LNavigation;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    return-object p0
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

    .line 1596
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1597
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1598
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1599
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

    .line 1579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1581
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 1582
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1583
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1584
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getSetColor()I

    move-result v4

    aput v4, v0, v1

    .line 1585
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setDelegateDisabled()Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1586
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1587
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private animateReset()V
    .locals 6

    .line 558
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 559
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 564
    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 566
    new-instance v2, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v3, v3, v4

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 567
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    sget v5, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    .line 569
    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    sget v5, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    .line 570
    invoke-virtual {v2, v5}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 568
    invoke-virtual {v3, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 571
    new-instance v3, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 576
    new-instance v2, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, v0, v1}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 601
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_0

    .line 604
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private clearTouchFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 665
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeDisallowed:Z

    .line 666
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    .line 667
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->allowToPressByHover:Z

    .line 668
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isFirstHoverAllowed:Z

    return-void
.end method

.method private drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V
    .locals 7

    const/4 v0, 0x0

    .line 2066
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2068
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2070
    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 2071
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 2072
    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v3, v2

    :cond_0
    const/high16 v3, 0x42380000    # 46.0f

    mul-float v3, v3, v2

    float-to-int v3, v3

    .line 2074
    invoke-static {v3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2075
    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v3, :cond_2

    const/16 v3, 0x20

    .line 2076
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    .line 2077
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    .line 2078
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p2

    add-float/2addr v1, p2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge p2, v6, :cond_1

    const/16 v0, 0x14

    :cond_1
    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    .line 2079
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2080
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v5

    add-int/2addr v4, p2

    invoke-virtual {v0, v5, p2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2081
    sget-object p2, Lorg/telegram/ui/ActionBar/Theme;->moveUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    .locals 2

    .line 1022
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1023
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    .line 1560
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    .locals 2

    .line 1015
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1016
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private invalidateActionBars()V
    .locals 1

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 612
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private invalidateTranslation()V
    .locals 8

    .line 926
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->backgroundView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 928
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    .line 932
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    .line 933
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v3

    .line 935
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v4

    .line 937
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 938
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 942
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    if-eqz v3, :cond_4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    .line 945
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    div-float/2addr v6, v7

    .line 946
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 948
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 949
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 951
    iget v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v5, v2, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v5, v5, v6

    add-float/2addr v5, v6

    .line 952
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 953
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 954
    iget v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 956
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 960
    iget v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float/2addr v2, v4

    neg-float v2, v2

    const v4, 0x3eb33333    # 0.35f

    mul-float v2, v2, v4

    mul-float v2, v2, v5

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_3
    if-eqz v3, :cond_4

    .line 963
    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v2, v2, v5

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 966
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 969
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    .line 970
    invoke-static {v3}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v3

    invoke-static {v0}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNavigationBarColor()I

    move-result v0

    iget v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-static {v3, v0, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    .line 971
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 972
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v4, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 976
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 977
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onSlideProgressFront(ZF)V

    .line 979
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 980
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onSlideProgress(ZF)V

    :cond_8
    return-void
.end method

.method private isIgnoredView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2404
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2405
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2406
    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->isIgnoredView0(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    .line 2410
    :cond_1
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 2411
    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->isIgnoredView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2416
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LNavigation/LNavigation;->isIgnoredView0(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method private isIgnoredView0(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 2

    .line 2420
    invoke-virtual {p1, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2421
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2425
    :cond_0
    instance-of p2, p1, Landroidx/viewpager/widget/ViewPager;

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 2426
    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    .line 2427
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    const/4 p2, -0x1

    .line 2430
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p2

    if-nez p2, :cond_3

    instance-of p1, p1, Lorg/telegram/ui/Components/SeekBarView;

    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method private synthetic lambda$animateReset$1(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p3, p2

    .line 572
    iput p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 573
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 574
    iget p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private synthetic lambda$animateReset$2(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    const/4 v1, 0x0

    .line 578
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    const/4 v2, 0x0

    .line 580
    iput v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 581
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 582
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 583
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 586
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 589
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 590
    invoke-virtual {p2, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    :cond_1
    const/4 p1, 0x0

    .line 593
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 594
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateActionBars()V

    return-void
.end method

.method private synthetic lambda$animateReset$3(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 597
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_0

    .line 598
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$animateThemedValues$17(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1707
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->setThemeAnimationValue(F)V

    return-void
.end method

.method private synthetic lambda$animateThemedValues$18(ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, p1, :cond_b

    if-nez v1, :cond_0

    .line 1615
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    goto :goto_1

    .line 1617
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isPreviewOpenAnimationInProgress()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v4, :cond_2

    goto/16 :goto_4

    .line 1620
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_1
    if-eqz v3, :cond_a

    .line 1624
    iget-object v2, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v2, :cond_4

    .line 1625
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    if-nez v2, :cond_3

    .line 1626
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v0, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 1627
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 1628
    new-instance v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    invoke-direct {v2, v4, v4, v0, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    .line 1629
    iput-boolean v4, v2, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->isCrossfadeBackground:Z

    .line 1631
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->startColorsProvider:Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;

    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/INavigationLayout$StartColorsProvider;->saveColors(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1633
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    .line 1634
    invoke-direct {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->addStartDescriptions(Ljava/util/ArrayList;)V

    .line 1635
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v5, :cond_5

    .line 1636
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1637
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/LNavigation/LNavigation;->addStartDescriptions(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1638
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v5, :cond_6

    .line 1639
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 1640
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/telegram/ui/LNavigation/LNavigation;->addStartDescriptions(Ljava/util/ArrayList;)V

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    .line 1643
    iget-object v5, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterStartDescriptionsAddedRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_7

    .line 1644
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1647
    :cond_7
    invoke-direct {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->addEndDescriptions(Ljava/util/ArrayList;)V

    .line 1648
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v2, :cond_8

    .line 1649
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->addEndDescriptions(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 1650
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_9

    .line 1651
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->addEndDescriptions(Ljava/util/ArrayList;)V

    :cond_9
    :goto_3
    const/4 v2, 0x1

    :cond_a
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_19

    .line 1656
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    if-nez p1, :cond_12

    .line 1657
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isPreviewOpenAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v1, 0x2

    :goto_6
    sub-int/2addr p1, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v0, p1, :cond_11

    .line 1660
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1661
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 1662
    invoke-virtual {v2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1664
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne v0, v5, :cond_f

    .line 1665
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1666
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_8

    :cond_e
    const/4 v1, 0x1

    goto :goto_8

    .line 1670
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v0, v5, :cond_10

    .line 1671
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 1672
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_10
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    if-eqz v1, :cond_12

    .line 1679
    invoke-virtual {p0, v4}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    .line 1682
    :cond_12
    iget-boolean p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->instant:Z

    if-eqz p1, :cond_15

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1683
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->setThemeAnimationValue(F)V

    .line 1684
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1685
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1686
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1687
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 1688
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    .line 1689
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->afterAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_13

    .line 1690
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_13
    if-eqz p3, :cond_14

    .line 1693
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_14
    return-void

    .line 1697
    :cond_15
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->setAnimatingColor(Z)V

    .line 1698
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->beforeAnimationRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_16

    .line 1699
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1701
    :cond_16
    iget-object p1, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->animationProgress:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 1703
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 1705
    :cond_17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    :cond_18
    new-array p1, v3, [F

    .line 1706
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide v0, p2, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    .line 1707
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$5;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/LNavigation/LNavigation$5;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1741
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_19
    if-eqz p3, :cond_1a

    .line 1744
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1a
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic lambda$animateThemedValues$19(Ljava/lang/Runnable;)V
    .locals 0

    .line 1756
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$closeLastFragment$14(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1452
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCloseAnimationEnd(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x0

    .line 1454
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method private synthetic lambda$closeLastFragment$15(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p4, p3

    .line 1474
    iput p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 1475
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 1476
    iget p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1479
    iget p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$closeLastFragment$16(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1483
    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p3, p4, :cond_0

    .line 1484
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCloseAnimationEnd(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x0

    .line 1486
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    :cond_0
    return-void
.end method

.method private synthetic lambda$expandPreviewFragment$20(Landroid/view/View;Landroid/view/View;FLandroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p5, p4

    .line 1908
    iput p5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    .line 1909
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1911
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    .line 1913
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    iget p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-static {p1, p5, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p1, p4

    iget p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {p1, p5, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1915
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 1917
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz p1, :cond_0

    .line 1918
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {p3, p2, p4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1921
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$expandPreviewFragment$21(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1924
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    .line 1925
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1926
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1928
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1929
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    .line 1931
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 1932
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1933
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    .line 1936
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1937
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1939
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1940
    iput-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewOpenCallback:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 1941
    iput p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    .line 1943
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1944
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$finishPreviewFragment$22()V
    .locals 1

    .line 1955
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1956
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1957
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    .line 1960
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$presentFragment$10(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 907
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    .line 910
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->delayDone:Z

    .line 911
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    return-void
.end method

.method private synthetic lambda$presentFragment$4(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 763
    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 764
    invoke-interface {p0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 766
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateActionBars()V

    return-void
.end method

.method private synthetic lambda$presentFragment$5(Landroid/view/View;)V
    .locals 0

    .line 812
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$presentFragment$6(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 825
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    .line 828
    iput-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->delayDone:Z

    .line 829
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    return-void
.end method

.method private synthetic lambda$presentFragment$7(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v0, 0x0

    .line 840
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 841
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p2, :cond_0

    .line 843
    invoke-virtual {p2, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_0
    const/4 v0, 0x0

    .line 846
    iput v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 847
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 848
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 849
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 852
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    if-eqz p2, :cond_2

    .line 854
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 856
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$presentFragment$8(Lorg/telegram/ui/ActionBar/BaseFragment;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p3, p2

    .line 871
    iput p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 872
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 873
    iget p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationProgress(ZF)V

    return-void
.end method

.method private synthetic lambda$presentFragment$9(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 876
    iget-object p6, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-ne p5, p6, :cond_4

    const/4 p5, 0x1

    const/4 p6, 0x0

    .line 877
    invoke-virtual {p1, p5, p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p2, :cond_0

    .line 879
    invoke-virtual {p2, p6, p6}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    :cond_0
    const/4 p6, 0x0

    .line 882
    iput p6, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 883
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 884
    iget-boolean p6, p3, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-nez p6, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p6

    if-eqz p6, :cond_1

    .line 885
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p6

    const/16 p7, 0x8

    invoke-virtual {p6, p7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 888
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    if-eqz p2, :cond_2

    .line 890
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 891
    invoke-virtual {p2, p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 893
    :cond_2
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 895
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 897
    iget-boolean p2, p3, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewOpenCallback:Ljava/lang/Runnable;

    if-eqz p2, :cond_3

    .line 898
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 900
    :cond_3
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewOpenCallback:Ljava/lang/Runnable;

    :cond_4
    return-void
.end method

.method private synthetic lambda$rebuildFragments$12(I)V
    .locals 0

    .line 1230
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    return-void
.end method

.method private synthetic lambda$rebuildFragments$13(ILandroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1230
    new-instance p2, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyFragmentStackChanged()V
    .locals 3

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1126
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-eqz v0, :cond_2

    .line 1129
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 1130
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1131
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->backgroundView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    if-eqz v0, :cond_2

    .line 1137
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1140
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageLoader;->onFragmentStackChanged()V

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

    .line 1002
    instance-of v0, p2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v0, :cond_0

    .line 1003
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v0}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1005
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1006
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1007
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1008
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onCloseAnimationEnd(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const/4 v0, 0x1

    .line 1497
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1498
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    const/4 v1, 0x0

    .line 1499
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1500
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1501
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1502
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v2, 0x0

    .line 1503
    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1504
    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1505
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->notifyFragmentStackChanged()V

    .line 1507
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1509
    invoke-virtual {p1, v2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1510
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1511
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1515
    invoke-virtual {p2, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->prepareFragmentToSlide(ZZ)V

    .line 1516
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1517
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1520
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_3

    .line 1521
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 1522
    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    if-nez p1, :cond_2

    .line 1525
    invoke-direct {p0, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    goto :goto_0

    .line 1527
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :goto_0
    const/16 p2, 0x8

    .line 1529
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1530
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_3
    const/4 p1, 0x0

    .line 1532
    iput p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 1533
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 1535
    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1536
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    .line 1537
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1538
    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    .line 1540
    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewOpenCallback:Ljava/lang/Runnable;

    .line 1541
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateActionBars()V

    return-void
.end method

.method private onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;
    .locals 4

    .line 1087
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1088
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    goto :goto_0

    .line 1090
    :cond_0
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/content/Context;)V

    .line 1092
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1093
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1094
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1095
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    .line 1097
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    invoke-direct {p0, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    .line 1099
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    .line 1100
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1101
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayTitle:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayTitleId:I

    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    :cond_2
    return-object v0
.end method

.method private onReleaseTouch()V
    .locals 2

    .line 657
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 658
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->animateReset()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 660
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->closeLastFragment(ZZ)V

    :goto_0
    return-void
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 619
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 623
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_2

    .line 629
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isFirstHoverAllowed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->allowToPressByHover:Z

    if-nez v0, :cond_2

    .line 630
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->clearTouchFlags()V

    goto :goto_1

    .line 631
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->allowToPressByHover:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 632
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 633
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v2, :cond_3

    .line 635
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 638
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->performClick()Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 643
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->clearTouchFlags()V

    goto :goto_1

    .line 644
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    if-eqz p1, :cond_6

    .line 645
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->clearTouchFlags()V

    .line 646
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->onReleaseTouch()V

    goto :goto_1

    .line 647
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeDisallowed:Z

    if-eqz p1, :cond_7

    .line 648
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->clearTouchFlags()V

    :cond_7
    :goto_1
    return v1

    .line 653
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    return p1
.end method

.method private resetViewProperties(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1111
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1112
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 1113
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1114
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotY(F)V

    .line 1115
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1116
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1117
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1118
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private setThemeAnimationValue(F)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1764
    iput v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimationValue:F

    .line 1765
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 1766
    iget-object v5, v0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1767
    iget-object v6, v0, Lorg/telegram/ui/LNavigation/LNavigation;->animateStartColors:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 1768
    iget-object v7, v0, Lorg/telegram/ui/LNavigation/LNavigation;->animateEndColors:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 1770
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_0

    .line 1771
    aget v10, v7, v9

    invoke-static {v10}, Landroid/graphics/Color;->red(I)I

    move-result v10

    .line 1772
    aget v11, v7, v9

    invoke-static {v11}, Landroid/graphics/Color;->green(I)I

    move-result v11

    .line 1773
    aget v12, v7, v9

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    .line 1774
    aget v13, v7, v9

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v13

    .line 1776
    aget v14, v6, v9

    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 1777
    aget v15, v6, v9

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    .line 1778
    aget v16, v6, v9

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 1779
    aget v16, v6, v9

    move/from16 v17, v2

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    move-object/from16 v16, v6

    int-to-float v6, v2

    sub-int/2addr v13, v2

    int-to-float v2, v13

    mul-float v2, v2, v1

    add-float/2addr v6, v2

    float-to-int v2, v6

    const/16 v6, 0xff

    .line 1781
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v13, v14

    sub-int/2addr v10, v14

    int-to-float v10, v10

    mul-float v10, v10, v1

    add-float/2addr v13, v10

    float-to-int v10, v13

    .line 1782
    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v13, v15

    sub-int/2addr v11, v15

    int-to-float v11, v11

    mul-float v11, v11, v1

    add-float/2addr v13, v11

    float-to-int v11, v13

    .line 1783
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v13, v3

    sub-int/2addr v12, v3

    int-to-float v3, v12

    mul-float v3, v3, v1

    add-float/2addr v13, v3

    float-to-int v3, v13

    .line 1784
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1785
    invoke-static {v2, v10, v11, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 1786
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1787
    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setAnimatedColor(I)V

    const/4 v6, 0x0

    .line 1788
    invoke-virtual {v3, v2, v6, v6}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v16

    move/from16 v2, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v2

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1791
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    .line 1792
    iget-object v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimatorDelegate:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;

    if-eqz v3, :cond_2

    .line 1794
    invoke-interface {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->didSetColor()V

    .line 1795
    invoke-interface {v3, v1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;->onAnimationProgress(F)V

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1798
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1799
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_4

    .line 1800
    iget-object v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->presentingFragmentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 1801
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ThemeDescription;->getCurrentKey()Ljava/lang/String;

    move-result-object v4

    .line 1802
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;->setColor(IZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1805
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->animationProgressListener:Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;

    if-eqz v2, :cond_5

    .line 1806
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;->setProgress(F)V

    .line 1808
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v2, :cond_6

    .line 1809
    invoke-interface {v2, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onThemeProgress(F)V

    :cond_6
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
    .locals 1

    const/4 v0, 0x0

    .line 1035
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)Z

    move-result p1

    return p1
.end method

.method public addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1039
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needAddFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    return v0

    .line 1042
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p3, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    if-ge p3, v1, :cond_3

    .line 1043
    invoke-virtual {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    .line 1045
    :cond_3
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    const/16 p3, 0x8

    if-ltz p2, :cond_5

    .line 1046
    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_4

    goto :goto_0

    .line 1071
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v3, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1072
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->notifyFragmentStackChanged()V

    .line 1074
    iget-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p2, v3, :cond_8

    .line 1075
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    .line 1076
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1077
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1078
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1047
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1049
    invoke-virtual {p2, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1050
    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1051
    invoke-virtual {p2, v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1052
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1055
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->notifyFragmentStackChanged()V

    .line 1058
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p2

    .line 1059
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1061
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1062
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 1063
    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 1064
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1066
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1067
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1069
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1081
    :cond_8
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    return v2
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 531
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 535
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 532
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "LNavigation must have no more than 3 child views!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V
    .locals 4

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1607
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimator:Landroid/animation/ValueAnimator;

    .line 1609
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->onlyTopFragment:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1610
    :goto_0
    new-instance v2, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;ILorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    if-lt v0, v1, :cond_4

    .line 1747
    iget-boolean v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->applyTheme:Z

    if-eqz v0, :cond_4

    .line 1748
    iget v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->accentId:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    if-eqz v3, :cond_2

    .line 1749
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->setCurrentAccentId(I)V

    .line 1750
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->saveThemeAccents(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZZZZ)V

    :cond_2
    if-nez p2, :cond_3

    .line 1753
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->applyTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Z)V

    .line 1754
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1756
    :cond_3
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->theme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    iget-boolean p1, p1, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;->nightTheme:Z

    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda12;

    invoke-direct {v0, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeInBackground(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 1759
    :cond_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_1
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

.method public checkTransitionAnimation()Z
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v0

    return v0
.end method

.method public synthetic closeLastFragment()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public synthetic closeLastFragment(Z)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    return-void
.end method

.method public closeLastFragment(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1421
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->closeLastFragment(ZZF)V

    return-void
.end method

.method public closeLastFragment(ZZF)V
    .locals 4

    .line 1425
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->closeLastFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needCloseLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 1433
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "view_animations"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 1435
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1437
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 1439
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    .line 1441
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1442
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1445
    :cond_4
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-eqz v2, :cond_5

    .line 1447
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1450
    :cond_5
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_7

    .line 1451
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 1457
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1458
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1459
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_6
    return-void

    .line 1465
    :cond_7
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 1466
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 1468
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x44480000    # 800.0f

    goto :goto_1

    :cond_8
    sget v3, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    sget v3, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    .line 1469
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 1467
    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    cmpl-float p2, p3, p2

    if-eqz p2, :cond_9

    .line 1471
    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1473
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1482
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance p3, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0, p1, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1489
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_2

    .line 1491
    :cond_a
    iput p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 1492
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public synthetic dismissDialogs()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$dismissDialogs(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 681
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->touchCapturedView:Landroid/view/View;

    if-nez v0, :cond_0

    return v1

    .line 685
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    return v2

    .line 689
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->touchCapturedView:Landroid/view/View;

    .line 691
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v3

    .line 692
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 693
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    .line 695
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 696
    iget-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    iput-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->touchCapturedView:Landroid/view/View;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 698
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    const/4 v6, 0x0

    .line 699
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v1

    if-ge v6, v7, :cond_4

    .line 700
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 702
    :cond_4
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 705
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v5, 0x0

    .line 706
    iput-object v5, p0, Lorg/telegram/ui/LNavigation/LNavigation;->touchCapturedView:Landroid/view/View;

    :cond_7
    if-eqz v4, :cond_8

    return v1

    :cond_8
    if-eqz v0, :cond_b

    .line 712
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_3
    return v1

    .line 715
    :cond_b
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_c

    .line 718
    iput-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->touchCapturedView:Landroid/view/View;

    :cond_c
    if-nez v0, :cond_e

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_4
    return v1

    .line 723
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public doShowOpenChat()Z
    .locals 1

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->openChatCheckbox:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isActionBarInCrossfade()Z

    move-result v8

    .line 1302
    iget-boolean v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-eqz v1, :cond_0

    .line 1303
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1304
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1305
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1306
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1307
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1309
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v1

    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_4

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    if-eqz v8, :cond_3

    .line 1314
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v4, v12, v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    move v13, v1

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1317
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->dimmPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42f40000    # 122.0f

    iget v4, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v4, v12, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v14, v1

    iget v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v1, v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/LNavigation/LNavigation;->dimmPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1320
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v2, v12, v2

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1321
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v2, v2, v14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v14, v14, v3

    float-to-int v3, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1322
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1324
    :cond_4
    iget-boolean v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-eqz v1, :cond_5

    .line 1325
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1328
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 1329
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1330
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1331
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    sub-float v5, v12, v4

    mul-float v3, v3, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float v4, v12, v4

    mul-float v5, v5, v4

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v6, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v2, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    iget v13, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v4, v6, v13}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1332
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1333
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1335
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    sub-float v4, v12, v3

    mul-float v2, v2, v4

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v3, v12, v3

    mul-float v1, v1, v3

    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1336
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v12, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v12, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1337
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v12, v2

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1338
    iget-object v1, v0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v11, v11, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1339
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    if-eqz v8, :cond_f

    .line 1343
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    .line 1344
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    .line 1346
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    .line 1347
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    .line 1353
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    sget-object v8, Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;->MENU:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    if-ne v6, v8, :cond_7

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    sget-object v14, Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;->BACK:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    if-ne v6, v14, :cond_7

    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    .line 1356
    :cond_7
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    sget-object v14, Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;->BACK:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    if-ne v6, v14, :cond_8

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    if-ne v6, v8, :cond_8

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 1359
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    if-ne v6, v14, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v6

    if-ne v6, v14, :cond_9

    .line 1361
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    .line 1362
    :cond_9
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v2

    if-ne v2, v8, :cond_a

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v1

    if-ne v1, v8, :cond_a

    .line 1364
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    goto :goto_1

    .line 1367
    :goto_2
    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v14

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    invoke-virtual {v6, v11, v11, v8, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1368
    iget v8, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    const/16 v14, 0x1f

    invoke-virtual {v7, v6, v8, v14}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1369
    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->onDrawCrossfadeBackground(Landroid/graphics/Canvas;)V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1372
    iget v8, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v8, v12, v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v6, v8, v14}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1373
    invoke-virtual {v3, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->onDrawCrossfadeBackground(Landroid/graphics/Canvas;)V

    .line 1374
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    if-eqz v1, :cond_e

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v15

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v15, v13

    invoke-virtual {v6, v11, v11, v8, v15}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v5, :cond_b

    .line 1378
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_3

    :cond_b
    iget v5, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 1379
    :goto_3
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v13, v15

    neg-int v13, v13

    int-to-float v13, v13

    div-float/2addr v8, v13

    sub-float v8, v12, v8

    .line 1380
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v13

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    sget v16, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v15, v15, v16

    neg-int v15, v15

    int-to-float v15, v15

    div-float/2addr v13, v15

    sub-float v13, v12, v13

    .line 1381
    iget v15, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float v15, v12, v15

    invoke-static {v8, v13, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v6, v8, v14}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/16 v8, 0x10

    .line 1382
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    sub-float v16, v12, v5

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v15

    if-eqz v15, :cond_c

    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_4

    :cond_c
    const/4 v15, 0x0

    :goto_4
    add-int/2addr v8, v15

    int-to-float v8, v8

    invoke-virtual {v7, v13, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1383
    iget-object v8, v0, Lorg/telegram/ui/LNavigation/LNavigation;->menuDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v2, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v5, v16

    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v8, v5, v2}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    .line 1384
    iget-object v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->menuDrawable:Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/MenuDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1388
    :cond_e
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v8, v13

    invoke-virtual {v6, v11, v2, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1389
    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v2, v2, v9

    float-to-int v2, v2

    invoke-virtual {v7, v6, v2, v14}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1390
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1391
    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    const/4 v5, 0x0

    invoke-virtual {v4, v7, v5, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->onDrawCrossfadeContent(Landroid/graphics/Canvas;ZZF)V

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 1394
    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    sub-float/2addr v12, v2

    mul-float v12, v12, v9

    float-to-int v2, v12

    invoke-virtual {v7, v6, v2, v14}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 1395
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    invoke-virtual {v7, v11, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1396
    iget v2, v0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-virtual {v3, v7, v10, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->onDrawCrossfadeContent(Landroid/graphics/Canvas;ZZF)V

    .line 1397
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    .line 1995
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1996
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->isDrawCurrentPreviewFragmentAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_0

    .line 1997
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return v2

    .line 2001
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 2003
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2004
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2005
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    :cond_2
    if-ne v0, v3, :cond_3

    .line 2007
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2008
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 2010
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    if-nez v0, :cond_5

    .line 2011
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_5

    .line 2012
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2014
    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p4, :cond_4

    .line 2015
    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 2017
    :cond_4
    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v3, v3, v0

    float-to-int v0, v3

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2020
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p4, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 2021
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    iget-object p4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2022
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    if-eqz v2, :cond_6

    .line 2025
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return p3
.end method

.method public drawCurrentPreviewFragment(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 2032
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2033
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    .line 2034
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->drawPreviewDrawables(Landroid/graphics/Canvas;Landroid/view/ViewGroup;)V

    .line 2035
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2036
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v8, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    mul-float v1, v1, v3

    float-to-int v9, v1

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_0

    .line 2038
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2040
    :goto_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2041
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2042
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2043
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 2044
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewExpandProgress:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v2, v2

    :goto_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2045
    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    const/16 v4, 0x8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v5, v4, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2046
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2047
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    .line 2049
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2051
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2052
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2053
    invoke-virtual {v2, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2054
    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2055
    iget v2, v5, Landroid/graphics/Rect;->top:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_2

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v2, v1

    iput v2, v5, Landroid/graphics/Rect;->top:I

    .line 2056
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2057
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2058
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2061
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public synthetic drawHeaderShadow(Landroid/graphics/Canvas;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$drawHeaderShadow(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method public drawHeaderShadow(Landroid/graphics/Canvas;II)V
    .locals 3

    .line 2088
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2089
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 2090
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2091
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 2094
    :cond_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2096
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2097
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public expandPreviewFragment()V
    .locals 8

    .line 1874
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1879
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1882
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 1883
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v1

    .line 1884
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v2

    .line 1885
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    .line 1886
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1887
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->snapshotView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewFragmentSnapshot:Landroid/graphics/Bitmap;

    .line 1889
    invoke-direct {p0, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    .line 1890
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    const/4 v3, 0x0

    .line 1891
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    const/4 v3, 0x0

    .line 1892
    iput v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 1893
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 1896
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v4, :cond_1

    .line 1897
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 1902
    :goto_1
    new-instance v5, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v5, v3}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 1903
    new-instance v3, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v6, 0x447a0000    # 1000.0f

    invoke-direct {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v6, 0x443b8000    # 750.0f

    .line 1905
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const v6, 0x3f19999a    # 0.6f

    .line 1906
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 1904
    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1907
    new-instance v5, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v1, v2, v4}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/view/View;Landroid/view/View;F)V

    invoke-virtual {v3, v5}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1923
    iget-object v1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_2
    :goto_2
    return-void
.end method

.method public extendActionMode(Landroid/view/Menu;)Z
    .locals 1

    .line 2157
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2158
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->extendActionMode(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public finishPreviewFragment()V
    .locals 2

    .line 1953
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;)V

    .line 1962
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1963
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1965
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewOpenCallback:Ljava/lang/Runnable;

    :cond_1
    :goto_0
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

    .line 1990
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
    .locals 1

    .line 1546
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

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

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->unmodifiableFragmentStack:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    return-object v0
.end method

.method public getMessageDrawableOutMediaStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 2197
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->messageDrawableOutMediaStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getMessageDrawableOutStart()Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;
    .locals 1

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->messageDrawableOutStart:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    return-object v0
.end method

.method public getOverlayContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 1980
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->overlayLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public bridge synthetic getParentActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getParentActivity(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewMenu()Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

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

    .line 2202
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->pulledDialogs:Ljava/util/List;

    return-object v0
.end method

.method public getStiffnessControl()Landroid/widget/LinearLayout;
    .locals 1

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->stiffnessControl:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getThemeAnimationValue()F
    .locals 1

    .line 1815
    iget v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->themeAnimationValue:F

    return v0
.end method

.method public bridge synthetic getView()Landroid/view/ViewGroup;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$getView(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public hasIntegratedBlurInPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isActionBarInCrossfade()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInBubbleMode()Z
    .locals 1

    .line 1840
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isInBubbleMode:Z

    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 1845
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMusicPlaying()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isMusicPlaying:Z

    return v0
.end method

.method public isPinnedPlayerVisible()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isMusicPlaying:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isPlayerPinned:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewOpenAnimationInProgress()Z
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSwipeInProgress()Z
    .locals 1

    .line 2103
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    return v0
.end method

.method public isTransitionAnimationInProgress()Z
    .locals 1

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

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

    .line 1855
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isTransitionAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1858
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float p1, p1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x3c

    .line 1862
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1864
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->expandPreviewFragment()V

    goto :goto_0

    :cond_2
    :goto_1
    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 1867
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1868
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onActionModeFinished(Ljava/lang/Object;)V
    .locals 1

    .line 2171
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2172
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2174
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isInActionMode:Z

    return-void
.end method

.method public onActionModeStarted(Ljava/lang/Object;)V
    .locals 1

    .line 2163
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2164
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 2166
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isInActionMode:Z

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2139
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2142
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/GroupCallPip;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2145
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2146
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 2149
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 2150
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2151
    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    :cond_3
    :goto_0
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

    .line 986
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 987
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 989
    instance-of v2, v1, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    if-eqz v2, :cond_0

    .line 990
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;

    invoke-interface {v2}, Lorg/telegram/ui/Components/FloatingDebug/FloatingDebugProvider;->onGetDebugItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 992
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LNavigation/LNavigation;->observeDebugItemsFromView(Ljava/util/List;Landroid/view/View;)V

    :cond_1
    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 2212
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2213
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getCurrentActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->onMenuButtonPressed()V

    .line 2215
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .locals 2

    .line 2132
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2133
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onLowMemory()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 2220
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2222
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2223
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-le p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2226
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->wasPortrait:Z

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isInPreviewMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2227
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->finishPreviewFragment()V

    .line 2229
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->wasPortrait:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 2108
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2110
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2116
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2118
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->processTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onUserLeaveHint()V
    .locals 1

    .line 2124
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2126
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
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    .line 733
    iget-object v2, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 734
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->checkTransitionAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz v0, :cond_0

    iget-boolean v3, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    if-eqz v3, :cond_0

    .line 735
    invoke-interface {v0, v6, v4}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->needPresentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 739
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v7, 0x1

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3

    .line 740
    invoke-virtual {v6, v7}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    .line 743
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 744
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 747
    :cond_4
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    if-nez v0, :cond_7

    .line 748
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInPreviewMode(Z)V

    .line 749
    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_5

    .line 750
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 751
    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 754
    :cond_5
    iget-object v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 755
    :goto_0
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setInMenuMode(Z)V

    .line 756
    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 758
    :cond_7
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-nez v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "view_animations"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    if-nez v0, :cond_8

    iget-boolean v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    if-nez v0, :cond_9

    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    .line 759
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v0, 0x1

    .line 761
    :goto_2
    iget-boolean v3, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    .line 762
    :goto_3
    new-instance v5, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda21;

    invoke-direct {v5, v6, v4, v3}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const-wide/16 v8, 0xc8

    if-eqz v0, :cond_18

    .line 769
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->isFromDelay:Z

    if-nez v0, :cond_12

    .line 770
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    const/16 v10, 0x8

    if-eqz v0, :cond_d

    .line 771
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-eqz v0, :cond_b

    const/high16 v11, 0x41000000    # 8.0f

    .line 774
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v11

    float-to-int v12, v12

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v11

    float-to-int v11, v13

    .line 776
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 777
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v15, 0x3e000000    # 0.125f

    .line 778
    invoke-virtual {v14, v15, v15}, Landroid/graphics/Canvas;->scale(FF)V

    const-string v15, "windowBackgroundWhite"

    .line 779
    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 780
    invoke-virtual {v0, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 781
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0x96

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v13, v0}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 782
    iput-object v13, v6, Lorg/telegram/ui/LNavigation/LNavigation;->blurredBackFragmentForPreview:Landroid/graphics/Bitmap;

    .line 785
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 786
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 788
    :cond_c
    iput-boolean v7, v6, Lorg/telegram/ui/LNavigation/LNavigation;->isFirstHoverAllowed:Z

    .line 791
    :cond_d
    invoke-direct {v6, v2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    .line 792
    iget-boolean v11, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-eqz v11, :cond_11

    .line 793
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 794
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 796
    iget-object v13, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v13, :cond_10

    .line 797
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v11

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v14, v14, v15

    float-to-int v14, v14

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v13, v11, v12}, Landroid/widget/FrameLayout;->measure(II)V

    .line 798
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 799
    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iget-object v14, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v12, v13

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 801
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v11, :cond_e

    .line 802
    iget-object v11, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v12, v10

    int-to-float v10, v12

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_4

    .line 804
    :cond_e
    iget-object v11, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 806
    :goto_4
    iget-object v10, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    const/16 v12, 0x18

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int/2addr v11, v12

    iget-object v12, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 807
    iget-object v10, v6, Lorg/telegram/ui/LNavigation/LNavigation;->previewMenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v11, -0x2

    const/4 v12, -0x2

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_f

    const/4 v13, 0x5

    goto :goto_5

    :cond_f
    const/4 v13, 0x3

    :goto_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x8

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_10
    const/16 v10, 0x34

    .line 809
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v12, v10

    iput v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 812
    :goto_6
    new-instance v10, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda1;

    invoke-direct {v10, v6}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;)V

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-virtual {v6, v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 815
    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->notifyFragmentStackChanged()V

    .line 817
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 819
    iput v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->swipeProgress:F

    .line 820
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    .line 823
    :cond_12
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->delayDone:Z

    if-nez v0, :cond_13

    .line 824
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda19;

    invoke-direct {v0, v6, v4}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V

    iput-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v7

    .line 834
    :cond_13
    invoke-virtual {v2, v7, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    if-eqz v3, :cond_14

    .line 836
    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    .line 839
    :cond_14
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda18;

    invoke-direct {v0, v6, v2, v3, v5}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v7, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 860
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return v7

    .line 864
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateActionBars()V

    .line 865
    new-instance v0, Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v8, 0x447a0000    # 1000.0f

    invoke-direct {v0, v8}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    .line 866
    new-instance v8, Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-direct {v8, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    .line 868
    iget-boolean v1, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-eqz v1, :cond_16

    const v1, 0x44228000    # 650.0f

    goto :goto_7

    :cond_16
    sget v1, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_STIFFNESS:F

    :goto_7
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 869
    iget-boolean v1, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-eqz v1, :cond_17

    const v1, 0x3f19999a    # 0.6f

    goto :goto_8

    :cond_17
    sget v1, Lorg/telegram/ui/LNavigation/LNavigation;->SPRING_DAMPING_RATIO:F

    :goto_8
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    .line 867
    invoke-virtual {v8, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 870
    new-instance v1, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6, v2}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 875
    iget-object v8, v6, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v9, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v9}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 903
    iget-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    goto :goto_9

    .line 904
    :cond_18
    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    if-nez v0, :cond_1a

    .line 905
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->needDelayOpenAnimation()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->delayDone:Z

    if-nez v0, :cond_19

    iget-boolean v0, v4, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->needDelayWithoutAnimation:Z

    if-eqz v0, :cond_19

    .line 906
    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda20;

    invoke-direct {v0, v6, v4}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)V

    iput-object v0, v6, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    invoke-static {v0, v8, v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return v7

    :cond_19
    const/4 v0, -0x1

    .line 915
    invoke-virtual {v6, v2, v0, v7}, Lorg/telegram/ui/LNavigation/LNavigation;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)Z

    .line 916
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_1a
    :goto_9
    return v7
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

.method public synthetic rebuildAllFragmentViews(ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$rebuildAllFragmentViews(Lorg/telegram/ui/ActionBar/INavigationLayout;ZZ)V

    return-void
.end method

.method public rebuildFragments(I)V
    .locals 7

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->currentSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->customAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/LNavigation/LNavigation$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$4;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1241
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1242
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-le p1, v2, :cond_2

    .line 1243
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-eqz p1, :cond_7

    if-eqz v0, :cond_6

    .line 1249
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    if-ne p1, v4, :cond_7

    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    if-ne p1, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_9

    .line 1252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_9

    .line 1253
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1254
    instance-of v5, v4, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    if-eqz v5, :cond_8

    .line 1255
    check-cast v4, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    invoke-static {v4}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1257
    :cond_8
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_9
    if-eqz v0, :cond_b

    .line 1261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 1262
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1263
    instance-of v5, v4, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    if-eqz v5, :cond_a

    .line 1264
    check-cast v4, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    invoke-static {v4}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->access$1900(Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1266
    :cond_a
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    :cond_b
    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_4

    .line 1269
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    xor-int/lit8 v5, v0, 0x1

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_e

    .line 1270
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1271
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->clearViews()V

    .line 1272
    invoke-virtual {v4, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1273
    new-instance v5, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;-><init>(Lorg/telegram/ui/LNavigation/LNavigation;Landroid/content/Context;)V

    .line 1274
    invoke-virtual {v5, v4}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1276
    iget-object v4, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-lt p1, v4, :cond_d

    .line 1277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p0, v5, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1280
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    if-eqz p1, :cond_f

    .line 1281
    invoke-interface {p1, p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;->onRebuildAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V

    .line 1283
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    :cond_10
    return-void
.end method

.method public synthetic rebuildLogout()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$rebuildLogout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method

.method public synthetic removeAllFragments()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;->$default$removeAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

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

    .line 1145
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 1152
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setRemovingFromStack(Z)V

    .line 1153
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v1, 0x0

    .line 1154
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 1155
    iget-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1156
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->notifyFragmentStackChanged()V

    add-int/lit8 p1, v0, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-ne p2, p1, :cond_5

    .line 1159
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1161
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setPaused(Z)V

    .line 1162
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1165
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1167
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1168
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    .line 1171
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1172
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1175
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v2, :cond_8

    .line 1176
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 1177
    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    if-eqz p1, :cond_4

    .line 1179
    invoke-virtual {p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    .line 1181
    :cond_4
    invoke-direct {p0, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    .line 1183
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1184
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    sub-int/2addr v0, v2

    if-ne p2, v0, :cond_8

    .line 1188
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1190
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1191
    invoke-direct {p0, p1}, Lorg/telegram/ui/LNavigation/LNavigation;->resetViewProperties(Landroid/view/View;)V

    .line 1194
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p2, v2, :cond_8

    .line 1195
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getBackgroundFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    .line 1196
    invoke-virtual {p2, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setParentLayout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    if-eqz p1, :cond_7

    .line 1198
    invoke-virtual {p1, p2}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_1

    .line 1200
    :cond_7
    invoke-direct {p0, p2}, Lorg/telegram/ui/LNavigation/LNavigation;->onCreateHolderView(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object p1

    .line 1202
    :goto_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1203
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1208
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->invalidateTranslation()V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 548
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    .line 550
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeInProgress:Z

    .line 552
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->onReleaseTouch()V

    .line 554
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isSwipeDisallowed:Z

    return-void
.end method

.method public resumeDelayedFragmentAnimation()V
    .locals 1

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1404
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1405
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delayedPresentAnimation:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setBackgroundView(Landroid/view/View;)V
    .locals 0

    .line 1416
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->backgroundView:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->delegate:Lorg/telegram/ui/ActionBar/INavigationLayout$INavigationLayoutDelegate;

    return-void
.end method

.method public setDrawerLayoutContainer(Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;)V
    .locals 0

    .line 1551
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    return-void
.end method

.method public setFragmentPanTranslationOffset(I)V
    .locals 1

    .line 1972
    invoke-direct {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getForegroundView()Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1974
    invoke-virtual {v0, p1}, Lorg/telegram/ui/LNavigation/LNavigation$FragmentHolderView;->setFragmentPanTranslationOffset(I)V

    :cond_0
    return-void
.end method

.method public setFragmentStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .line 1218
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    .line 1219
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->unmodifiableFragmentStack:Ljava/util/List;

    return-void
.end method

.method public setFragmentStackChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->onFragmentStackChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setHighlightActionButtons(Z)V
    .locals 0

    .line 1985
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->highlightActionButtons:Z

    return-void
.end method

.method public setInBubbleMode(Z)V
    .locals 0

    .line 1835
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isInBubbleMode:Z

    return-void
.end method

.method public setMusicPlaying(Z)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isMusicPlaying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 97
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->isMusicPlaying:Z

    .line 98
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->updatePinnedPlayerVisible()V

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

    .line 2207
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->pulledDialogs:Ljava/util/List;

    return-void
.end method

.method public setRemoveActionBarExtraHeight(Z)V
    .locals 0

    .line 1556
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->removeActionBarExtraHeight:Z

    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 3

    .line 1565
    iput-object p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayTitle:Ljava/lang/String;

    .line 1566
    iput p2, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayTitleId:I

    .line 1567
    iput-object p3, p0, Lorg/telegram/ui/LNavigation/LNavigation;->titleOverlayAction:Ljava/lang/Runnable;

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1569
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1570
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUseAlphaAnimations(Z)V
    .locals 0

    .line 1411
    iput-boolean p1, p0, Lorg/telegram/ui/LNavigation/LNavigation;->useAlphaAnimations:Z

    return-void
.end method

.method public showLastFragment()V
    .locals 1

    const/4 v0, 0x1

    .line 1224
    invoke-virtual {p0, v0}, Lorg/telegram/ui/LNavigation/LNavigation;->rebuildFragments(I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 2179
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2186
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public updatePinnedPlayerColors()V
    .locals 3

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

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

    .line 123
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/ui/view/PinnedPlayerView;->updateColors()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updatePinnedPlayerVisible()V
    .locals 5

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/LNavigation/LNavigation;->fragmentStack:Ljava/util/List;

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

    .line 103
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->isAllowPinnedPlayer()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    invoke-virtual {p0}, Lorg/telegram/ui/LNavigation/LNavigation;->isPinnedPlayerVisible()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 108
    invoke-static {}, Lorg/fork/ui/view/PinnedPlayerView;->getPlayerHeight()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 109
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/fork/ui/view/PinnedPlayerView;->setVisibility(I)V

    .line 110
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/fork/ui/view/PinnedPlayerView;->updateTitle(Z)V

    goto :goto_1

    .line 112
    :cond_2
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 113
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getPinnedPlayerView()Lorg/fork/ui/view/PinnedPlayerView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/fork/ui/view/PinnedPlayerView;->setVisibility(I)V

    .line 115
    :goto_1
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 117
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    return-void
.end method
