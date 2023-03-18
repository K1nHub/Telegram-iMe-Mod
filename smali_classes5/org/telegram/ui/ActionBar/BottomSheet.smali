.class public Lorg/telegram/ui/ActionBar/BottomSheet;
.super Landroid/app/Dialog;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/BottomSheet$Builder;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;,
        Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;,
        Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    }
.end annotation


# static fields
.field private static final AVOID_SYSTEM_CUTOUT_FULLSCREEN:Z = false


# instance fields
.field private allowCustomAnimation:Z

.field private allowDrawContent:Z

.field protected allowNestedScroll:Z

.field private applyBottomPadding:Z

.field private applyTopPadding:Z

.field protected backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field protected backgroundPaddingLeft:I

.field protected backgroundPaddingTop:I

.field protected behindKeyboardColor:I

.field protected behindKeyboardColorKey:Ljava/lang/String;

.field private bigTitle:Z

.field private bottomInset:I

.field protected calcMandatoryInsets:Z

.field private canDismissWithSwipe:Z

.field protected container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

.field protected containerView:Landroid/view/ViewGroup;

.field protected currentAccount:I

.field private currentPanTranslationY:F

.field protected currentSheetAnimation:Landroid/animation/AnimatorSet;

.field protected currentSheetAnimationType:I

.field private customView:Landroid/view/View;

.field protected customViewGravity:I

.field protected delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

.field private description:Ljava/lang/CharSequence;

.field private descriptionView:Landroid/widget/TextView;

.field protected dimBehind:Z

.field protected dimBehindAlpha:I

.field private disableScroll:Z

.field private dismissRunnable:Ljava/lang/Runnable;

.field private dismissed:Z

