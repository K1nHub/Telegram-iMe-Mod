.class public final Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt;
.super Ljava/lang/Object;
.source "TransactionExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionExt.kt\ncom/iMe/utils/extentions/model/wallet/TransactionExtKt\n+ 2 AnyExt.kt\ncom/iMe/utils/extentions/common/AnyExtKt\n*L\n1#1,65:1\n10#2,2:66\n10#2,2:68\n*S KotlinDebug\n*F\n+ 1 TransactionExt.kt\ncom/iMe/utils/extentions/model/wallet/TransactionExtKt\n*L\n38#1:66,2\n60#1:68,2\n*E\n"
.end annotation


# direct methods
.method public static final getCategoryTitle(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v1, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->getTitle()I

    move-result p0

    goto :goto_2

    .line 48
    :cond_2
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v0, :cond_3

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_referral_title:I

    goto :goto_2

    .line 49
    :cond_3
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    if-eqz v0, :cond_4

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_lottery_title:I

    goto :goto_2

    .line 50
    :cond_4
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    if-eqz v0, :cond_5

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_welcome_title:I

    goto :goto_2

    .line 51
    :cond_5
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;

    if-eqz v0, :cond_6

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_in_app_purchase_title:I

    goto :goto_2

    .line 52
    :cond_6
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_7

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_title:I

    goto :goto_2

    .line 53
    :cond_7
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object p0

    sget-object v0, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 60
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_uniswap_title:I

    goto :goto_2

    .line 58
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_1inch_fusion_title:I

    goto :goto_2

    .line 57
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_1inch_title:I

    goto :goto_2

    .line 56
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_symbiosis_title:I

    goto :goto_2

    .line 55
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_pancakeswap_title:I

    goto :goto_2

    .line 54
    :pswitch_4
    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_uniswap_title:I

    goto :goto_2

    .line 63
    :cond_8
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    if-eqz v0, :cond_9

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_refund_title:I

    goto :goto_2

    .line 64
    :cond_9
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->getTitle()I

    move-result p0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getFormattedAmount(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getIcon(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->CANCELLED:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v0, v1, :cond_0

    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_cancelled:I

    return p0

    .line 20
    :cond_0
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sget-object v2, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/utils/extentions/model/wallet/TransactionDirectionExtKt;->icon(Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;)I

    move-result p0

    goto/16 :goto_5

    .line 22
    :cond_1
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_donate_out:I

    goto/16 :goto_5

    .line 21
    :cond_2
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_donate_in:I

    goto/16 :goto_5

    .line 26
    :cond_3
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    :goto_0
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    :goto_1
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/utils/extentions/model/wallet/TransactionDirectionExtKt;->icon(Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;)I

    move-result p0

    goto :goto_5

    .line 27
    :cond_7
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_3

    :cond_8
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    instance-of v1, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    :goto_4
    if-eqz v1, :cond_a

    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_bonus:I

    goto :goto_5

    .line 28
    :cond_a
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;

    if-eqz v0, :cond_b

    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_purchase:I

    goto :goto_5

    .line 29
    :cond_b
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    if-eqz v0, :cond_c

    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_simplex:I

    goto :goto_5

    .line 30
    :cond_c
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    if-eqz v0, :cond_d

    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_approve:I

    goto :goto_5

    .line 31
    :cond_d
    instance-of v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object p0

    sget-object v0, Lcom/iMe/utils/extentions/model/wallet/TransactionExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 38
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_uniswap:I

    goto :goto_5

    .line 36
    :pswitch_0
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_1_inch:I

    goto :goto_5

    .line 34
    :pswitch_1
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_symbiosis:I

    goto :goto_5

    .line 33
    :pswitch_2
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_pancakeswap:I

    goto :goto_5

    .line 32
    :pswitch_3
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_transaction_uniswap:I

    goto :goto_5

    .line 41
    :cond_e
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/utils/extentions/model/wallet/TransactionDirectionExtKt;->icon(Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;)I

    move-result p0

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
