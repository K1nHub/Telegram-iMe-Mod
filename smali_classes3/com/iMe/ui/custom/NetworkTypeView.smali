.class public final Lcom/iMe/ui/custom/NetworkTypeView;
.super Landroid/widget/FrameLayout;
.source "NetworkTypeView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/custom/NetworkTypeView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkTypeView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkTypeView.kt\ncom/iMe/ui/custom/NetworkTypeView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,113:1\n56#2,6:114\n*S KotlinDebug\n*F\n+ 1 NetworkTypeView.kt\ncom/iMe/ui/custom/NetworkTypeView\n*L\n34#1:114,6\n*E\n"
.end annotation


# instance fields
.field private final binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

.field private final cornerRadius$delegate:Lkotlin/Lazy;

.field private isImmutable:Z

.field private network:Lcom/iMe/model/wallet/crypto/NetworkItem;

.field private final resourceManager$delegate:Lkotlin/Lazy;


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

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    sget-object p2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getDefault()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    invoke-static {p2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/NetworkTypeView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/custom/NetworkTypeView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/custom/NetworkTypeView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 37
    sget-object p1, Lcom/iMe/ui/custom/NetworkTypeView$cornerRadius$2;->INSTANCE:Lcom/iMe/ui/custom/NetworkTypeView$cornerRadius$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->cornerRadius$delegate:Lkotlin/Lazy;

    .line 46
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

    .line 22
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/NetworkTypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getCornerRadius()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->cornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getNetworkColor()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 40
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$color;->wallet_network_all:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 41
    :cond_0
    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getColorHex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, -0x1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v1, "setupColors$lambda$3"

    .line 105
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupView()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->setupColors()V

    const-string v0, "network_type_view"

    .line 98
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final updateView()V
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 62
    iget-object v1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 63
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/NetworkItem$All;

    if-eqz v2, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->networks_all:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_all_networks_small:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :cond_0
    instance-of v2, v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    if-eqz v2, :cond_2

    .line 69
    check-cast v1, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getFullName()Ljava/lang/String;

    move-result-object v2

    .line 70
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->imageNetwork:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v4, "imageNetwork"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getSmallLogoUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 70
    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    move-object v1, v2

    .line 77
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getCornerRadius()I

    move-result v3

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getNetworkColor()I

    move-result v4

    const v5, 0x40ffffff    # 7.9999995f

    .line 77
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-boolean v1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->isImmutable:Z

    if-nez v1, :cond_1

    .line 87
    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_arrow_down_16:I

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v1, 0x4

    .line 89
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const-string v1, "updateView$lambda$2$lambda$1"

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 22
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getNetwork()Lcom/iMe/model/wallet/crypto/NetworkItem;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-object v0
.end method

.method public final setImmutable()V
    .locals 5

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/iMe/ui/custom/NetworkTypeView;->isImmutable:Z

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 52
    iget-object v1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->binding:Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;

    .line 53
    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getCornerRadius()I

    move-result v3

    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->getNetworkColor()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentNetworkTypeBinding;->textNetwork:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final setNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/custom/NetworkTypeView;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/custom/NetworkTypeView;->updateView()V

    return-void
.end method
