.class public final Lcom/iMe/ui/custom/ImageTextCheckCell;
.super Landroid/widget/FrameLayout;
.source "ImageTextCheckCell.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageTextCheckCell.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageTextCheckCell.kt\ncom/iMe/ui/custom/ImageTextCheckCell\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,62:1\n262#2,2:63\n262#2,2:65\n*S KotlinDebug\n*F\n+ 1 ImageTextCheckCell.kt\ncom/iMe/ui/custom/ImageTextCheckCell\n*L\n45#1:63,2\n46#1:65,2\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/ImageTextCheckCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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

.method private final setupView()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupColors()V

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic setupViewData$default(Lcom/iMe/ui/custom/ImageTextCheckCell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/iMe/ui/custom/ImageTextCheckCell;->setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

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

.method public final setupColors()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    .line 52
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageCheck:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageCheck"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public final setupViewData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    .locals 8

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/custom/ImageTextCheckCell;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;

    .line 38
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p2, :cond_0

    const-string p1, "setupViewData$lambda$1$lambda$0"

    .line 41
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 42
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 45
    :cond_1
    :goto_0
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->imageCheck:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "imageCheck"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-eqz p4, :cond_2

    move p4, p2

    goto :goto_1

    :cond_2
    move p4, p3

    .line 262
    :goto_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkCellBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    const-string p4, "divider"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_3
    move p2, p3

    .line 262
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
