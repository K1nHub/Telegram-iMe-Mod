.class public Lorg/telegram/ui/Components/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;,
        Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;
    }
.end annotation


# instance fields
.field private currentPosition:I

.field private currentPositionOffset:F

.field private defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field public delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private dividerPadding:I

.field private indicatorColor:I

.field private indicatorHeight:I

.field private lastScrollX:I

.field private lineLeftAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private lineRightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final pageListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;

.field private pager:Landroidx/viewpager/widget/ViewPager;

.field private rectPaint:Landroid/graphics/Paint;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private scrollOffset:I

.field private shouldExpand:Z

.field private tabCount:I

.field private tabPadding:I

.field private tabsContainer:Landroid/widget/LinearLayout;

.field private underlineColor:I

.field private underlineHeight:I


# direct methods
.method public static synthetic $r8$lambda$VC0XPAS0EjzEtdhdOsnYZ_8H3f8(Lorg/telegram/ui/Components/PagerSlidingTabStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lambda$addTab$1(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bXvSXjsD_WP0C2WhlmOeQgfojw4(Lorg/telegram/ui/Components/PagerSlidingTabStrip;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lambda$addIconTab$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 5

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pageListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPositionOffset:F

    const v1, -0x99999a

    .line 60
    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorColor:I

    const/high16 v1, 0x1a000000

    .line 61
    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineColor:I

    .line 63
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    const/16 v1, 0x34

    .line 65
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollOffset:I

    const/16 v1, 0x8

    .line 66
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    const/4 v1, 0x2

    .line 67
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    const/16 v1, 0xc

    .line 68
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->dividerPadding:I

    const/16 v1, 0x18

    .line 69
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabPadding:I

    .line 72
    iput v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lastScrollX:I

    .line 276
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x15e

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineLeftAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 277
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-direct {v1, p0, v3, v4, v2}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineRightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 76
    iput-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setWillNotDraw(Z)V

    .line 81
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    .line 82
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)I
    .locals 0

    .line 36
    iget p0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)I
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/PagerSlidingTabStrip;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollToChild(II)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getThemedColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/PagerSlidingTabStrip;F)F
    .locals 0

    .line 36
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPositionOffset:F

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addIconTab(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 4

    .line 140
    new-instance v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$2;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$2;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 160
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "chat_emojiBottomPanelIcon"

    .line 161
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x12

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 162
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 167
    new-instance p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addTab(ILjava/lang/CharSequence;)V
    .locals 10

    .line 181
    new-instance v0, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$3;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;Landroid/content/Context;I)V

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    .line 207
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v2, "fonts/rmedium.ttf"

    .line 208
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v2, "chat_emojiPanelBackspace"

    .line 209
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    const/16 v2, 0x11

    .line 211
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "chat_emojiBottomPanelIcon"

    .line 213
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .line 214
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->setRippleDrawableForceSoftware(Landroid/graphics/drawable/RippleDrawable;)V

    .line 215
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    new-instance p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p2, 0x12

    .line 226
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 227
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method private getThemedColor(Ljava/lang/String;)I
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_1
    return p1
.end method

