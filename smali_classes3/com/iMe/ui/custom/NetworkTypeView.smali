.class public final Lcom/iMe/ui/custom/NetworkTypeView;
.super Landroid/widget/FrameLayout;
.source "NetworkTypeView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/NetworkTypeView$Companion;
    }
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

.field private final cornerRadius$delegate:Lkotlin/Lazy;

.field private isImmutable:Z

.field private network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/custom/NetworkTypeView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/custom/NetworkTypeView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object p2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 34
    sget-object p1, Lcom/iMe/ui/custom/NetworkTypeView$cornerRadius$2;->INSTANCE:Lcom/iMe/ui/custom/NetworkTypeView$cornerRadius$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->setupView()V

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

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final setupColors()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 87
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, -0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "setupColors$lambda$4$lambda$3"

    .line 89
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->setupColors()V

    const-string v0, "network_type_view"

    .line 81
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final updateView()V
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 55
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->isImmutable:Z

    if-eqz v2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getCornerRadius()I

    move-result v2

    .line 58
    iget-object v3, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getColorHex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 56
    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getCornerRadius()I

    move-result v2

    .line 63
    iget-object v3, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getColorHex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const v4, 0x40ffffff    # 7.9999995f

    .line 61
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 55
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    iget-object v2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-boolean v2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->isImmutable:Z

    if-nez v2, :cond_1

    .line 70
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v2, 0x4

    .line 71
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const-string v2, "updateView$lambda$2$lambda$1"

    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    .line 75
    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "imageNetwork"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getSmallLogoUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object v0
.end method

.method public final setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->updateView()V

    return-void
.end method
