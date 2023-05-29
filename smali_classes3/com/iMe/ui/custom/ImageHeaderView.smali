.class public final Lcom/iMe/ui/custom/ImageHeaderView;
.super Landroid/widget/FrameLayout;
.source "ImageHeaderView.kt"


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

.field private final networkIconCornerSize$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/ImageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p2, Lcom/iMe/ui/custom/ImageHeaderView$networkIconCornerSize$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/custom/ImageHeaderView$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/custom/ImageHeaderView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/ImageHeaderView;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/custom/ImageHeaderView;->setupView()V

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

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ImageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final setupView()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setupViewData$default(Lcom/iMe/ui/custom/ImageHeaderView;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 66
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 67
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/custom/ImageHeaderView;->getNetworkIconCornerSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$5$lambda$4"

    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 74
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setupViewData(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "titleText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 40
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    if-eqz p2, :cond_0

    .line 42
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "setupViewData$lambda$1$lambda$0"

    .line 43
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 47
    :cond_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "iconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 58
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, p1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFromWithPlaceholderResId(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Integer;Z)V

    .line 59
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
