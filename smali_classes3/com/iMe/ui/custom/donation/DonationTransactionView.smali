.class public final Lcom/iMe/ui/custom/donation/DonationTransactionView;
.super Landroid/widget/FrameLayout;
.source "DonationTransactionView.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDonationTransactionView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DonationTransactionView.kt\ncom/iMe/ui/custom/donation/DonationTransactionView\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n56#2,6:99\n56#2,6:105\n262#3,2:111\n4#4:113\n5#4,2:116\n2634#5:114\n1#6:115\n*S KotlinDebug\n*F\n+ 1 DonationTransactionView.kt\ncom/iMe/ui/custom/donation/DonationTransactionView\n*L\n29#1:99,6\n30#1:105,6\n42#1:111,2\n72#1:113\n72#1:116,2\n72#1:114\n72#1:115\n*E\n"
.end annotation


# instance fields
.field private binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final telegramControllersGateway$delegate:Lkotlin/Lazy;


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

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/donation/DonationTransactionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    sget-object p2, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p3

    .line 61
    new-instance v0, Lcom/iMe/ui/custom/donation/DonationTransactionView$special$$inlined$inject$default$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/iMe/ui/custom/donation/DonationTransactionView$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    .line 29
    iput-object p3, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p2}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance p3, Lcom/iMe/ui/custom/donation/DonationTransactionView$special$$inlined$inject$default$2;

    invoke-direct {p3, p0, v1, v1}, Lcom/iMe/ui/custom/donation/DonationTransactionView$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->resourceManager$delegate:Lkotlin/Lazy;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->inflate(Landroid/view/LayoutInflater;)Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    move-result-object p1

    const-string p2, "inflate(LayoutInflater.from(context))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->setupView()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/donation/DonationTransactionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/gateway/TelegramControllersGateway;

    return-object v0
.end method

.method private final setupView()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->setupColors()V

    .line 93
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 22
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public final setTransaction(Lcom/iMe/model/wallet/transaction/TransactionItem;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;->getSenderAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 50
    new-instance v2, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 51
    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$dimen;->telegram_avatar_size_medium:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 54
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    .line 55
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;->getSenderAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;->getSenderAccountId()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v1, v5}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v2

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v5, Lorg/telegram/messenger/R$string;->common_id:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v6

    check-cast v6, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;->getSenderAccountId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-interface {v2, v5, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransactionDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textCoinTicker:Lcom/iMe/ui/custom/TickerView;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getAmountWithSymbol(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "textUserFullName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 65
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textAmount:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "textAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method public final setupColors()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    .line 71
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatTextView;

    .line 72
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textUserFullName:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textAmount:Landroidx/appcompat/widget/AppCompatTextView;

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

    .line 72
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->textCoinTicker:Lcom/iMe/ui/custom/TickerView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/TickerView;->setupColors()V

    .line 75
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->viewDivider:Lcom/iMe/ui/custom/DividerView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/DividerView;->setupColors()V

    return-void
.end method

.method public final showDivider(Z)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/custom/donation/DonationTransactionView;->binding:Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkRecycleItemWalletDonationTransactionBinding;->viewDivider:Lcom/iMe/ui/custom/DividerView;

    const-string v1, "binding.viewDivider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
