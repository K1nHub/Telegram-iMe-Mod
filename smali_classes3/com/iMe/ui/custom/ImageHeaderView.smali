.class public final Lcom/iMe/ui/custom/ImageHeaderView;
.super Landroid/widget/FrameLayout;
.source "ImageHeaderView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/ImageHeaderView$IconData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageHeaderView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageHeaderView.kt\ncom/iMe/ui/custom/ImageHeaderView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,111:1\n262#2,2:112\n*S KotlinDebug\n*F\n+ 1 ImageHeaderView.kt\ncom/iMe/ui/custom/ImageHeaderView\n*L\n61#1:112,2\n*E\n"
.end annotation


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

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Lcom/iMe/ui/custom/ImageHeaderView$networkIconCornerSize$2;

    invoke-direct {p2, p0}, Lcom/iMe/ui/custom/ImageHeaderView$networkIconCornerSize$2;-><init>(Lcom/iMe/ui/custom/ImageHeaderView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/ImageHeaderView;->networkIconCornerSize$delegate:Lkotlin/Lazy;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 29
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

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ImageHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getNetworkIconCornerSize()F
    .locals 1

    .line 25
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

    .line 93
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setupViewData$default(Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setupColors()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 80
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 81
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/custom/ImageHeaderView;->getNetworkIconCornerSize()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 85
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$9$lambda$8"

    .line 86
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 88
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public final setupViewData(Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "iconData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 39
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 41
    instance-of v2, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;

    if-eqz v2, :cond_0

    const-string v2, "setupViewData$lambda$5$lambda$2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_0
    instance-of v2, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;

    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$ResourceDrawable;->getResId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v2, p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;

    if-eqz v2, :cond_2

    .line 44
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 45
    check-cast p1, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;

    .line 46
    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;->getLastName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, v5, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 53
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageNetworkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "setupViewData$lambda$5$lambda$3"

    .line 54
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v2, v1, p1, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p2

    .line 55
    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 58
    :cond_3
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p2, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 60
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "setupViewData$lambda$5$lambda$4"

    .line 61
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p1, p3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 262
    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "iconUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageHeaderView;->binding:Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;

    .line 72
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 73
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentImageHeaderBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
