.class public Lorg/telegram/ui/ActionBar/ActionBar;
.super Landroid/widget/FrameLayout;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    }
.end annotation


# instance fields
.field private actionBarColor:I

.field public actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

.field private actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private actionModeAnimation:Landroid/animation/AnimatorSet;

.field private actionModeColor:I

.field private actionModeExtraView:Landroid/view/View;

.field private actionModeHidingViews:[Landroid/view/View;

.field private actionModeShowingView:Landroid/view/View;

.field private actionModeTag:Ljava/lang/String;

.field private actionModeTop:Landroid/view/View;

.field private actionModeTranslationView:Landroid/view/View;

.field private actionModeVisible:Z

.field private addToContainer:Z

.field private additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private allowOverlayTitle:Z

.field private attachState:Z

.field private attached:Z

.field private avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private backButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private backButtonImageView:Landroid/widget/ImageView;

.field private backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

.field backgroundUpdateListener:Ljava/lang/Runnable;

.field public blurScrimPaint:Landroid/graphics/Paint;

.field blurredBackground:Z

.field private castShadows:Z

.field private centerScale:Z

.field private clipContent:Z

.field private colorFilterMode:Landroid/graphics/PorterDuff$Mode;

.field contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field private drawBackButton:Z

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field private extraHeight:I

.field private fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

.field private fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private forceSkipTouches:Z

.field private fromBottom:Z

.field private ignoreLayoutRequest:Z

.field private interceptTouchEventListener:Landroid/view/View$OnTouchListener;

.field private interceptTouches:Z

.field private isMenuOffsetSuppressed:Z

.field protected isSearchFieldVisible:Z

.field protected itemsActionModeBackgroundColor:I

.field protected itemsActionModeColor:I

.field protected itemsBackgroundColor:I

.field protected itemsColor:I

.field private lastOverlayTitle:Ljava/lang/CharSequence;

.field private lastRightDrawable:Landroid/graphics/drawable/Drawable;

.field private lastRunnable:Ljava/lang/Runnable;

.field private lastTitle:Ljava/lang/CharSequence;

.field private manualStart:Z

.field public menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

.field private occupyStatusBar:Z

.field private overlayTitleAnimation:Z

.field overlayTitleAnimationInProgress:Z

.field private overlayTitleToSet:[Ljava/lang/Object;

.field protected parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private rect:Landroid/graphics/Rect;

.field rectTmp:Landroid/graphics/Rect;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private resumed:Z

.field private rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

.field public searchFieldVisibleAlpha:F

.field searchVisibleAnimator:Landroid/animation/AnimatorSet;

.field private snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

.field private subtitle:Ljava/lang/CharSequence;

.field private subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private supportsHolidayImage:Z

.field private titleActionRunnable:Ljava/lang/Runnable;

.field private titleAnimationRunning:Z

.field private titleColorToSet:I

.field private titleOverlayShown:Z

.field private titleRightMargin:I

.field private titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public static synthetic $r8$lambda$4qN0bwfAzOEOlE3rxN4fBc8EF0s(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$createBackButtonImage$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N6ER4MdtLuK__mybiuOiFSUiFnc(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$hideActionMode$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QSKZwz6FvhPdWNfLh4ERrzq8b3Q(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$onSearchFieldVisibilityChanged$4(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_BiK-eYPmD4jTzSS7CY9hxzv7uQ(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$showActionMode$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vy_i1OtjFs0BfvIFzcpz7372gy4(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    sget-object p1, Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;->BACK:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    const/4 p1, 0x2

    new-array p1, p1, [Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 79
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 90
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 92
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    .line 94
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    .line 121
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    .line 132
    iput v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    .line 146
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->colorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 150
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    .line 151
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    .line 161
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 162
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ActionBar/ActionBar;)I
    .locals 0

    .line 63
    iget p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ActionBar/ActionBar;I)I
    .locals 0

    .line 63
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ActionBar/ActionBar;)[Ljava/lang/Object;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ActionBar/ActionBar;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ActionBar/ActionBar;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$402(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ActionBar/ActionBar;)[Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ActionBar/ActionBar;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ActionBar/ActionBar;)Ljava/lang/CharSequence;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ActionBar/ActionBar;)[Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    return-object p0
.end method

.method private createBackButtonImage()V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-void

    .line 187
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    .line 188
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->colorFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v1, 0x33

    const/16 v2, 0x36

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v2, "AccDescrGoBack"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private createSubtitleTextView()V
    .locals 4

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    .line 366
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 369
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createTitleTextView(I)V
    .locals 4

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    return-void

    .line 418
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ActionBar/ActionBar$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;)V

    aput-object v1, v0, p1

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 425
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    if-eqz v0, :cond_1

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 430
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableTopPadding(I)V

    .line 434
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, v0, p1

    const/16 v0, 0x33

    const/4 v1, -0x2

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getCurrentActionBarHeight()I
    .locals 2

    .line 1628
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    .line 1629
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    .line 1630
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    const/16 v0, 0x30

    .line 1631
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x38

    .line 1633
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method private getThemedColor(I)I
    .locals 1

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method private synthetic lambda$createBackButtonImage$1(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 201
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 202
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;->onItemClick(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hideActionMode$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 902
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 903
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 167
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSearchFieldVisibilityChanged$4(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1045
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchFieldVisibleAlpha:F

    .line 1046
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 1047
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showActionMode$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 740
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 741
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateAttachState()V
    .locals 2

    .line 1747
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1748
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attachState:Z

    if-eq v1, v0, :cond_2

    .line 1749
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attachState:Z

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    goto :goto_1

    .line 1753
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public actionModeIsExist(Ljava/lang/String;)Z
    .locals 1

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public beginDelayedTransition()V
    .locals 3

    .line 1767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_0

    .line 1768
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    .line 1769
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 1770
    new-instance v2, Landroid/transition/Fade;

    invoke-direct {v2}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1771
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$8;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v0, v2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 1825
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    const-wide/16 v1, 0xdc

    .line 1826
    invoke-virtual {v0, v1, v2}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    .line 1827
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    .line 1828
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public closeSearchField()V
    .locals 1

    const/4 v0, 0x1

    .line 1130
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField(Z)V

    return-void
.end method

.method public closeSearchField(Z)V
    .locals 1

    .line 1134
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->closeSearchField(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public createActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    return-object v0
.end method

.method public createActionMode(ZLjava/lang/String;)Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 579
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeIsExist(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 580
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p1

    .line 582
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_1

    .line 583
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 584
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    .line 586
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    .line 587
    new-instance p1, Lorg/telegram/ui/ActionBar/ActionBar$2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 p2, 0x1

    .line 622
    iput-boolean p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenu;->isActionMode:Z

    .line 623
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 624
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefault:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 625
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 626
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    invoke-virtual {p1, v0, p2, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 627
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    .line 628
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 629
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 630
    iget p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 p2, 0x5

    .line 631
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 632
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 633
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 647
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object p1
.end method

.method public createAdditionalSubtitleTextView()V
    .locals 4

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x3

    .line 377
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/16 v2, 0x33

    const/4 v3, -0x2

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 5

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    return-object v0

    .line 550
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBar;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x5

    .line 551
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1845
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1848
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rectTmp:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1850
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->isActionBarInCrossfade()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 293
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->drawBackButton:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-ne p2, v0, :cond_1

    return v2

    .line 297
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBar;->shouldClipChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    neg-float v4, v4

    iget-boolean v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v5, :cond_2

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_0
    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 302
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 303
    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz p4, :cond_9

    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    if-nez p4, :cond_9

    sget-boolean p4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p4, :cond_9

    iget-object p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, p4, v1

    if-eq p2, v3, :cond_4

    aget-object p4, p4, v2

    if-ne p2, p4, :cond_9

    .line 304
    :cond_4
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_9

    .line 307
    move-object v3, p2

    check-cast v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 308
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 309
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 310
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 311
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v1, v2, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 312
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartX()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableXOffset()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableXOffset()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 313
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextStartY()I

    move-result v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawableYOffset()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v4, v5

    .line 314
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p4, v2, v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/high16 v2, 0x437f0000    # 255.0f

    .line 315
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    iget-boolean p4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    if-eqz p4, :cond_5

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    .line 319
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 323
    :cond_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->canStartHolidayAnimation()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 324
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-nez p2, :cond_7

    .line 325
    new-instance p2, Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    goto :goto_1

    .line 327
    :cond_6
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->manualStart:Z

    if-nez p2, :cond_7

    .line 328
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 329
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 332
    :cond_7
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    if-eqz p2, :cond_8

    .line 333
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/SnowflakesEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 334
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    if-eqz p2, :cond_9

    .line 335
    invoke-virtual {p2, p0, p1}, Lorg/telegram/ui/Components/FireworksEffect;->onDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return p3
.end method

.method public getActionBarMenuOnItemClick()Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
    .locals 1

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    return-object v0
.end method

.method public getActionMode()Lorg/telegram/ui/ActionBar/ActionBarMenu;
    .locals 1

    .line 1759
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    return-object v0
.end method

.method public getAdditionalSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBackButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ActionBar/INavigationLayout$IBackButtonDrawable;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Lorg/telegram/ui/ActionBar/INavigationLayout$IBackButtonDrawable;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout$IBackButtonDrawable;->getBackButtonState()Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonState:Lorg/telegram/ui/ActionBar/INavigationLayout$BackButtonState;

    return-object v0
.end method

.method public getCastShadows()Z
    .locals 1

    .line 1616
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return v0
.end method

.method public getOccupyStatusBar()Z
    .locals 1

    .line 1555
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    return v0
.end method

.method public getSearchAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 533
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 536
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTitleTextView2()Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideActionMode()V
    .locals 9

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 861
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    const/4 v0, 0x0

    .line 862
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    .line 863
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 864
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    if-eqz v2, :cond_2

    move v2, v0

    .line 866
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 867
    aget-object v5, v3, v2

    if-eqz v5, :cond_1

    .line 868
    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 869
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    aget-object v3, v3, v2

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v4, [F

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v0

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 873
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 874
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 875
    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 877
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 878
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    aput v6, v5, v0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_4
    iget v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-nez v2, :cond_5

    .line 885
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 887
    :cond_5
    invoke-static {v2}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide v7, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v2, v2, v7

    if-gez v2, :cond_6

    .line 888
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_1

    .line 890
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 894
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_7

    .line 895
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 897
    :cond_7
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 898
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 899
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 900
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 901
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 906
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 908
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$4;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 931
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 932
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v1, :cond_a

    .line 933
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v1, v0

    if-eqz v2, :cond_9

    .line 934
    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 936
    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 937
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 940
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_b

    .line 941
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 944
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 945
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v1, :cond_c

    .line 946
    check-cast v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 948
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isActionModeShowed()Z
    .locals 1

    .line 1005
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionModeShowed(Ljava/lang/String;)Z
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTag:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSearchFieldVisible()Z
    .locals 1

    .line 1544
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    return v0
.end method

.method public listenToBackgroundUpdate(Ljava/lang/Runnable;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 1710
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1711
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    .line 1712
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 1713
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1714
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v3

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v3, v5

    if-gez v1, :cond_0

    .line 1715
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 1717
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1720
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 1721
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 1727
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 1728
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    .line 1729
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 1730
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v1, :cond_2

    .line 1731
    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    if-nez v1, :cond_0

    .line 1732
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 1734
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide v3, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 1735
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_0

    .line 1737
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 1741
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_3

    .line 1742
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 264
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCurrentHolidayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->manualStart:Z

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 269
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    .line 270
    new-instance v0, Lorg/telegram/ui/Components/SnowflakesEffect;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SnowflakesEffect;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 272
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 274
    :cond_0
    iput-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->snowflakesEffect:Lorg/telegram/ui/Components/SnowflakesEffect;

    .line 275
    new-instance v0, Lorg/telegram/ui/Components/FireworksEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/FireworksEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fireworksEffect:Lorg/telegram/ui/Components/FireworksEffect;

    .line 276
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 277
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 281
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouchEventListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    .line 1314
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1317
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v4, 0x50

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 1318
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3, v2, v1, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 1319
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    const/16 v3, 0x48

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_3

    .line 1321
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x1a

    goto :goto_2

    :cond_3
    const/16 v3, 0x12

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 1324
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_6

    .line 1325
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->searchFieldVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4a

    goto :goto_4

    :cond_4
    const/16 v6, 0x42

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_5

    :cond_5
    sub-int v6, p4, p2

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1326
    :goto_5
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v6

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v7, v6, v1, v8, v9}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_6
    move v6, v2

    :goto_6
    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ge v6, v8, :cond_d

    .line 1330
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v9, v6

    if-eqz v10, :cond_c

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v5, :cond_c

    .line 1332
    iget-boolean v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    if-eqz v9, :cond_7

    if-eqz v6, :cond_8

    :cond_7
    if-nez v9, :cond_9

    if-ne v6, v7, :cond_9

    :cond_8
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    if-eqz v7, :cond_9

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    if-eqz v7, :cond_9

    .line 1333
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    goto :goto_8

    .line 1335
    :cond_9
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v5, :cond_b

    .line 1336
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    div-int/2addr v7, v8

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    if-ne v9, v8, :cond_a

    goto :goto_7

    :cond_a
    const/4 v8, 0x3

    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_8

    .line 1338
    :cond_b
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v9

    sub-int/2addr v7, v9

    div-int/2addr v7, v8

    .line 1341
    :goto_8
    iget-object v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v9, v8, v6

    add-int/2addr v7, v1

    aget-object v8, v8, v6

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int v8, v7, v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v11

    add-int/2addr v7, v11

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    sub-int/2addr v7, v11

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v7, v11

    invoke-virtual {v9, v3, v8, v10, v7}, Landroid/view/View;->layout(IIII)V

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 1344
    :cond_d
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_f

    .line 1345
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    div-int/2addr v6, v8

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    div-int/2addr v9, v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v8

    add-int/2addr v6, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    :cond_e
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1346
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    add-int/2addr v6, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v3, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1349
    :cond_f
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v5, :cond_11

    .line 1350
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    div-int/2addr v6, v8

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v9

    div-int/2addr v9, v8

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/2addr v9, v8

    add-int/2addr v6, v9

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    :cond_10
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v6, v9

    .line 1351
    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    add-int/2addr v6, v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v3

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextHeight()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {v9, v3, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 1354
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v3, :cond_12

    const/16 v6, 0x40

    .line 1356
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 1357
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v8

    add-int/2addr v10, v1

    .line 1358
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v6, v11

    .line 1359
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    div-int/2addr v11, v8

    add-int/2addr v1, v11

    .line 1355
    invoke-virtual {v3, v9, v10, v6, v1}, Landroid/view/View;->layout(IIII)V

    .line 1363
    :cond_12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_1a

    .line 1365
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1366
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v5, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v10, v9, v2

    if-eq v6, v10, :cond_19

    aget-object v9, v9, v7

    if-eq v6, v9, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v6, v9, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v6, v9, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq v6, v9, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v6, v9, :cond_19

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v6, v9, :cond_13

    goto :goto_e

    .line 1370
    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1372
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1373
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1377
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_14

    const/16 v12, 0x33

    :cond_14
    and-int/lit8 v13, v12, 0x7

    and-int/lit8 v12, v12, 0x70

    and-int/lit8 v13, v13, 0x7

    if-eq v13, v7, :cond_16

    const/4 v14, 0x5

    if-eq v13, v14, :cond_15

    .line 1394
    iget v13, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_b

    :cond_15
    sub-int v13, p4, v10

    .line 1390
    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_a

    :cond_16
    sub-int v13, p4, p2

    sub-int/2addr v13, v10

    .line 1387
    div-int/2addr v13, v8

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_a
    sub-int/2addr v13, v14

    :goto_b
    const/16 v14, 0x10

    if-eq v12, v14, :cond_18

    if-eq v12, v4, :cond_17

    .line 1405
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_d

    :cond_17
    sub-int v12, p5, p3

    sub-int/2addr v12, v11

    .line 1402
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_c

    :cond_18
    sub-int v12, p5, p3

    sub-int/2addr v12, v11

    .line 1399
    div-int/2addr v12, v8

    iget v14, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v14

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_c
    sub-int v9, v12, v9

    :goto_d
    add-int/2addr v10, v13

    add-int/2addr v11, v9

    .line 1407
    invoke-virtual {v6, v13, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :cond_19
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1a
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v6, p0

    .line 1192
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1193
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 1194
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    .line 1195
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v8, 0x1

    .line 1197
    iput-boolean v8, v6, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    .line 1198
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1200
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1202
    :cond_0
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    .line 1203
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    invoke-virtual {v3, v9, v4, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1205
    :cond_2
    iput-boolean v9, v6, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    .line 1207
    iget-boolean v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_3
    move v3, v9

    :goto_1
    add-int/2addr v1, v3

    iget v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    add-int/2addr v1, v3

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 1210
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_5

    .line 1211
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/16 v4, 0x36

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 1212
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x50

    goto :goto_2

    :cond_4
    const/16 v1, 0x48

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_4

    .line 1214
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x1a

    goto :goto_3

    :cond_6
    const/16 v1, 0x12

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1217
    :goto_4
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    const/4 v5, 0x0

    const/high16 v11, -0x80000000

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v10, :cond_c

    .line 1219
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->searchFieldVisible()Z

    move-result v4

    const/16 v12, 0x4a

    const/16 v13, 0x42

    if-eqz v4, :cond_8

    .line 1220
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v4, :cond_8

    .line 1221
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1222
    iget-object v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v14, v4, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1223
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItemsMeasuredWidth()I

    move-result v4

    .line 1224
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_7

    goto :goto_5

    :cond_7
    move v12, v13

    :goto_5
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int v12, v0, v12

    iget-object v13, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItemsMeasuredWidth()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v12, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1225
    iget-boolean v13, v6, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v13, :cond_b

    .line 1226
    iget-object v13, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v13, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    goto :goto_7

    .line 1228
    :cond_8
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-eqz v4, :cond_a

    .line 1229
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    move v12, v13

    :goto_6
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v0, v4

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1230
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v4, :cond_b

    .line 1231
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    goto :goto_7

    .line 1234
    :cond_a
    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1235
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    if-nez v4, :cond_b

    .line 1236
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->translateXItems(F)V

    .line 1239
    :cond_b
    :goto_7
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4, v12, v2}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_c
    move v2, v9

    :goto_8
    const/4 v4, 0x2

    if-ge v2, v4, :cond_23

    .line 1244
    iget-object v12, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v12, v9

    if-eqz v13, :cond_d

    aget-object v12, v12, v9

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_e

    :cond_d
    iget-object v12, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v12, :cond_22

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eq v12, v10, :cond_22

    .line 1245
    :cond_e
    iget-object v12, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v12, :cond_f

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v12

    goto :goto_9

    :cond_f
    move v12, v9

    :goto_9
    sub-int v12, v0, v12

    const/16 v13, 0x10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int/2addr v12, v14

    sub-int/2addr v12, v1

    iget v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    sub-int/2addr v12, v14

    .line 1247
    iget-boolean v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    const/16 v15, 0x14

    if-eqz v14, :cond_10

    if-eqz v2, :cond_11

    :cond_10
    if-nez v14, :cond_13

    if-ne v2, v8, :cond_13

    :cond_11
    iget-boolean v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    if-eqz v14, :cond_13

    iget-boolean v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    if-eqz v14, :cond_13

    .line 1248
    iget-object v13, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v13, v13, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v4, :cond_12

    const/16 v4, 0x12

    goto :goto_a

    :cond_12
    move v4, v15

    :goto_a
    invoke-virtual {v13, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    goto/16 :goto_10

    .line 1250
    :cond_13
    iget-object v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v14, v9

    const/16 v17, 0xe

    if-eqz v16, :cond_18

    aget-object v14, v14, v9

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_18

    iget-object v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v14, :cond_18

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_18

    .line 1251
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v14, v4, v2

    if-eqz v14, :cond_15

    .line 1252
    aget-object v4, v4, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_14

    move v14, v15

    goto :goto_b

    :cond_14
    const/16 v14, 0x12

    :goto_b
    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1254
    :cond_15
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_16

    move v14, v13

    goto :goto_c

    :cond_16
    move/from16 v14, v17

    :goto_c
    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1255
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v4, :cond_1e

    .line 1256
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_d

    :cond_17
    move/from16 v13, v17

    :goto_d
    invoke-virtual {v4, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    goto/16 :goto_10

    .line 1259
    :cond_18
    iget-object v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v16, v14, v2

    if-eqz v16, :cond_1a

    aget-object v14, v14, v2

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v10, :cond_1a

    .line 1260
    iget-object v14, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v14, v14, v2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v16

    if-nez v16, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_19

    const/16 v3, 0x12

    goto :goto_e

    :cond_19
    move v3, v15

    :goto_e
    invoke-virtual {v14, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1262
    :cond_1a
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_1c

    .line 1263
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-nez v14, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v4, :cond_1b

    move/from16 v14, v17

    goto :goto_f

    :cond_1b
    move v14, v13

    :goto_f
    invoke-virtual {v3, v14}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1265
    :cond_1c
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_1e

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-nez v14, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    if-ne v14, v4, :cond_1d

    move/from16 v13, v17

    :cond_1d
    invoke-virtual {v3, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1271
    :cond_1e
    :goto_10
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v3, v2

    if-eqz v4, :cond_20

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_20

    .line 1272
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/16 v13, 0x18

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    iget-object v7, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    add-int/2addr v14, v7

    iget-object v7, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    add-int/2addr v14, v7

    invoke-static {v14, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/view/View;->measure(II)V

    .line 1273
    iget-boolean v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    if-eqz v3, :cond_1f

    .line 1274
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1275
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v7, v4, v2

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v14

    invoke-virtual {v4, v3, v9, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1276
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    shr-int/2addr v4, v8

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setPivotY(F)V

    goto :goto_11

    .line 1278
    :cond_1f
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotX(F)V

    .line 1279
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v5}, Landroid/view/View;->setPivotY(F)V

    .line 1282
    :cond_20
    :goto_11
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_21

    .line 1283
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/view/View;->measure(II)V

    .line 1285
    :cond_21
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v10, :cond_22

    .line 1286
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/view/View;->measure(II)V

    :cond_22
    add-int/lit8 v2, v2, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_8

    .line 1291
    :cond_23
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_24

    const/16 v1, 0x2a

    .line 1293
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1294
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1292
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1298
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v7

    move v11, v9

    :goto_12
    if-ge v11, v7, :cond_27

    .line 1300
    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1301
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v10, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v0, v9

    if-eq v1, v2, :cond_26

    aget-object v0, v0, v8

    if-eq v1, v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq v1, v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq v1, v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq v1, v0, :cond_26

    iget-object v0, v6, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v1, v0, :cond_25

    goto :goto_13

    :cond_25
    const/4 v3, 0x0

    .line 1304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_14

    :cond_26
    :goto_13
    const/high16 v12, 0x40000000    # 2.0f

    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_27
    return-void
.end method

.method public onMenuButtonPressed()V
    .locals 1

    .line 1412
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1415
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onMenuButtonPressed()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 1426
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    .line 1427
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->hideAllPopupMenus()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1421
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->resumed:Z

    .line 1422
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->updateAttachState()V

    return-void
.end method

.method protected onSearchChangedIgnoreTitles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSearchFieldVisibilityChanged(Z)V
    .locals 14

    .line 1024
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    .line 1025
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1026
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1028
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    .line 1029
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->onSearchChangedIgnoreTitles()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1033
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    .line 1034
    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1038
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz p1, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 1043
    iget v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchFieldVisibleAlpha:F

    aput v4, v3, v2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1044
    new-instance v6, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1050
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v8, v7, [Landroid/animation/Animator;

    aput-object v3, v8, v2

    invoke-virtual {v6, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v3, v2

    .line 1052
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_9

    .line 1053
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    const v8, 0x3f733333    # 0.95f

    if-nez p1, :cond_5

    .line 1055
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    invoke-virtual {v6, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1057
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleX(F)V

    .line 1058
    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    .line 1060
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v7, [Landroid/animation/Animator;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v7, [F

    if-eqz p1, :cond_6

    move v13, v4

    goto :goto_3

    :cond_6
    move v13, v5

    :goto_3
    aput v13, v12, v2

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1061
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v7, [Landroid/animation/Animator;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v7, [F

    if-eqz p1, :cond_7

    move v13, v8

    goto :goto_4

    :cond_7
    move v13, v5

    :goto_4
    aput v13, v12, v2

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1062
    iget-object v9, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v10, v7, [Landroid/animation/Animator;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v7, [F

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    aput v8, v12, v2

    invoke-static {v6, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v10, v2

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1064
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v3, :cond_b

    .line 1065
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-array v6, v7, [Landroid/animation/Animator;

    iget-object v8, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v7, [F

    if-eqz p1, :cond_a

    move v11, v5

    goto :goto_6

    :cond_a
    move v11, v4

    :goto_6
    aput v11, v10, v2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1068
    :cond_b
    iput-boolean v7, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    .line 1069
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 1070
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBar$5;

    invoke-direct {v3, p0, v0, p1, v1}, Lorg/telegram/ui/ActionBar/ActionBar$5;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/util/ArrayList;ZZ)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->searchVisibleAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 1103
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1104
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_d

    .line 1105
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 1106
    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotateToBack(Z)V

    if-eqz p1, :cond_c

    move v4, v5

    .line 1107
    :cond_c
    invoke-virtual {v0, v4, v7}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setRotation(FZ)V

    :cond_d
    return-void
.end method

.method public onSearchPressed()V
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->onSearchPressed()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1621
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->forceSkipTouches:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1624
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public openSearchField(Ljava/lang/String;Z)V
    .locals 3

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1144
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    xor-int/lit8 v2, v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZZLjava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public openSearchField(Z)V
    .locals 4

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v0, :cond_0

    return-void

    .line 1151
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->openSearchField(ZZLjava/lang/String;Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1184
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ignoreLayoutRequest:Z

    if-eqz v0, :cond_0

    return-void

    .line 1187
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarMenuOnItemClick:Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;

    return-void
.end method

.method public setActionModeColor(I)V
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setActionModeOverrideColor(I)V
    .locals 0

    .line 990
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    return-void
.end method

.method public setActionModeTopColor(I)V
    .locals 1

    .line 966
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setAddToContainer(Z)V
    .locals 0

    .line 388
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return-void
.end method

.method public setAllowOverlayTitle(Z)V
    .locals 0

    .line 1434
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    return-void
.end method

.method public setBackButtonContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_3

    .line 219
    check-cast p1, Lorg/telegram/ui/ActionBar/BackDrawable;

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 221
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 222
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    goto :goto_2

    .line 223
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_4

    .line 224
    check-cast p1, Lorg/telegram/ui/ActionBar/MenuDrawable;

    .line 225
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    .line 226
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setBackButtonImage(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createBackButtonImage()V

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 995
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionBarColor:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 998
    instance-of v1, v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v1, :cond_0

    .line 999
    check-cast v0, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setBackColor(I)V

    :cond_0
    return-void
.end method

.method public setCastShadows(Z)V
    .locals 0

    .line 1612
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->castShadows:Z

    return-void
.end method

.method public setClipContent(Z)V
    .locals 0

    .line 396
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    return-void
.end method

.method public setColorFilterMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->colorFilterMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public setDrawBackButton(Z)V
    .locals 0

    .line 1858
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->drawBackButton:Z

    .line 1859
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 1860
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDrawBlurBackground(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 1837
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->blurredBackground:Z

    .line 1838
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1839
    iget-object p1, p1, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurBehindViews:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1840
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1170
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1172
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    .line 1175
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setEnabled(Z)V

    .line 1177
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_2

    .line 1178
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setExtraHeight(I)V
    .locals 1

    .line 1121
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_0

    .line 1123
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1124
    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->extraHeight:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setForceSkipTouches(Z)V
    .locals 0

    .line 1854
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->forceSkipTouches:Z

    return-void
.end method

.method public setInterceptTouchEventListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouchEventListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setInterceptTouches(Z)V
    .locals 0

    .line 1113
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->interceptTouches:Z

    return-void
.end method

.method public setItemsBackgroundColor(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1560
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    .line 1561
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz p2, :cond_0

    .line 1562
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    .line 1563
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1566
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_3

    .line 1567
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    goto :goto_0

    .line 1570
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsBackgroundColor:I

    .line 1571
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    .line 1572
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1574
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_3

    .line 1575
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsBackgroundColor()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setItemsColor(IZ)V
    .locals 3

    if-eqz p2, :cond_1

    .line 1582
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeColor:I

    .line 1583
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_0

    .line 1584
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    .line 1586
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 1587
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1588
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_4

    .line 1589
    check-cast p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    goto :goto_1

    .line 1593
    :cond_1
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    .line 1594
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1596
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsColor:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->colorFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1597
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1598
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_2

    .line 1599
    check-cast p2, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    goto :goto_0

    .line 1600
    :cond_2
    instance-of v0, p2, Lorg/telegram/ui/ActionBar/MenuDrawable;

    if-eqz v0, :cond_3

    .line 1601
    check-cast p2, Lorg/telegram/ui/ActionBar/MenuDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/MenuDrawable;->setIconColor(I)V

    .line 1605
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p1, :cond_4

    .line 1606
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->updateItemsColor()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setMenuOffsetSuppressed(Z)V
    .locals 0

    .line 1309
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isMenuOffsetSuppressed:Z

    return-void
.end method

.method public setOccupyStatusBar(Z)V
    .locals 2

    .line 1548
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1550
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setOverlayTitleAnimation(Z)V
    .locals 0

    .line 1763
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    return-void
.end method

.method public setPopupBackgroundColor(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 515
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_1

    .line 516
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->redrawPopup(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupItemsColor(IZZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(IZ)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 499
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p3, :cond_1

    .line 500
    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsColor(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPopupItemsSelectorColor(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 505
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsSelectorColor(I)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 507
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz p2, :cond_1

    .line 508
    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setPopupItemsSelectorColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 465
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 467
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 469
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 470
    aget-object p1, p1, v0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setSearchAvatarImageView(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 256
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->avatarSearchImageView:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz p1, :cond_2

    .line 258
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setSearchCursorColor(I)V
    .locals 1

    .line 978
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchCursorColor(I)V

    :cond_0
    return-void
.end method

.method public setSearchFieldText(Ljava/lang/String;)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchFieldText(Ljava/lang/String;)V

    return-void
.end method

.method public setSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1155
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    :cond_0
    return-void
.end method

.method public setSearchTextColor(IZ)V
    .locals 1

    .line 972
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->setSearchTextColor(IZ)V

    :cond_0
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 401
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_3

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_2

    .line 408
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 410
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    :cond_3
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez v0, :cond_0

    .line 487
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->createSubtitleTextView()V

    .line 489
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method public setSupportsHolidayImage(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz p1, :cond_0

    .line 239
    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 240
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rect:Landroid/graphics/Rect;

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 446
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 447
    invoke-direct {p0, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 449
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v1, v0

    if-eqz v2, :cond_4

    .line 450
    aget-object v1, v1, v0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible:Z

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v0

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 452
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_2

    .line 453
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    .line 455
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->attached:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    instance-of p2, p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p2, :cond_3

    .line 457
    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    .line 459
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v0

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 461
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    return-void
.end method

.method public setTitleActionRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1438
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;ZJ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 1638
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setTitleAnimated(Ljava/lang/CharSequence;ZJLandroid/view/animation/Interpolator;)V
    .locals 8

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1646
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimation:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 1648
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1649
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1652
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    if-eqz p2, :cond_3

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xdc

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1654
    :cond_4
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v5, v2

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    .line 1655
    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1656
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1657
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1659
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aput-object v7, v5, v2

    .line 1661
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    .line 1662
    aput-object v7, v5, v1

    .line 1663
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1664
    iput-boolean p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->fromBottom:Z

    .line 1665
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/16 p1, 0x14

    if-nez v0, :cond_8

    .line 1667
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v5, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    if-eqz p2, :cond_7

    goto :goto_2

    :cond_7
    neg-int v6, v6

    :goto_2
    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 1669
    :cond_8
    iget-object v5, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p5, :cond_9

    .line 1671
    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1673
    :cond_9
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1675
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleAnimationRunning:Z

    .line 1676
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-nez v0, :cond_b

    .line 1678
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-eqz p2, :cond_a

    neg-int p1, p1

    :cond_a
    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_b
    if-eqz p5, :cond_c

    .line 1681
    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 1683
    :cond_c
    invoke-virtual {v1, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/ActionBar/ActionBar$7;

    invoke-direct {p3, p0, v0, p2}, Lorg/telegram/ui/ActionBar/ActionBar$7;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;ZZ)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1699
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1700
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    return-void

    .line 1643
    :cond_d
    :goto_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 3

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 478
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleColorToSet:I

    .line 479
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 481
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 6

    .line 1444
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->allowOverlayTitle:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 1447
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1448
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 1449
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleToSet:[Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 1450
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    if-eqz v0, :cond_1

    return-void

    .line 1453
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastOverlayTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    .line 1456
    :cond_4
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastOverlayTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    .line 1458
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastTitle:Ljava/lang/CharSequence;

    :goto_0
    if-eqz p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    .line 1459
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRightDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    if-eqz p1, :cond_7

    const-string v2, "..."

    .line 1462
    invoke-static {p2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 1464
    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p2

    .line 1465
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v4, p2, v2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    move v2, v3

    goto :goto_2

    :cond_7
    move v2, v1

    :goto_2
    if-eqz p1, :cond_8

    move p1, v3

    goto :goto_3

    :cond_8
    move p1, v1

    .line 1470
    :goto_3
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleOverlayShown:Z

    const/4 p1, 0x4

    if-eqz p2, :cond_9

    .line 1471
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_10

    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v4, v1

    if-eqz v5, :cond_a

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_5

    .line 1489
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v4, v1

    if-eqz v5, :cond_14

    .line 1490
    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1491
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v5, v4, v3

    if-eqz v5, :cond_b

    .line 1492
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1494
    :cond_b
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    if-nez v4, :cond_c

    .line 1495
    invoke-direct {p0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 1497
    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v4, v4, v3

    invoke-virtual {v4, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1498
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 1499
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1500
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 1501
    instance-of p1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_d

    .line 1502
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_d
    if-eqz v2, :cond_e

    .line 1505
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    .line 1507
    :cond_e
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->overlayTitleAnimationInProgress:Z

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p1, v3

    .line 1509
    aget-object v0, p1, v1

    aput-object v0, p1, v3

    .line 1510
    aput-object p2, p1, v1

    .line 1511
    aget-object p1, p1, v1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 1512
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1513
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1514
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1515
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xdc

    .line 1516
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1517
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1518
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1519
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-nez p2, :cond_f

    .line 1520
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_f
    const p2, 0x3f333333    # 0.7f

    .line 1522
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 1524
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBar;->requestLayout()V

    .line 1525
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->centerScale:Z

    .line 1526
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ActionBar/ActionBar$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ActionBar/ActionBar$6;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1538
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_6

    .line 1472
    :cond_10
    :goto_5
    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createTitleTextView(I)V

    .line 1473
    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->supportsHolidayImage:Z

    if-eqz v3, :cond_11

    .line 1474
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1475
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1477
    :cond_11
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v3, v1

    invoke-virtual {v3, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1478
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setDrawablePadding(I)V

    .line 1479
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1480
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V

    .line 1481
    instance-of p1, v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_12

    .line 1482
    check-cast v0, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setParentView(Landroid/view/View;)V

    :cond_12
    if-eqz v2, :cond_13

    .line 1485
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1487
    :cond_13
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object p2, p2, v1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->removeView(Landroid/view/View;)V

    :cond_14
    :goto_6
    if-eqz p3, :cond_15

    goto :goto_7

    .line 1540
    :cond_15
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->lastRunnable:Ljava/lang/Runnable;

    :goto_7
    iput-object p3, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleActionRunnable:Ljava/lang/Runnable;

    :cond_16
    :goto_8
    return-void
.end method

.method public setTitleRightMargin(I)V
    .locals 0

    .line 438
    iput p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleRightMargin:I

    return-void
.end method

.method public setTitleScrollNonFitText(Z)V
    .locals 2

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setScrollNonFitText(Z)V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 347
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 348
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public shouldAddToContainer()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->addToContainer:Z

    return v0
.end method

.method protected shouldClipChild(Landroid/view/View;)Z
    .locals 4

    .line 285
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->clipContent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v3, v0, v2

    if-eq p1, v3, :cond_1

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->additionalSubtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public showActionMode()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 690
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V

    return-void
.end method

.method public showActionMode(Z)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    .line 694
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ActionBar;->showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V

    return-void
.end method

.method public showActionMode(ZLandroid/view/View;Landroid/view/View;[Landroid/view/View;[ZLandroid/view/View;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    .line 698
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v7, :cond_16

    iget-boolean v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    if-eqz v8, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v8, 0x1

    .line 701
    iput-boolean v8, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeVisible:Z

    const/4 v12, 0x0

    if-eqz p1, :cond_9

    .line 703
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 704
    iget-object v13, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v11, v15, [F

    fill-array-data v11, :array_0

    invoke-static {v13, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    move v11, v12

    .line 706
    :goto_0
    array-length v13, v3

    if-ge v11, v13, :cond_2

    .line 707
    aget-object v13, v3, v11

    if-eqz v13, :cond_1

    .line 708
    aget-object v13, v3, v11

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v15, [F

    fill-array-data v9, :array_1

    invoke-static {v13, v14, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 713
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v10, v15, [F

    fill-array-data v10, :array_2

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_4

    .line 716
    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v10, v8, [F

    int-to-float v6, v6

    aput v6, v10, v12

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 719
    :cond_4
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    .line 720
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    .line 721
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    .line 726
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_1

    .line 729
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 732
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_6

    .line 733
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 735
    :cond_6
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    .line 736
    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 737
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backgroundUpdateListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    new-array v1, v15, [F

    .line 738
    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 739
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 744
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v1, v3, v12

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 746
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 747
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBar$3;

    invoke-direct {v2, v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar$3;-><init>(Lorg/telegram/ui/ActionBar/ActionBar;[Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 788
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 789
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 790
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 791
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_8

    .line 792
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 794
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_9
    const/high16 v9, 0x3f800000    # 1.0f

    .line 797
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-eqz v3, :cond_b

    move v7, v12

    .line 799
    :goto_2
    array-length v9, v3

    if-ge v7, v9, :cond_b

    .line 800
    aget-object v9, v3, v7

    if-eqz v9, :cond_a

    .line 801
    aget-object v9, v3, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_c

    const/high16 v7, 0x3f800000    # 1.0f

    .line 806
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    if-eqz v5, :cond_d

    int-to-float v6, v6

    .line 809
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 810
    iput-object v5, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTranslationView:Landroid/view/View;

    .line 812
    :cond_d
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeExtraView:Landroid/view/View;

    .line 813
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeShowingView:Landroid/view/View;

    .line 814
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    .line 819
    iget v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeColor:I

    invoke-static {v1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v1

    const-wide v5, 0x3fe6666660000000L    # 0.699999988079071

    cmpg-double v1, v1, v5

    if-gez v1, :cond_e

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v12}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    goto :goto_3

    .line 822
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v8}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 825
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionMode:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 829
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->titleTextView:[Lorg/telegram/ui/ActionBar/SimpleTextView;

    aget-object v2, v1, v12

    const/4 v3, 0x4

    if-eqz v2, :cond_f

    .line 830
    aget-object v1, v1, v12

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 833
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->subtitleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-eqz v1, :cond_11

    .line 836
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 838
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    if-eqz v1, :cond_14

    move v1, v12

    .line 839
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeHidingViews:[Landroid/view/View;

    array-length v5, v2

    if-ge v1, v5, :cond_14

    .line 840
    aget-object v5, v2, v1

    if-eqz v5, :cond_13

    if-eqz v4, :cond_12

    .line 841
    array-length v5, v4

    if-ge v1, v5, :cond_12

    aget-boolean v5, v4, v1

    if-eqz v5, :cond_13

    .line 842
    :cond_12
    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 847
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_16

    .line 848
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 849
    instance-of v2, v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v2, :cond_15

    .line 850
    check-cast v1, Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v12}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 852
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/ActionBar;->backButtonImageView:Landroid/widget/ImageView;

    iget v2, v0, Lorg/telegram/ui/ActionBar/ActionBar;->itemsActionModeBackgroundColor:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    :goto_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showActionModeTop()V
    .locals 2

    .line 953
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->occupyStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    .line 955
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultTop:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 958
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v1, -0x1

    .line 959
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 960
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 961
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBar;->actionModeTop:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
