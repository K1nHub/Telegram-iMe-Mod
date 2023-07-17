.class public final Lcom/iMe/ui/custom/ImageTextCheckCell;
.super Landroid/widget/FrameLayout;
.source "ImageTextCheckCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageTextCheckCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageTextCheckCell.kt\ncom/iMe/ui/custom/ImageTextCheckCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,56:1\n262#2,2:57\n262#2,2:59\n*S KotlinDebug\n*F\n+ 1 ImageTextCheckCell.kt\ncom/iMe/ui/custom/ImageTextCheckCell\n*L\n39#1:57,2\n40#1:59,2\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupView()V

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

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/ImageTextCheckCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupColors()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    .line 51
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageCheck:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageCheck"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupColors()V

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setCustomCheckResId(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageCheck:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    .line 37
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "imageNetwork"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 39
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageCheck:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "imageCheck"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 v1, 0x8

    if-eqz p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v1

    .line 262
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    const-string p3, "divider"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    .line 262
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
