.class public final Lcom/smedialink/model/wallet/transaction/TransactionItem;
.super Lcom/smedialink/model/common/NoChildNode;
.source "TransactionItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/transaction/TransactionItem$WhenMappings;
    }
.end annotation


# instance fields
.field private final transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/smedialink/model/common/NoChildNode;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/transaction/TransactionItem;Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;ILjava/lang/Object;)Lcom/smedialink/model/wallet/transaction/TransactionItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->copy(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAmountWithSymbol$default(Lcom/smedialink/model/wallet/transaction/TransactionItem;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getAmountWithSymbol(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/model/wallet/transaction/TransactionItem;
    .locals 1

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    invoke-direct {v0, p1}, Lcom/smedialink/model/wallet/transaction/TransactionItem;-><init>(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;

    iget-object v1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    iget-object p1, p1, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAmount(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 10

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 40
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    if-eqz v1, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->wallet_unsupported_transaction_message:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 41
    :cond_0
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_transactions_type_approve_title:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-interface {p1, v1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 42
    :cond_1
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    .line 44
    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getSpentFiatCode()Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v7, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    .line 47
    sget v7, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_amount_value:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 48
    iget-object v8, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;->getSpentAmount()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->getDecimals()I

    move-result v9

    invoke-static {v8, v9}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 49
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;->getShortName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 50
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v2

    invoke-static {v0, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 51
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 46
    invoke-interface {p1, v7, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 54
    :cond_2
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v1, :cond_3

    .line 55
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getInputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    .line 56
    iget-object v7, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v7, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getOutputTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    .line 58
    sget v7, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_amount_value:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 59
    iget-object v8, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v8, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v8}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getInputAmount()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v9

    invoke-static {v8, v9}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 60
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 61
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;->getOutputAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v2

    invoke-static {v0, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 62
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 57
    invoke-interface {p1, v7, v6}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/smedialink/model/wallet/transaction/TransactionItem;->getAmountWithSymbol(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v2, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getAmountWithSymbol(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->getSymbol()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt;->getFormattedAmount(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {p1}, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt;->getFormattedAmount(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 76
    instance-of v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v1, Lcom/smedialink/model/wallet/transaction/TransactionItem$WhenMappings;->$EnumSwitchMapping$0:[I

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

    .line 79
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    check-cast v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public final getTransaction()Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    return-object v0
.end method

.method public final getTransactionDate()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionIcon()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt;->getIcon(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)I

    move-result v0

    return v0
.end method

.method public final getTransactionStatus(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/base/Status;->getTitle()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTransactionStatusColor()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/StatusExtKt;->color(Lcom/smedialink/storage/data/network/model/response/base/Status;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTime()Ljava/lang/String;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_TIME:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTransactionTitle(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/model/wallet/TransactionExtKt;->getCategoryTitle(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isUnsupported()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    instance-of v0, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionItem(transaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/transaction/TransactionItem;->transaction:Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
