.class public final Lcom/smedialink/ui/custom/donation/DonationBalanceView;
.super Landroid/widget/FrameLayout;
.source "DonationBalanceView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationBalanceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationBalanceView.kt\ncom/smedialink/ui/custom/donation/DonationBalanceView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 CollectionExt.kt\ncom/smedialink/utils/extentions/common/CollectionExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,80:1\n56#2,6:81\n4#3:87\n5#3,2:90\n2634#4:88\n1#5:89\n*S KotlinDebug\n*F\n+ 1 DonationBalanceView.kt\ncom/smedialink/ui/custom/donation/DonationBalanceView\n*L\n28#1:81,6\n52#1:87\n52#1:90,2\n52#1:88\n52#1:89\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/smedialink/ui/custom/donation/DonationBalanceView$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 34
    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->setupView()V

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

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupView()V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->setupColors()V

    .line 74
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->constraintTradeInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.constraintTradeInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 21
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final setBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 4

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 41
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->imageCoinIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v2

    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v2, v3}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 43
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalanceInDollars:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textCoinTicker:Lcom/smedialink/ui/custom/CoinTickerView;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p1

    invoke-direct {p0}, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/smedialink/ui/custom/CoinTickerView;->setTicker(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public final setupColors()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 51
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const-string v2, "windowBackgroundWhite"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalanceInDollars:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "setupColors$lambda$2$lambda$1"

    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalanceInDollars:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteGrayText2"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "chats_actionBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalance:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "chat_messagePanelText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textCoinTicker:Lcom/smedialink/ui/custom/CoinTickerView;

    invoke-virtual {v0}, Lcom/smedialink/ui/custom/CoinTickerView;->setupColors()V

    return-void
.end method
