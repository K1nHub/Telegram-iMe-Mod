.class Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;
.super Landroid/view/View;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerIndicatorView"
.end annotation


# instance fields
.field private final adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private final animator:Landroid/animation/ValueAnimator;

.field private final animatorValues:[F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final indicatorRect:Landroid/graphics/RectF;

.field private isIndicatorVisible:Z

.field private final textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$1ltUBusmnbfmabzzE8nf6Z3XL0g(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jyKLXVH5He5Ry4IFGFUaNrPowgw(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->updateAvatarItemsInternal()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 4

    .line 1787
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 1788
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1775
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    const/4 p2, 0x2

    new-array v0, p2, [F

    .line 1781
    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animatorValues:[F

    .line 1783
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    const/16 v1, 0x8

    .line 1789
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1791
    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->textPaint:Landroid/text/TextPaint;

    const/4 v3, -0x1

    .line 1792
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1793
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1794
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v3, 0x41700000    # 15.0f

    .line 1795
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1796
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x26000000

    .line 1797
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-array p2, p2, [F

    .line 1798
    fill-array-data p2, :array_1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    .line 1799
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1800
    new-instance v1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1833
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    .line 1834
    new-instance v2, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;

    invoke-direct {v2, p0, p1, v1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$1;-><init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;Z)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1884
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$2;-><init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {p2, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1904
    new-instance p2, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$3;-><init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Lorg/telegram/ui/ProfileActivity;)V

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

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

.method static synthetic access$20800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 1773
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->getSecondaryMenuItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)Z
    .locals 0

    .line 1773
    iget-boolean p0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->isIndicatorVisible:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;Z)V
    .locals 0

    .line 1773
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->invalidateIndicatorRect(Z)V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)V
    .locals 0

    .line 1773
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->updateAvatarItems()V

    return-void
.end method

.method private getCurrentTitle()Ljava/lang/String;
    .locals 2

    .line 2003
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecondaryMenuItem()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    .line 2007
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    .line 2009
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    .line 2011
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2012
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private invalidateIndicatorRect(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1982
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->saveCurrentPageProgress()V

    .line 1984
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->textPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1986
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$4400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/16 v2, 0x30

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1987
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    add-float/2addr p1, v2

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1988
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v3, v0

    int-to-float v0, v3

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 1989
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/16 v1, 0x1a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 1990
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 1992
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1801
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animatorValues:[F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result p1

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1806
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1809
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1810
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1811
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1812
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1814
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1815
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1817
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1819
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1820
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float v2, v1, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1821
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1822
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1824
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1825
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1826
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1827
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1829
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1830
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1831
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateAvatarItems()V
    .locals 3

    .line 1935
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1938
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->isSubMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1939
    new-instance v0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1941
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->updateAvatarItemsInternal()V

    :goto_0
    return-void
.end method

.method private updateAvatarItemsInternal()V
    .locals 3

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1922
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealPosition()I

    move-result v0

    const/16 v1, 0x24

    const/16 v2, 0x21

    if-nez v0, :cond_1

    .line 1925
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 1926
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_0

    .line 1928
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 1929
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public isIndicatorFullyVisible()Z
    .locals 1

    .line 1950
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->isIndicatorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/high16 v0, 0x41400000    # 12.0f

    .line 1997
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    .line 1998
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1999
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->indicatorRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x41940000    # 18.5f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    const/4 p1, 0x0

    .line 1977
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->invalidateIndicatorRect(Z)V

    return-void
.end method

.method public refreshVisibility(F)V
    .locals 2

    .line 1972
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->getRealCount()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->setIndicatorVisible(ZF)V

    return-void
.end method

.method public setIndicatorVisible(ZF)V
    .locals 7

    .line 1954
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->isIndicatorVisible:Z

    if-eq p1, v0, :cond_3

    .line 1955
    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->isIndicatorVisible:Z

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animatorValues:[F

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp([FF)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_0

    .line 1959
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x437a0000    # 250.0f

    if-eqz p1, :cond_1

    .line 1961
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    sub-float v5, v3, v0

    mul-float/2addr v5, v2

    div-float/2addr v5, p2

    float-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 1963
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    mul-float/2addr v2, v0

    div-float/2addr v2, p2

    float-to-long v5, v2

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1965
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animatorValues:[F

    const/4 v2, 0x0

    aput v0, p2, v2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    move v1, v3

    .line 1966
    :cond_2
    aput v1, p2, v0

    .line 1967
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$PagerIndicatorView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method
