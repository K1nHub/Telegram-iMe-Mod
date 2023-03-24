.class final Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FloatingToolbarPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;,
        Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;,
        Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    }
.end annotation


# instance fields
.field private final mArrow:Landroid/graphics/drawable/Drawable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mIconTextSpacing:I

.field private mIsOverflowOpen:Z

.field private final mLineHeight:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mMainPanel:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private final mMarginHorizontal:I

.field private final mMarginVertical:I

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowUpwards:Z

.field private final mOverflow:Landroid/graphics/drawable/Drawable;

.field private final mOverflowButton:Landroid/widget/ImageButton;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

.field private mOverflowPanelSize:Landroid/util/Size;

.field private final mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

.field private final mParent:Landroid/view/View;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private final mTmpCoords:[I

.field private final mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTransitionDurationScale:I

.field private final mViewPortOnScreen:Landroid/graphics/Rect;

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;


# direct methods
.method public static synthetic $r8$lambda$58oYMSzWAPWvN7I3_0mrMtxcDs8(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$createOverflowPanel$1(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lH9y1KamLom3o5IIYf9nieGC2Eo(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$createOverflowButton$0(Landroid/widget/ImageButton;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 317
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 273
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 275
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    .line 276
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 286
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 302
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 318
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 319
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$600(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 321
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$700(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x10

    .line 322
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    const/16 v1, 0x8

    .line 323
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    const/16 v2, 0x30

    .line 324
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    .line 325
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    .line 327
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$1;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000d

    .line 328
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000e

    .line 329
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v2, 0x10c000f

    .line 330
    invoke-static {p2, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 332
    sget v2, Lorg/telegram/messenger/R$drawable;->ft_avd_tooverflow:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 333
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 334
    sget v2, Lorg/telegram/messenger/R$drawable;->ft_avd_toarrow:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 335
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 336
    sget v2, Lorg/telegram/messenger/R$drawable;->ft_avd_toarrow_animation:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 337
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 338
    sget v2, Lorg/telegram/messenger/R$drawable;->ft_avd_tooverflow_animation:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 339
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 341
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    .line 342
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 343
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 344
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {v2, p0, p2, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    .line 345
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    .line 347
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    .line 348
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 349
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 350
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 351
    invoke-virtual {v1, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 352
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$900(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    .line 353
    new-instance p2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    const/16 v0, 0x96

    invoke-static {p3, v0, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    .line 362
    new-instance p2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    const/4 p1, 0x0

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;I)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;I)V
    .locals 0

    .line 240
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method private calculateOverflowHeight(I)I
    .locals 2

    const/4 v0, 0x2

    .line 943
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 946
    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 948
    :goto_0
    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    mul-int/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    return p1
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 523
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method private clearPanels()V
    .locals 2

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 915
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 918
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 919
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 920
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private closeOverflow()V
    .locals 8

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 594
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 595
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v5, v1

    .line 596
    new-instance v7, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$8;

    move-object v1, v7

    move-object v2, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 612
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 613
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 614
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 615
    new-instance v4, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$9;

    invoke-direct {v4, p0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIF)V

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getX()F

    move-result v1

    .line 627
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v0

    sub-float v2, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    add-float/2addr v2, v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 628
    :goto_0
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$10;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;FFI)V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0xfa

    .line 638
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 640
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 642
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 643
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 645
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 648
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 650
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 651
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 652
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 656
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    .line 974
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1053
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    return-object v0
.end method

.method private createOverflowButton()Landroid/widget/ImageButton;
    .locals 5

    .line 991
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 992
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/16 v2, 0x38

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x30

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x10

    .line 993
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0xc

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/ImageButton;->setPaddingRelative(IIII)V

    .line 994
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 995
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 997
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2300(Lorg/telegram/ui/ActionBar/FloatingToolbar;)I

    move-result v1

    const-string v2, "listSelectorSDK21"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 998
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    const-string v4, "dialogTextBlack"

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar;Ljava/lang/String;)I

    move-result v1

    .line 999
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2300(Lorg/telegram/ui/ActionBar/FloatingToolbar;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const v1, -0x50506

    const v2, 0x40ffffff    # 7.9999995f

    .line 1002
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1004
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    const-string v4, "windowBackgroundWhiteBlackText"

    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar;Ljava/lang/String;)I

    move-result v1

    .line 1005
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1008
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1009
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    .line 1010
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    .line 1011
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createOverflowPanel()Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 4

    .line 1026
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    .line 1027
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 1028
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 1029
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1030
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$12;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    .line 1036
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1037
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private getAdjustedDuration(I)I
    .locals 2

    .line 957
    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x32

    const/4 v0, 0x0

    .line 958
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x32

    :cond_1
    return p1
.end method

.method private getAdjustedToolbarWidth(I)I
    .locals 2

    .line 781
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 782
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gtz p1, :cond_0

    const/16 p1, 0x190

    .line 784
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 786
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getOverflowWidth()I
    .locals 5

    .line 934
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 936
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 937
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private hasOverflow()Z
    .locals 1

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInRTLMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isOverflowAnimating()Z
    .locals 4

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1048
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private synthetic lambda$createOverflowButton$0(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    .line 1012
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz p2, :cond_0

    .line 1013
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1015
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1018
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 1019
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$createOverflowPanel$1(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1038
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 1039
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz p2, :cond_0

    .line 1040
    invoke-interface {p2, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 878
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 879
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 881
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 884
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz p1, :cond_1

    .line 885
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setY(F)V

    goto :goto_1

    .line 887
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setY(F)V

    .line 889
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getOverflowWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x4

    .line 890
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v0

    .line 891
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    return-void
.end method

.method private maybeComputeTransitionDurationScale()V
    .locals 4

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 968
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 969
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    :cond_0
    return-void
.end method

.method private measure(Landroid/view/View;)Landroid/util/Size;
    .locals 2

    const/4 v0, 0x0

    .line 1076
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1077
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private openOverflow()V
    .locals 12

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 530
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 531
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 532
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 535
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v5, v1

    .line 536
    new-instance v11, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$5;

    move-object v1, v11

    move-object v2, p0

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 552
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;

    invoke-direct {v1, p0, v7, v9, v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIF)V

    .line 564
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getX()F

    move-result v2

    .line 565
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    int-to-float v0, v0

    if-eqz v3, :cond_0

    add-float/2addr v0, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_0
    sub-float v0, v2, v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 566
    :goto_0
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v3, p0, v2, v0, v8}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;FFI)V

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0xfa

    .line 576
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 577
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 578
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 580
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 586
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    return-void
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    .line 925
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setY(F)V

    :cond_0
    return-void
.end method

.method private preparePopupContent()V
    .locals 2

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 897
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 901
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 904
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    .line 905
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 906
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 908
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 12

    .line 448
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 449
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 451
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 452
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 453
    iget v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/2addr v4, v2

    .line 454
    iget v5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v5, v4

    .line 455
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_3

    if-lt v1, v5, :cond_0

    .line 457
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    goto/16 :goto_0

    :cond_0
    if-lt v3, v5, :cond_1

    .line 459
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 460
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    if-lt v3, v1, :cond_2

    .line 461
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr p1, v1

    goto/16 :goto_0

    .line 463
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 466
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 467
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v5

    .line 468
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v4

    .line 470
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 471
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 472
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_4
    if-lt v1, v5, :cond_5

    if-lt v9, v2, :cond_5

    sub-int/2addr v9, v4

    .line 474
    invoke-direct {p0, v9}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 475
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    .line 476
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_5
    if-lt v3, v2, :cond_6

    sub-int/2addr v3, v4

    .line 478
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 479
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 480
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_6
    if-lt v3, v5, :cond_7

    .line 481
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v2, :cond_7

    sub-int/2addr v10, v4

    .line 482
    invoke-direct {p0, v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 483
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v5

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 484
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 486
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 487
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 488
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    .line 492
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 493
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v2, v1, v8

    .line 494
    aget v1, v1, v7

    .line 495
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 496
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v4, v3, v8

    .line 497
    aget v3, v3, v7

    sub-int/2addr v2, v4

    sub-int/2addr v1, v3

    .line 500
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    sub-int/2addr v0, v2

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p1, v1

    invoke-static {v8, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v3, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private refreshViewPort()V
    .locals 2

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 0

    .line 952
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 953
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 6

    .line 796
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 798
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    .line 800
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 801
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 803
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method private setHeight(Landroid/view/View;I)V
    .locals 1

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1101
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .locals 7

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    .line 664
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    const-string v1, "AccDescrMoreOptions"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 666
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 667
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 668
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 669
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAlpha(F)V

    .line 670
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 671
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 674
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 676
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 677
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 678
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 681
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 682
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setX(F)V

    .line 683
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    .line 685
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 687
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setY(F)V

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setY(F)V

    goto/16 :goto_2

    .line 691
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 692
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setY(F)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setY(F)V

    goto/16 :goto_2

    .line 697
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 698
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 699
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 700
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 701
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAlpha(F)V

    .line 702
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 703
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 705
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 706
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 707
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 708
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 709
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setX(F)V

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    goto :goto_1

    .line 712
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 713
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 714
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setX(F)V

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setX(F)V

    .line 717
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_4

    .line 718
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 719
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 720
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setY(F)V

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setY(F)V

    goto :goto_2

    .line 723
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setY(F)V

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setY(F)V

    goto :goto_2

    .line 729
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 732
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    :goto_2
    return-void
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 2

    .line 1081
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1082
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1083
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1084
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1085
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1086
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1087
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 1

    .line 1091
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 0

    return-void
.end method

.method private setWidth(Landroid/view/View;I)V
    .locals 1

    .line 1095
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1096
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 2

    .line 738
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    div-int/2addr p1, v0

    .line 740
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result p1

    .line 741
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 742
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 744
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 745
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 747
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 749
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 750
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setY(F)V

    goto :goto_0

    .line 753
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 755
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    :cond_3
    return-void
.end method

.method private updatePopupSize()V
    .locals 5

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 764
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 766
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    .line 767
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 768
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 770
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 771
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 772
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 410
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    const/4 v0, 0x1

    .line 414
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    .line 417
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 421
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 425
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    .line 426
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 430
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 822
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 832
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 833
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    const/4 v2, 0x1

    move/from16 v11, p2

    move v10, v2

    .line 835
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 836
    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/MenuItem;

    .line 837
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    move v13, v2

    goto :goto_1

    :cond_0
    move v13, v3

    .line 841
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v7, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    move-object v6, v12

    move v8, v10

    move v9, v13

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2000(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;

    move-result-object v4

    .line 842
    instance-of v5, v4, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 843
    move-object v5, v4

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-eqz v10, :cond_2

    move-wide v9, v5

    goto :goto_2

    :cond_2
    move-wide v9, v7

    .line 845
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getPaddingStart()I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v9, v14

    double-to-int v9, v9

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    if-eqz v13, :cond_3

    goto :goto_3

    :cond_3
    move-wide v5, v7

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v9, v10, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 846
    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    .line 847
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    move/from16 v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 848
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    sub-int v7, v11, v7

    if-gt v5, v7, :cond_4

    move v7, v2

    goto :goto_4

    :cond_4
    move v7, v3

    :goto_4
    if-eqz v13, :cond_5

    if-gt v5, v11, :cond_5

    move v8, v2

    goto :goto_5

    :cond_5
    move v8, v3

    :goto_5
    if-nez v7, :cond_6

    if-eqz v8, :cond_7

    .line 851
    :cond_6
    invoke-direct {v0, v4, v12}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 853
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 854
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 855
    iput v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    invoke-virtual {v4, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v11, v5

    .line 858
    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move v10, v3

    goto/16 :goto_0

    .line 864
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 865
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 867
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object v1
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    .line 384
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 385
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    .line 387
    invoke-direct {p0, p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 388
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 391
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 4

    .line 395
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 398
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 399
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 400
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 401
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 402
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 403
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 405
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 406
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 4

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 441
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 442
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 443
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