.field private dividers:[Z

.field public drawDoubleNavigationBar:Z

.field public drawNavigationBar:Z

.field private focusable:Z

.field private fullHeight:Z

.field protected fullWidth:Z

.field private hideSystemVerticalInsetsProgress:F

.field protected isFullscreen:Z

.field protected isPortrait:Z

.field private isTitleClickable:Z

.field private itemIcons:[I

.field private itemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;",
            ">;"
        }
    .end annotation
.end field

.field private items:[Ljava/lang/CharSequence;

.field private keyboardContentAnimator:Landroid/animation/ValueAnimator;

.field protected keyboardVisible:Z

.field private lastInsets:Landroid/view/WindowInsets;

.field private layoutCount:I

.field private leftInset:I

.field private multipleLinesTitle:Z

.field protected navBarColor:I

.field protected navBarColorKey:Ljava/lang/String;

.field protected navigationBarAlpha:F

.field protected navigationBarAnimation:Landroid/animation/ValueAnimator;

.field protected nestedScrollChild:Landroid/view/View;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onHideListener:Landroid/content/DialogInterface$OnDismissListener;

.field protected openInterpolator:Landroid/view/animation/Interpolator;

.field private openNoDelay:Z

.field private overlayDrawNavBarColor:I

.field public pauseAllHeavyOperations:Z

.field protected resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightInset:I

.field public scrollNavBar:Z

.field protected shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private showWithoutAnimation:Z

.field public smoothKeyboardAnimationEnabled:Z

.field protected startAnimationRunnable:Ljava/lang/Runnable;

.field private statusBarHeight:I

.field private tag:I

.field private title:Ljava/lang/CharSequence;

.field private titleView:Landroid/widget/TextView;

.field private touchSlop:I

.field public useBackgroundTopPadding:Z

.field private useFastDismiss:Z

.field protected useHardwareLayer:Z

.field protected useLightNavBar:Z

.field protected useLightStatusBar:Z

.field protected useSmoothKeyboard:Z

.field protected waitingKeyboard:Z


# direct methods
.method public static synthetic $r8$lambda$NYLV_m6OdE1InliYlB1njd6UUSk(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$startOpenAnimation$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMnz97NiLKctR4CCTR4RR_g0-iY(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$onCreate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQOT4chCWu8guSxSTxJxHMOtgaY(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$setHideSystemVerticalInsets$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jXi_Inmnp3x4SU1lNfYZw4lpBiM(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$new$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rZWalSDiU0aevHigl9d3zAbAPSE(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$dismiss$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tGqkMKTJXQ8uhnr5u1IbLHy8vhw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->lambda$onCreate$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 969
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 973
    sget v0, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 102
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 122
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    .line 138
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$1;

    const/high16 v2, -0x1000000

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 146
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    const-string v1, "dialogBackground"

    .line 149
    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->behindKeyboardColorKey:Ljava/lang/String;

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    .line 154
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    .line 157
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    .line 163
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    .line 169
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    const/16 v2, 0x33

    .line 170
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    .line 172
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    .line 178
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    .line 179
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    .line 183
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 190
    iput v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    const-string v3, "windowBackgroundGray"

    .line 196
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 202
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->pauseAllHeavyOperations:Z

    .line 213
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    .line 214
    iput v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    .line 974
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 976
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/16 v3, 0x1e

    if-lt p3, v3, :cond_0

    .line 977
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, -0x7fffff00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    if-lt p3, v2, :cond_1

    .line 979
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, -0x7ffeff00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 981
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 982
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    .line 984
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 985
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v5, Lorg/telegram/messenger/R$drawable;->sheet_shadow_round:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 986
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 987
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 988
    iget p1, v4, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    .line 989
    iget p1, v4, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    .line 991
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$2;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    .line 1016
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1017
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-lt p3, v2, :cond_3

    .line 1019
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 1020
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance p2, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    if-lt p3, v3, :cond_2

    .line 1034
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 p2, 0x700

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 1036
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1040
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->rightInset:I

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->rightInset:I

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getAdditionalMandatoryOffsets()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return p0
.end method

.method static synthetic access$1210(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 2

    .line 68
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardContentAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardContentAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/BottomSheet;)F
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentPanTranslationY:F

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/View;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V

    return-void
.end method

.method static synthetic access$202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useFastDismiss:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->description:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ActionBar/BottomSheet;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2702(Lorg/telegram/ui/ActionBar/BottomSheet;[Z)[Z
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dividers:[Z

    return-object p1
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ActionBar/BottomSheet;[I)[I
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    return-object p1
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3002(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    return p1
.end method

.method static synthetic access$3102(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I

    return p1
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    return p1
.end method

.method static synthetic access$3302(Lorg/telegram/ui/ActionBar/BottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ActionBar/BottomSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/BottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->disableScroll:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->touchSlop:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/BottomSheet;)F
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return p1
.end method

.method static synthetic access$712(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 1

    .line 68
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return v0
.end method

.method static synthetic access$720(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 1

    .line 68
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/BottomSheet;)Landroid/view/WindowInsets;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/BottomSheet;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->leftInset:I

    return p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ActionBar/BottomSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->leftInset:I

    return p1
.end method

.method private getAdditionalMandatoryOffsets()I
    .locals 3

    .line 775
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 778
    :cond_1
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 779
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/graphics/Insets;->left:I

    if-nez v2, :cond_2

    iget v2, v0, Landroid/graphics/Insets;->right:I

    if-eqz v2, :cond_3

    :cond_2
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    :cond_3
    :goto_1
    return v1
.end method

.method private synthetic lambda$dismiss$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1635
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 1636
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1637
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1021
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    sget-boolean v1, Lorg/telegram/messenger/AndroidUtilities;->isInMultiwindow:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    if-eq v1, v0, :cond_1

    .line 1023
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    .line 1025
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1027
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 1028
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 1030
    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$onCreate$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$3(Landroid/view/View;)V
    .locals 0

    .line 1197
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    return-void
.end method

.method private synthetic lambda$setHideSystemVerticalInsets$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 766
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$startOpenAnimation$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1431
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    .line 1432
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1433
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private startOpenAnimation()V
    .locals 9

    .line 1415
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1420
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    const/4 v3, 0x2

    if-lt v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1424
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$2000(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    iget-boolean v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v0, 0x1

    .line 1425
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1426
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 1427
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    new-array v2, v3, [F

    .line 1429
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    aput v4, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 1430
    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1436
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    .line 1437
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v0, [F

    const/4 v8, 0x0

    aput v8, v7, v1

    .line 1438
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v6, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v7, v0, [I

    .line 1439
    iget-boolean v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    aput v8, v7, v1

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    aput-object v5, v4, v3

    .line 1437
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1442
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1443
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x14

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1444
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1445
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1477
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->pauseAllHeavyOperations:Z

    if-eqz v2, :cond_6

    .line 1478
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1480
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .line 1336
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cancelSheetAnimation()V
    .locals 1

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 1401
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    const/4 v0, 0x0

    .line 1403
    iput v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return-void
.end method

.method public dismiss()V
    .locals 12

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;->canDismiss()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1617
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1620
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v1, :cond_2

    .line 1622
    invoke-interface {v1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1624
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 1626
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissAnimationStart()V

    .line 1627
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowCustomAnimation:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCustomCloseAnimation()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-wide v4, v2

    goto/16 :goto_3

    :cond_4
    :goto_0
    const/4 v1, 0x2

    .line 1628
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1629
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1630
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    .line 1631
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    new-array v4, v1, [F

    .line 1633
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAlpha:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    .line 1634
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1640
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    .line 1641
    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v7, :cond_6

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    sget-object v8, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v0, [F

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v10

    iget-object v11, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$2000(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I

    move-result v11

    add-int/2addr v10, v11

    const/16 v11, 0xa

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    add-int/2addr v10, v11

    iget-boolean v11, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-eqz v11, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v11

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    :goto_1
    add-int/2addr v10, v11

    int-to-float v10, v10

    aput v10, v9, v6

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    :goto_2
    aput-object v7, v5, v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v8, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v9, v0, [I

    aput v6, v9, v6

    .line 1642
    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v0

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navigationBarAnimation:Landroid/animation/ValueAnimator;

    aput-object v7, v5, v1

    .line 1640
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1651
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1653
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$8;

    invoke-direct {v7, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$8;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1679
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v7, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v8, 0x200

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v6

    invoke-virtual {v1, v7, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1683
    :goto_3
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1684
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    cmp-long v1, v4, v2

    if-lez v1, :cond_8

    long-to-float v1, v4

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    float-to-long v1, v1

    .line 1686
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin;->hide(J)V

    goto :goto_4

    .line 1688
    :cond_8
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->hide()V

    :cond_9
    :goto_4
    return-void
.end method

.method public dismissInternal()V
    .locals 2

    .line 1699
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1702
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 9

    .line 1547
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1550
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1551
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    const/4 v1, 0x2

    .line 1552
    iput v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    .line 1553
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    .line 1554
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v0, [F

    .line 1555
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerViewHeight()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->access$2000(Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;)I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0xa

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    iget-boolean v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v8

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    sget-object v4, Lorg/telegram/ui/Components/AnimationProperties;->COLOR_DRAWABLE_ALPHA:Landroid/util/Property;

    new-array v5, v0, [I

    aput v8, v5, v8

    .line 1556
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v0

    .line 1554
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1558
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1559
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1560
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$7;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;I)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1591
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1592
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1597
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1600
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fixNavigationBar()V
    .locals 1

    const-string v0, "dialogBackground"

    .line 1048
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    return-void
.end method

.method public fixNavigationBar(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1052
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    .line 1053
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawDoubleNavigationBar:Z

    .line 1054
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    const/4 v0, 0x0

    .line 1055
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColorKey:Ljava/lang/String;

    .line 1056
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->navBarColor:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOverlayNavBarColor(I)V

    return-void
.end method

.method public getBackDrawable()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 1320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method public getBackgroundPaddingLeft()I
    .locals 1

    .line 1954
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return v0
.end method

.method public getBackgroundPaddingTop()I
    .locals 1

    .line 1324
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return v0
.end method

.method public getBottomInset()I
    .locals 3

    .line 1897
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bottomInset:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    return v0
.end method

.method protected getBottomSheetWidth(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p2

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p3

    const/16 p3, 0x1e0

    .line 755
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p2, p1

    :goto_0
    return p2
.end method

.method public getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    .locals 1

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 1

    .line 1937
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContainerViewHeight()I
    .locals 1

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1609
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 1941
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItemViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;",
            ">;"
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeftInset()I
    .locals 3

    .line 1867
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1872
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public getRightInset()I
    .locals 3

    .line 1880
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1885
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSheetAnimationType()I
    .locals 1

    .line 1694
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentSheetAnimationType:I

    return v0
.end method

.method public getSheetContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1493
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 3

    .line 1893
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->statusBarHeight:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 1497
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->tag:I

    return v0
.end method

.method protected getTargetOpenTranslationY()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1946
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public isDismissed()Z
    .locals 1

    .line 1543
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .line 1249
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    return v0
.end method

.method protected mainContainerDispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1061
    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 1063
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1064
    sget v2, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1065
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1067
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v2, v6, :cond_0

    const-string v2, "actionBarDefault"

    .line 1068
    invoke-static {v2, v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1070
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x2000

    .line 1072
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1075
    :cond_0
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightNavBar:Z

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v2, v7, :cond_1

    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 1079
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v7, 0x8

    if-nez v2, :cond_4

    .line 1080
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$3;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v0, v8}, Lorg/telegram/ui/ActionBar/BottomSheet$3;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 1092
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1093
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    if-eqz v9, :cond_2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    :goto_0
    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v9, v10

    sub-int/2addr v9, v5

    iget v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget-boolean v11, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    if-eqz v11, :cond_3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1095
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1096
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v9, 0x50

    const/4 v10, -0x2

    invoke-static {v4, v10, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    const/16 v8, 0x30

    const/16 v9, 0x15

    const/16 v11, 0x10

    if-eqz v2, :cond_a

    .line 1100
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$4;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    .line 1121
    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    if-eqz v2, :cond_6

    .line 1123
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const-string v12, "dialogTextBlack"

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1124
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v2, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1125
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1126
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v13, :cond_5

    const/16 v13, 0xe

    goto :goto_2

    :cond_5
    const/4 v13, 0x6

    :goto_2
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_4

    .line 1128
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const-string v12, "dialogTextGray2"

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1129
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v2, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1130
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v13, :cond_7

    const/16 v13, 0x8

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1132
    :goto_4
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v2, :cond_8

    .line 1133
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1134
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    const/4 v12, 0x5

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1135
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_5

    .line 1137
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 1138
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1139
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1141
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1142
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->multipleLinesTitle:Z

    if-eqz v13, :cond_9

    const/4 v13, -0x2

    goto :goto_6

    :cond_9
    const/16 v13, 0x30

    :goto_6
    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isTitleClickable:Z

    if-nez v2, :cond_b

    .line 1145
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    sget-object v12, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda5;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 1149
    :cond_b
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->description:Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    .line 1150
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v2, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    const/4 v12, 0x3

    .line 1151
    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1152
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    const-string v12, "dialogTextGray3"

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v2, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1155
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    sget-object v12, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1156
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1157
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    sget-object v12, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    const/16 v13, 0x2a

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    sub-int/2addr v12, v13

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 1159
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const/16 v13, 0x2c

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1160
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    invoke-static {v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v2, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->px(F)I

    move-result v2

    add-int/2addr v2, v7

    add-int/2addr v8, v2

    .line 1164
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1165
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1166
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1167
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1169
    :cond_d
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->useBackgroundTopPadding:Z

    if-nez v2, :cond_e

    .line 1170
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1171
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1172
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1173
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1174
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    const/4 v12, -0x1

    const/4 v13, -0x2

    iget v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1175
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    neg-int v3, v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 1177
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    const/4 v12, -0x1

    const/4 v13, -0x2

    iget v14, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->customViewGravity:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    .line 1180
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    .line 1183
    :goto_8
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    array-length v10, v7

    if-ge v2, v10, :cond_13

    .line 1184
    aget-object v7, v7, v2

    if-nez v7, :cond_10

    goto :goto_a

    .line 1187
    :cond_10
    new-instance v7, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v7, v10, v6, v12}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1189
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->dividers:[Z

    if-eqz v10, :cond_11

    .line 1190
    aget-boolean v10, v10, v2

    invoke-virtual {v7, v10}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setNeedDivider(Z)V

    .line 1193
    :cond_11
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    aget-object v10, v10, v2

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    if-eqz v12, :cond_12

    aget v12, v12, v2

    goto :goto_9

    :cond_12
    const/4 v12, 0x0

    :goto_9
    iget-boolean v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    invoke-virtual {v7, v10, v12, v3, v13}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    .line 1194
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v12, -0x1

    const/16 v13, 0x30

    const/16 v14, 0x33

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v8

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x30

    .line 1196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1197
    new-instance v10, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v10, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1198
    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1203
    :cond_13
    :goto_b
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1204
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x33

    .line 1205
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 1206
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1207
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1208
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v6, :cond_14

    .line 1209
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    goto :goto_c

    :cond_14
    const/high16 v6, 0x20000

    or-int/2addr v3, v6

    .line 1211
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1213
    :goto_c
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->isFullscreen:Z

    if-eqz v3, :cond_16

    .line 1214
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v9, :cond_15

    .line 1215
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x7ffeff00

    or-int/2addr v3, v6

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1219
    :cond_15
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1220
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    const/16 v6, 0x504

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 1222
    :cond_16
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1223
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_17

    .line 1224
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 1226
    :cond_17
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onCustomCloseAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismissAnimationStart()V
    .locals 0

    return-void
.end method

.method protected onDismissWithTouchOutside()V
    .locals 0

    .line 1383
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected onScrollUp(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onScrollUpBegin(F)V
    .locals 0

    return-void
.end method

.method protected onScrollUpEnd(F)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 1231
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 1328
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    if-eq v0, p1, :cond_1

    .line 1329
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowDrawContent:Z

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setAllowNestedScroll(Z)V
    .locals 1

    .line 962
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->allowNestedScroll:Z

    if-nez p1, :cond_0

    .line 964
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setApplyBottomPadding(Z)V
    .locals 0

    .line 1371
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyBottomPadding:Z

    return-void
.end method

.method public setApplyTopPadding(Z)V
    .locals 0

    .line 1367
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->applyTopPadding:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCalcMandatoryInsets(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->calcMandatoryInsets:Z

    .line 790
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->drawNavigationBar:Z

    return-void
.end method

.method public setCanDismissWithSwipe(Z)V
    .locals 0

    .line 1340
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->canDismissWithSwipe:Z

    return-void
.end method

.method public setCurrentPanTranslationY(F)V
    .locals 0

    .line 1913
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentPanTranslationY:F

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->customView:Landroid/view/View;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V
    .locals 0

    .line 1485
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->delegate:Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->description:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDimBehind(Z)V
    .locals 0

    .line 1501
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    return-void
.end method

.method public setDimBehindAlpha(I)V
    .locals 0

    .line 1505
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    return-void
.end method

.method public setDisableScroll(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->disableScroll:Z

    return-void
.end method

.method public setFocusable(Z)V
    .locals 3

    .line 1253
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1256
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    .line 1257
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1258
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1259
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    .line 1260
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1261
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    .line 1263
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1264
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1266
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setHideSystemVerticalInsets(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 763
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    const/4 v2, 0x0

    aput v1, v0, v2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 764
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 765
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 770
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public setItemColor(III)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1520
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 1521
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->access$2100(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1522
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->access$2200(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemText(ILjava/lang/CharSequence;)V
    .locals 1

    if-ltz p1, :cond_1

    .line 1509
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 1513
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->access$2100(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->items:[Ljava/lang/CharSequence;

    .line 1531
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->itemIcons:[I

    .line 1532
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnHideListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1407
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->onHideListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOpenNoDelay(Z)V
    .locals 0

    .line 1950
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openNoDelay:Z

    return-void
.end method

.method public setOverlayNavBarColor(I)V
    .locals 5

    .line 1920
    iput p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    .line 1921
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    .line 1922
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1932
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1933
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->overlayDrawNavBarColor:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    return-void
.end method

.method public setShowWithoutAnimation(Z)V
    .locals 0

    .line 1270
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1358
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->title:Ljava/lang/CharSequence;

    .line 1363
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->bigTitle:Z

    return-void
.end method

.method public setTitleClickable(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->isTitleClickable:Z

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->titleView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1539
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setUseLightStatusBar(Z)V
    .locals 2

    .line 1235
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    .line 1236
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "actionBarDefault"

    .line 1237
    invoke-static {v1, p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;[ZZ)I

    move-result p1

    .line 1238
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    .line 1239
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->useLightStatusBar:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    or-int/lit16 p1, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v0, -0x2001

    .line 1244
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method protected shouldOverlayCameraViewOverNavBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 6

    .line 1279
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1280
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->focusable:Z

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissed:Z

    .line 1284
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->cancelSheetAnimation()V

    .line 1286
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return-void

    .line 1290
    :cond_1
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 1291
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->showWithoutAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1292
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehind:Z

    if-eqz v3, :cond_2

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->dimBehindAlpha:I

    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void

    .line 1296
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1297
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v1, v3, :cond_8

    .line 1298
    iput v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->layoutCount:I

    .line 1299
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/16 v4, 0x15

    if-lt v1, v4, :cond_4

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->hideSystemVerticalInsetsProgress:F

    sub-float/2addr v2, v4

    mul-float v2, v2, v1

    :cond_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->scrollNavBar:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getBottomInset()I

    move-result v0

    :cond_5
    int-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1300
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->openNoDelay:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x96

    .line 1301
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    if-eqz v2, :cond_7

    const-wide/16 v0, 0x1f4

    .line 1304
    :cond_7
    new-instance v2, Lorg/telegram/ui/ActionBar/BottomSheet$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$5;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 1315
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->startOpenAnimation()V

    :goto_1
    return-void
.end method
