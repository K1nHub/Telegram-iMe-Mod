.class public final Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "BinanceTransactionItem.kt"


# instance fields
.field private final transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->copy(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    .line 44
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    :goto_0
    const/16 v2, 0x20

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getAmount()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v3

    invoke-static {v1, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getAsset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 45
    :cond_1
    instance-of v0, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInputAmount()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v4

    invoke-static {v1, v4}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;->getInputAssetShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOutputAmount()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v3

    invoke-static {v1, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    check-cast v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;->getOutputAssetShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getTransaction()Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    return-object v0
.end method

.method public final getTransactionIcon()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    .line 24
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/BinancePayExtKt;->icon(Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;)I

    move-result v0

    goto :goto_1

    .line 25
    :cond_1
    instance-of v0, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_binance_convert:I

    :goto_1
    return v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getTransactionStatus(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTransactionStatusColor()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/BinancePayExtKt;->color(Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTime()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 2

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    .line 29
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 30
    :cond_1
    instance-of v0, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->binance_convert_toolbar_title:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isIncomingPending()Z
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->PENDING:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;->IN:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnsupported()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->UNKNOWN:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceTransactionItem(transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->transaction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
