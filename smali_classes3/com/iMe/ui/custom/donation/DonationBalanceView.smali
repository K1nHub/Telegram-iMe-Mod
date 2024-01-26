.class public final Lcom/iMe/ui/custom/donation/DonationBalanceView;
.super Landroid/widget/FrameLayout;
.source "DonationBalanceView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationBalanceView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationBalanceView.kt\ncom/iMe/ui/custom/donation/DonationBalanceView\n+ 2 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n4#2:75\n5#2,2:78\n2634#3:76\n1#4:77\n*S KotlinDebug\n*F\n+ 1 DonationBalanceView.kt\ncom/iMe/ui/custom/donation/DonationBalanceView\n*L\n46#1:75\n46#1:78,2\n46#1:76\n46#1:77\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/donation/DonationBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/custom/donation/DonationBalanceView;->setupView()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/donation/DonationBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final setupView()V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/iMe/ui/custom/donation/DonationBalanceView;->setupColors()V

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->constraintTradeInfo:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.constraintTradeInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 9

    const-string v0, "balance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 35
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->imageLogo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageLogo"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 37
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalanceInDollars:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textCoinTicker:Lcom/iMe/ui/custom/TickerView;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public final setupColors()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationBalanceView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;

    .line 45
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 46
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textAccountBalanceInDollars:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textSubtitle:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletTokenBalanceBinding;->textCoinTicker:Lcom/iMe/ui/custom/TickerView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/TickerView;->setupColors()V

    return-void
.end method