.method private synthetic lambda$addIconTab$0(ILandroid/view/View;)V
    .locals 1

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;->canScrollToTab(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private synthetic lambda$addTab$1(ILandroid/view/View;)V
    .locals 1

    .line 219
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    instance-of p2, p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    if-eqz p2, :cond_0

    .line 220
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {p2, p1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;->canScrollToTab(I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method private scrollToChild(II)V
    .locals 1

    .line 259
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 266
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 268
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollOffset:I

    sub-int/2addr v0, p1

    .line 270
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lastScrollX:I

    if-eq v0, p1, :cond_4

    .line 271
    iput v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lastScrollX:I

    const/4 p1, 0x0

    .line 272
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_4
    return-void
.end method

.method private updateTabStyles()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    if-ge v1, v2, :cond_2

    .line 234
    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->defaultTabLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    iget-boolean v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 238
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 239
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;->getTabPadding(I)I

    move-result v3

    .line 241
    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 243
    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabPadding:I

    invoke-virtual {v2, v3, v0, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDividerPadding()I
    .locals 1

    .line 423
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->dividerPadding:I

    return v0
.end method

.method public getIndicatorColor()I
    .locals 1

    .line 382
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorColor:I

    return v0
.end method

.method public getIndicatorHeight()I
    .locals 1

    .line 391
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 432
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollOffset:I

    return v0
.end method

.method public getShouldExpand()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    return v0
.end method

.method public getTab(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTabPaddingLeftRight()I
    .locals 1

    .line 452
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabPadding:I

    return v0
.end method

.method public getUnderlineColor()I
    .locals 1

    .line 405
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineColor:I

    return v0
.end method

.method public getUnderlineHeight()I
    .locals 1

    .line 414
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    if-ge v0, v1, :cond_2

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;

    invoke-interface {v1, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$IconTabProvider;->getPageIconDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->addIconTab(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->updateTabStyles()V

    .line 122
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$1;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 281
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 289
    iget v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 292
    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    int-to-float v5, v4

    div-float/2addr v5, v3

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 295
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 298
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v5, v1

    int-to-float v1, v5

    .line 300
    iget v5, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPositionOffset:F

    cmpl-float v2, v5, v2

    if-lez v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPosition:I

    iget v5, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_2

    .line 301
    iget-object v5, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    add-int/2addr v2, v6

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    add-int/2addr v5, v7

    int-to-float v5, v5

    .line 303
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v7, v2

    int-to-float v2, v7

    .line 305
    iget v7, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->currentPositionOffset:F

    mul-float v5, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v7

    mul-float v9, v9, v4

    add-float/2addr v5, v9

    mul-float v2, v2, v7

    sub-float/2addr v8, v7

    mul-float v8, v8, v1

    add-float/2addr v2, v8

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineLeftAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineRightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v2, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_0

    .line 311
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineLeftAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    .line 312
    iget-object v2, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->lineRightAnimated:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v2

    .line 315
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    if-eqz v1, :cond_3

    .line 316
    iget-object v1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v4, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    sub-int v4, v0, v4

    int-to-float v4, v4

    int-to-float v0, v0

    invoke-virtual {v1, v5, v4, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 318
    iget v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    int-to-float v2, v0

    div-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 250
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 251
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p1

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 366
    iget-boolean p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    if-nez p1, :cond_0

    .line 367
    new-instance p1, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/PagerSlidingTabStrip;)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setDividerPadding(I)V
    .locals 0

    .line 418
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->dividerPadding:I

    .line 419
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 0

    .line 372
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorColor:I

    .line 373
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 1

    .line 377
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorColor:I

    .line 378
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setIndicatorHeight(I)V
    .locals 0

    .line 386
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->indicatorHeight:I

    .line 387
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->delegatePageListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setScrollOffset(I)V
    .locals 0

    .line 427
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->scrollOffset:I

    .line 428
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setShouldExpand(Z)V
    .locals 2

    .line 436
    iput-boolean p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->shouldExpand:Z

    .line 437
    iget-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-direct {p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->updateTabStyles()V

    .line 439
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabPaddingLeftRight(I)V
    .locals 0

    .line 447
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->tabPadding:I

    .line 448
    invoke-direct {p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->updateTabStyles()V

    return-void
.end method

.method public setUnderlineColor(I)V
    .locals 0

    .line 395
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineColor:I

    .line 396
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineColorResource(I)V
    .locals 1

    .line 400
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineColor:I

    .line 401
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setUnderlineHeight(I)V
    .locals 0

    .line 409
    iput p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->underlineHeight:I

    .line 410
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 95
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->pageListener:Lorg/telegram/ui/Components/PagerSlidingTabStrip$PageListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->notifyDataSetChanged()V

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not have adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
