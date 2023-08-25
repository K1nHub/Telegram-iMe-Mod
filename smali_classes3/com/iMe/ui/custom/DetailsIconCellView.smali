.class public final Lcom/iMe/ui/custom/DetailsIconCellView;
.super Landroid/widget/FrameLayout;
.source "DetailsIconCellView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDetailsIconCellView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DetailsIconCellView.kt\ncom/iMe/ui/custom/DetailsIconCellView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,90:1\n262#2,2:91\n262#2,2:93\n*S KotlinDebug\n*F\n+ 1 DetailsIconCellView.kt\ncom/iMe/ui/custom/DetailsIconCellView\n*L\n43#1:91,2\n57#1:93,2\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

.field private isIconTinted:Z


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/DetailsIconCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->isIconTinted:Z

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupView()V

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

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/DetailsIconCellView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setupViewData$default(Lcom/iMe/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public final setIconTinted(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->isIconTinted:Z

    return-void
.end method

.method public final setupColors()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    .line 63
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textValue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$4$lambda$2"

    .line 66
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 68
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    iget-boolean v2, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->isIconTinted:Z

    if-eqz v2, :cond_0

    const-string v2, "setupColors$lambda$4$lambda$3"

    .line 70
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 75
    :goto_0
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    .line 40
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 43
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    const-string p2, "divider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 262
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/iMe/ui/custom/DetailsIconCellView;->binding:Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;

    .line 54
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->textValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->imageIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "imageIcon"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 57
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentDetailsIconCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    const-string p2, "divider"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 262
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
