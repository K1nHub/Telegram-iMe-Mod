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

.field private final mOverflowButton:Landroid/widget/FrameLayout;

.field private final mOverflowButtonIcon:Landroid/widget/ImageView;

.field private final mOverflowButtonShadow:Landroid/view/View;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowButtonText:Landroid/widget/TextView;

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

.field private shiftDp:I

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;


# direct methods
.method public static synthetic $r8$lambda$6KO-jZ_C7cpNJep69gOrZZ2VudI(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GE8HcTPGCgBsSFtdIXxrcJuEvqQ(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$createOverflowPanel$4(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KufEEtP5OYWU2cEZRkZdPL1q_Eo(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$onBackPressed$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PL7rVvOgaM2SMwCMvWhSDPXYBaw(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$layoutOverflowPanelItems$3(Landroid/view/MenuItem;Landroid/view/MenuItem;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Tv_Ox-NLEO8QiRsGO8U8ttxsi1o(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->lambda$onBackPressed$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/View;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 346
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    .line 302
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 304
    iput-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    .line 305
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    .line 315
    new-instance v4, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    const/4 v4, 0x1

    .line 323
    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 331
    new-instance v5, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v5, -0x4

    .line 1107
    iput v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->shiftDp:I

    move-object/from16 v5, p3

    .line 347
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    .line 348
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    .line 349
    invoke-static/range {p1 .. p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$600(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    .line 350
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$700(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v6

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v6, 0x10

    .line 351
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    const/16 v7, 0x8

    .line 352
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    iput v8, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    const/16 v8, 0x30

    .line 353
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    .line 354
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    .line 356
    new-instance v9, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v10, 0x0

    invoke-direct {v9, v0, v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$1;)V

    iput-object v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    const v9, 0x10c000d

    .line 357
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v9, 0x10c000e

    .line 358
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v9, 0x10c000f

    .line 359
    invoke-static {v2, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 361
    sget v9, Lorg/telegram/messenger/R$drawable;->ft_avd_tooverflow:I

    invoke-virtual {v2, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-virtual {v9, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 363
    sget v10, Lorg/telegram/messenger/R$drawable;->ft_avd_toarrow:I

    invoke-virtual {v2, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 365
    sget v11, Lorg/telegram/messenger/R$drawable;->ft_avd_toarrow_animation:I

    invoke-virtual {v2, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v11, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 366
    invoke-virtual {v11, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 367
    sget v12, Lorg/telegram/messenger/R$drawable;->ft_avd_tooverflow_animation:I

    invoke-virtual {v2, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v12, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 368
    invoke-virtual {v12, v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    .line 370
    new-instance v13, Landroid/widget/FrameLayout;

    invoke-direct {v13, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v13, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    .line 371
    new-instance v14, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v14, v0, v2, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    iput-object v14, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    .line 380
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    const/16 v16, 0x38

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-direct {v15, v3, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v8, 0xc

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v14, v3, v15, v6, v8}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 382
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v14, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 383
    invoke-virtual {v14, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 384
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonText:Landroid/widget/TextView;

    .line 385
    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41800000    # 16.0f

    .line 386
    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x0

    .line 387
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 388
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonShadow:Landroid/view/View;

    .line 390
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1000(Lorg/telegram/ui/ActionBar/FloatingToolbar;)I

    move-result v8

    if-nez v8, :cond_0

    .line 391
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v15

    move/from16 p3, v15

    .line 392
    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v16, v5

    invoke-static {v1, v15}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v5

    invoke-static {v5, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 393
    invoke-static {v1, v15}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v5

    const/4 v15, 0x2

    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v5

    const v8, 0x3ecccccd    # 0.4f

    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    move/from16 v15, p3

    goto :goto_0

    :cond_0
    move-object/from16 v16, v5

    const/4 v15, 0x2

    .line 395
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1000(Lorg/telegram/ui/ActionBar/FloatingToolbar;)I

    move-result v5

    if-ne v5, v15, :cond_1

    const v8, 0x20ffffff

    .line 397
    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 398
    invoke-static {v8, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v5, -0x1000000

    .line 399
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const v15, -0x50506

    goto :goto_0

    .line 401
    :cond_1
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v15

    .line 402
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v8

    invoke-static {v8, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v5

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 404
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1100(Lorg/telegram/ui/ActionBar/FloatingToolbar;I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 406
    :goto_0
    invoke-virtual {v10, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 407
    invoke-virtual {v9, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 408
    invoke-virtual {v11, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    .line 409
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setTint(I)V

    .line 410
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    new-instance v5, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v5, 0x13

    const/4 v8, -0x2

    .line 412
    invoke-static {v8, v8, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v14, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x13

    const/16 v20, 0x38

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 413
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 414
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v8

    const/16 v8, 0x37

    invoke-static {v3, v5, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(FFI)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-direct {v0, v14}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    .line 416
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    .line 417
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {v3, v0, v2, v7}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    .line 418
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    .line 420
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    .line 421
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 422
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 423
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    .line 424
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 425
    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1200(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    const/16 v2, 0x96

    .line 426
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    move-object/from16 v4, v16

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1400(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x0

    .line 435
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$5;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$1400(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;I)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;I)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/FrameLayout;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/TextView;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/View;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonShadow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isOverflowAnimating()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 0

    .line 266
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    return p0
.end method

.method private calculateOverflowHeight(I)I
    .locals 2

    const/4 v0, 0x2

    .line 1060
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

    .line 1062
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1063
    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1065
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

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method private clearPanels()V
    .locals 2

    const/4 v0, 0x0

    .line 1031
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1032
    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 1033
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1036
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1037
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method private closeOverflow()V
    .locals 8

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 692
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v5, v1

    .line 694
    new-instance v7, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$9;

    move-object v1, v7

    move-object v2, p0

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 710
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 711
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 712
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 713
    new-instance v4, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$10;

    invoke-direct {v4, p0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIF)V

    .line 724
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    .line 725
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v0

    sub-float v2, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    add-float/2addr v2, v1

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 726
    :goto_0
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;

    invoke-direct {v3, p0, v1, v2, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;FFI)V

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0xfa

    .line 738
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v7, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 739
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 740
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v4, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 742
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 743
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 745
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 746
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 748
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 749
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 750
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 751
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 752
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 755
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 757
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 758
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .locals 2

    .line 1091
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$12;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1141
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$14;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    return-object v0
.end method

.method private createOverflowPanel()Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 4

    .line 1110
    new-instance v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    .line 1111
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 1112
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    .line 1113
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1114
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    .line 1120
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1121
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private getAdjustedDuration(I)I
    .locals 2

    .line 1074
    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x32

    const/4 v0, 0x0

    .line 1075
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

    .line 881
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 882
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

    .line 884
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 886
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private getOverflowWidth()I
    .locals 5

    .line 1051
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1053
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 1054
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

    .line 917
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

    .line 1135
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

    .line 1136
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

.method private synthetic lambda$createOverflowPanel$4(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1122
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    .line 1123
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1124
    iget p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->shiftDp:I

    neg-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->shiftDp:I

    int-to-float p1, p1

    invoke-static {p3, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    .line 1125
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1126
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1127
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz p2, :cond_1

    .line 1128
    invoke-interface {p2, p1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$layoutOverflowPanelItems$3(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .locals 1

    .line 987
    invoke-static {}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 988
    invoke-static {}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$1(Landroid/view/View;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$onBackPressed$2(Landroid/view/View;)V
    .locals 0

    .line 459
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->onBackPressed()V

    return-void
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 984
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 985
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 986
    sget-object v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda4;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 992
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 993
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 995
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    .line 996
    invoke-static {}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_2

    .line 997
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1001
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz p1, :cond_4

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setY(F)V

    goto :goto_1

    .line 1004
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setY(F)V

    .line 1006
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getOverflowWidth()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x4

    .line 1007
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v0

    .line 1008
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 1009
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    return-void
.end method

.method private maybeComputeTransitionDurationScale()V
    .locals 4

    .line 1083
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1085
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

    .line 1086
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

    .line 1164
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 1165
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private onBackPressed()V
    .locals 5

    .line 446
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 449
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 453
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 457
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private openOverflow()V
    .locals 12

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    .line 624
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    .line 626
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v10

    .line 627
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    .line 628
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v6, v5, v1

    .line 629
    new-instance v11, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;

    move-object v1, v11

    move-object v2, p0

    move v3, v0

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    .line 645
    new-instance v1, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v1, p0, v7, v9, v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIF)V

    .line 657
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    .line 658
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    int-to-float v0, v0

    if-eqz v3, :cond_0

    add-float/2addr v0, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_0

    :cond_0
    sub-float v0, v2, v0

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 659
    :goto_0
    new-instance v3, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$8;

    invoke-direct {v3, p0, v2, v0, v8}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;FFI)V

    .line 670
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0xfa

    .line 671
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 672
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 673
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 674
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 675
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    .line 682
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

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 684
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 685
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    return-void
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    .line 1042
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    .line 1043
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

    .line 1044
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 1045
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

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1014
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1018
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1021
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    .line 1022
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    .line 1023
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 12

    .line 541
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    .line 542
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

    .line 544
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 545
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 546
    iget v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/2addr v4, v2

    .line 547
    iget v5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    add-int/2addr v5, v4

    .line 548
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_3

    if-lt v1, v5, :cond_0

    .line 550
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    goto/16 :goto_0

    :cond_0
    if-lt v3, v5, :cond_1

    .line 552
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 553
    :cond_1
    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    if-lt v3, v1, :cond_2

    .line 554
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr p1, v1

    goto/16 :goto_0

    .line 556
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    .line 559
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 560
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v9, v6, Landroid/graphics/Rect;->bottom:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    add-int/2addr v9, v5

    .line 561
    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    add-int/2addr v10, v5

    if-lt v1, v2, :cond_4

    sub-int/2addr v1, v4

    .line 563
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 564
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 565
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_4
    if-lt v1, v5, :cond_5

    if-lt v9, v2, :cond_5

    sub-int/2addr v9, v4

    .line 567
    invoke-direct {p0, v9}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 568
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v5

    .line 569
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_5
    if-lt v3, v2, :cond_6

    sub-int/2addr v3, v4

    .line 571
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 572
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 573
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    :cond_6
    if-lt v3, v5, :cond_7

    .line 574
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt v1, v2, :cond_7

    sub-int/2addr v10, v4

    .line 575
    invoke-direct {p0, v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 576
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v5

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 577
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto :goto_0

    .line 579
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 581
    iput-boolean v8, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    .line 585
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 586
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v2, v1, v8

    .line 587
    aget v1, v1, v7

    .line 588
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 589
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v4, v3, v8

    .line 590
    aget v3, v3, v7

    sub-int/2addr v2, v4

    sub-int/2addr v1, v3

    .line 593
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

    .line 876
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 0

    .line 1069
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1070
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 6

    .line 896
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 898
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    .line 900
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 901
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 903
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

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1189
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .locals 7

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 763
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    .line 764
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    const-string v1, "AccDescrMoreOptions"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 766
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 767
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 768
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 769
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAlpha(F)V

    .line 770
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 771
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 772
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 774
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 776
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 777
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 778
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    goto :goto_0

    .line 780
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

    .line 781
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 782
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setX(F)V

    .line 783
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    .line 785
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_1

    .line 786
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 787
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setY(F)V

    .line 788
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setY(F)V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setY(F)V

    goto/16 :goto_2

    .line 791
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setY(F)V

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setY(F)V

    goto/16 :goto_2

    .line 797
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    .line 798
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 799
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 800
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 801
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setAlpha(F)V

    .line 802
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 803
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 805
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 806
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 807
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setX(F)V

    .line 808
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 809
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setX(F)V

    .line 810
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setX(F)V

    goto :goto_1

    .line 812
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

    .line 813
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 814
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 815
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setX(F)V

    .line 817
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v1, :cond_4

    .line 818
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

    .line 819
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 820
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setY(F)V

    .line 821
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

    .line 823
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setY(F)V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setY(F)V

    goto :goto_2

    .line 829
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 830
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setX(F)V

    .line 832
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setY(F)V

    :goto_2
    return-void
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 2

    .line 1169
    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1170
    invoke-virtual {p1, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1171
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1172
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1173
    :cond_0
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1174
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1175
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 1

    .line 1179
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

    .line 1183
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1184
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 2

    .line 838
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    div-int/2addr p1, v0

    .line 840
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result p1

    .line 841
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 842
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    .line 844
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 845
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 847
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 850
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setY(F)V

    goto :goto_0

    .line 853
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    .line 855
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    :cond_3
    return-void
.end method

.method private updatePopupSize()V
    .locals 5

    .line 862
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 863
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 864
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

    .line 866
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 868
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 870
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 871
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 872
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 503
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 509
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    .line 510
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public hide()V
    .locals 1

    .line 514
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 518
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    .line 519
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 523
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
    .locals 18
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

    .line 922
    new-instance v1, Ljava/util/LinkedList;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 932
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 933
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 935
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x1

    move/from16 v12, p2

    move v11, v4

    .line 936
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 937
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/view/MenuItem;

    .line 938
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    xor-int/lit8 v14, v5, 0x1

    if-eqz v13, :cond_0

    .line 939
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2500(Lorg/telegram/ui/ActionBar/FloatingToolbar;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 940
    invoke-static {}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2600()Ljava/util/List;

    move-result-object v5

    invoke-interface {v13}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    iget v8, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    move-object v7, v13

    move v9, v11

    move v10, v14

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/ActionBar/FloatingToolbar;->access$2700(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/MenuItem;IZZ)Landroid/view/View;

    move-result-object v5

    .line 948
    instance-of v6, v5, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 949
    move-object v6, v5

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-eqz v11, :cond_2

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    goto :goto_1

    :cond_2
    move-wide v10, v8

    .line 951
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v15

    int-to-double v6, v15

    mul-double/2addr v10, v6

    double-to-int v6, v10

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    if-eqz v14, :cond_3

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v8

    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    int-to-double v8, v8

    mul-double v8, v8, v16

    double-to-int v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 952
    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    .line 953
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move/from16 v7, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 954
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int v8, v12, v8

    if-gt v6, v8, :cond_4

    move v8, v4

    goto :goto_3

    :cond_4
    move v8, v3

    :goto_3
    if-eqz v14, :cond_5

    if-gt v6, v12, :cond_5

    move v9, v4

    goto :goto_4

    :cond_5
    move v9, v3

    :goto_4
    if-nez v8, :cond_6

    if-eqz v9, :cond_7

    .line 957
    :cond_6
    invoke-direct {v0, v5, v13}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    .line 959
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 960
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 961
    iput v6, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 962
    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sub-int/2addr v12, v6

    .line 964
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v11, v3

    goto/16 :goto_0

    .line 970
    :cond_7
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 971
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 973
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

    .line 477
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 478
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 479
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    .line 480
    invoke-direct {p0, p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 481
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 482
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    .line 484
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 4

    .line 488
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    .line 492
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    .line 493
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 495
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 496
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 497
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 498
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    .line 499
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 4

    .line 531
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    .line 535
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    .line 536
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    .line 537
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
