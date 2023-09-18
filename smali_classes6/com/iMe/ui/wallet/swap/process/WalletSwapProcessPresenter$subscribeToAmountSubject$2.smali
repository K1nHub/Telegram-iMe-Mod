.class final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->subscribeToAmountSubject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "amountText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1148
    invoke-static {p1}, Lkotlin/text/StringsKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    .line 1149
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amountNumber.toBigDecimal().toPlainString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setAmount$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 1150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    sget-object v2, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    .line 1152
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getTokenBalance$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v5

    mul-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 1153
    sget-object v5, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1151
    invoke-virtual {v2, v3, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 1150
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1157
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getInputTokenApprovalData(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData;

    move-result-object v2

    instance-of v2, v2, Lcom/iMe/storage/domain/model/crypto/swap/TokenApproveData$Allowed;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getState$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/model/wallet/crypto/swap/SwapUiState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;->isApproving()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;D)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1159
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    .line 1160
    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_insufficient_funds:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1159
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setInputError(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    goto :goto_1

    .line 1166
    :cond_1
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getInputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    const/4 v6, 0x3

    if-nez v2, :cond_3

    .line 1167
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    :cond_2
    :goto_1
    move v3, v5

    goto/16 :goto_4

    .line 1171
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1172
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setInputFiatText(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 1173
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 1177
    :cond_4
    iget-object v2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v2, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$isAvailableBalanceLessThanAmount(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;D)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1178
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    .line 1179
    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->wallet_swap_process_insufficient_funds:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1178
    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setInputError(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 1181
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_1

    .line 1185
    :cond_5
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getOutputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getInputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getOutputToken$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 1191
    :cond_6
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getTokensApprovalData$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1, v4, v3, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->getNetworkIdBySwapSide$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-ne v0, v3, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v5

    :goto_2
    if-eqz v0, :cond_8

    .line 1192
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 1193
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 v0, 0x2

    invoke-static {p1, v5, v4, v0, v4}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadApproveTokensInfo$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;ZLcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1198
    :cond_8
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setInputFiatText(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto :goto_4

    .line 1186
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setInputFiatText(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 1187
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-direct {v0, v5, v4, v6, v4}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$renderState(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    goto/16 :goto_1

    .line 1200
    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1147
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$subscribeToAmountSubject$2;->invoke(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
