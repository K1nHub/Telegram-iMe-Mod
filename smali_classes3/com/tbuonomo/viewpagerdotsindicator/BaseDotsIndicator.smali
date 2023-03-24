.class public abstract Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;
.super Landroid/widget/FrameLayout;
.source "BaseDotsIndicator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;,
        Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;,
        Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Companion;
    }
.end annotation


# instance fields
.field protected final dots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private dotsClickable:Z

.field private dotsColor:I

.field private dotsCornerRadius:F

.field private dotsSize:F

.field private dotsSpacing:F

.field private pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 66
    iput-boolean p3, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsClickable:Z

    const v0, -0xff0001

    .line 67
    iput v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsColor:I

    .line 73
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDefaultSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dpToPxF(F)F

    move-result v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 74
    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsCornerRadius:F

    .line 75
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDefaultSpacing()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dpToPxF(F)F

    move-result v1

    iput v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSpacing:F

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getStyleableId()[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026(attrs, type.styleableId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDotsColorId()I

    move-result p2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setDotsColor(I)V

    .line 82
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDotsSizeId()I

    move-result p2

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    .line 83
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDotsCornerRadiusId()I

    move-result p2

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsCornerRadius:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsCornerRadius:F

    .line 84
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDotsSpacingId()I

    move-result p2

    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSpacing:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSpacing:F

    .line 85
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;->getDotsClickableId()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsClickable:Z

    .line 87
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$refreshDotsCount(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDotsCount()V

    return-void
.end method

.method public static final synthetic access$refreshDotsSize(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDotsSize()V

    return-void
.end method

.method public static final synthetic access$refreshOnPageChangedListener(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshOnPageChangedListener()V

    return-void
.end method

.method private final refreshDotsCount()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->addDots(I)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->removeDots(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final refreshDotsSize()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dots[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setWidth(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final refreshOnPageChangedListener()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->removeOnPageChangeListener()V

    .line 158
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->buildOnPageChangedListener()Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->addOnPageChangeListener(Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;)V

    .line 160
    iget-object v1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;->onPageScrolled(IF)V

    :cond_0
    return-void
.end method

.method private final removeDots(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 138
    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->removeDot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addDot(I)V
.end method

.method protected final addDots(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 132
    invoke-virtual {p0, v0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->addDot(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract buildOnPageChangedListener()Lcom/tbuonomo/viewpagerdotsindicator/OnPageChangeListenerHelper;
.end method

.method protected final dpToPxF(F)F
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "context.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public final getDotsClickable()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsClickable:Z

    return v0
.end method

.method public final getDotsColor()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsColor:I

    return v0
.end method

.method protected final getDotsCornerRadius()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsCornerRadius:F

    return v0
.end method

.method protected final getDotsSize()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    return v0
.end method

.method protected final getDotsSpacing()F
    .locals 1

    .line 75
    iget v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSpacing:F

    return v0
.end method

.method public final getPager()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    return-object v0
.end method

.method public abstract getType()Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Type;
.end method

.method public final isInBounds(Ljava/util/ArrayList;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;I)Z"
        }
    .end annotation

    const-string v0, "$this$isInBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected final isNotEmpty(Landroidx/viewpager/widget/ViewPager;)Z
    .locals 1

    const-string v0, "$this$isNotEmpty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "adapter!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final isNotEmpty(Landroidx/viewpager2/widget/ViewPager2;)Z
    .locals 1

    const-string v0, "$this$isNotEmpty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "adapter!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 105
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDots()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 319
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 320
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 321
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const/high16 p1, 0x43340000    # 180.0f

    .line 322
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public abstract refreshDotColor(I)V
.end method

.method public final refreshDots()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$refreshDots$1;

    invoke-direct {v0, p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$refreshDots$1;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final refreshDotsColors()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dots:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    invoke-virtual {p0, v1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDotColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract removeDot(I)V
.end method

.method public final setDotsClickable(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsClickable:Z

    return-void
.end method

.method public final setDotsColor(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsColor:I

    .line 70
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDotsColors()V

    return-void
.end method

.method protected final setDotsCornerRadius(F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsCornerRadius:F

    return-void
.end method

.method protected final setDotsSize(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSize:F

    return-void
.end method

.method protected final setDotsSpacing(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->dotsSpacing:F

    return-void
.end method

.method public final setPager(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    return-void
.end method

.method public final setPointsColor(I)V
    .locals 0

    .line 182
    invoke-virtual {p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->setDotsColor(I)V

    .line 183
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDotsColors()V

    return-void
.end method

.method public final setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$1;

    invoke-direct {v1, p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$1;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 199
    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2;

    invoke-direct {v0, p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager$2;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    .line 237
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDots()V

    return-void

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You have to set an adapter to the view pager before initializing the dots indicator !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    const-string v0, "viewPager2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$1;

    invoke-direct {v1, p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$1;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 254
    new-instance v0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$2;

    invoke-direct {v0, p0, p1}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$setViewPager2$2;-><init>(Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->pager:Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator$Pager;

    .line 287
    invoke-virtual {p0}, Lcom/tbuonomo/viewpagerdotsindicator/BaseDotsIndicator;->refreshDots()V

    return-void

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You have to set an adapter to the view pager before initializing the dots indicator !"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setWidth(Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this$setWidth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 294
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
