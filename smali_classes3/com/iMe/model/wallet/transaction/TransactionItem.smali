.class public final Lcom/iMe/model/wallet/transaction/TransactionItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "TransactionItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/transaction/TransactionItem$WhenMappings;
    }
.end annotation


# instance fields
.field private final transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/transaction/TransactionItem;Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;ILjava/lang/Object;)Lcom/iMe/model/wallet/transaction/TransactionItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->copy(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAmountWithSymbol$default(Lcom/iMe/model/wallet/transaction/TransactionItem;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getAmountWithSymbol(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/model/wallet/transaction/TransactionItem;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/transaction/TransactionItem;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;-><init>(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    iget-object p1, p1, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAmount(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 9

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 50
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    if-eqz v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->wallet_unsupported_transaction_message:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 51
    :cond_0
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_transactions_type_approve_title:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 52
    :cond_1
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    .line 53
    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getSpentFiatCode()Lcom/iMe/storage/domain/model/wallet/token/FiatCode;

    move-result-object v0

    .line 55
    sget v1, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_amount_value:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 56
    iget-object v7, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v7, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getSpentAmount()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;->getDecimals()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 57
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;->getShortName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 58
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 59
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 54
    invoke-interface {p1, v1, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 63
    :cond_2
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_3

    .line 65
    sget v1, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_amount_value:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 66
    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getInputAmount()Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v7, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v7, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 67
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getInputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 68
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getOutputAmount()Ljava/math/BigDecimal;

    move-result-object v0

    iget-object v2, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 69
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getOutputToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 64
    invoke-interface {p1, v1, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getAmountWithSymbol(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAmountWithSymbol(Z)Ljava/lang/String;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    if-eqz p1, :cond_0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt;->getFormattedAmount(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt;->getFormattedAmount(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 84
    instance-of v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionItem$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    return-object v0
.end method

.method public final getTransactionDate()Ljava/lang/String;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionIcon()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt;->getIcon(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)I

    move-result v0

    return v0
.end method

.method public final getTransactionStatus(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/base/Status;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTransactionStatusColorKey()I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v1, Lcom/iMe/model/wallet/transaction/TransactionItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 43
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 42
    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    goto :goto_0

    .line 41
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_red:I

    goto :goto_0

    .line 40
    :cond_3
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    :goto_0
    return v0
.end method

.method public final getTransactionTime()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTitle(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v0}, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt;->getCategoryTitle(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUnsupported()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    instance-of v0, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionItem(transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/transaction/TransactionItem;->transaction:Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
