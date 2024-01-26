.class final Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateCryptoBoxPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->subscribeToCryptoBoxParamsSubject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/math/BigDecimal;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateCryptoBoxPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n*L\n1#1,788:1\n8#2,2:789\n15#2:791\n*S KotlinDebug\n*F\n+ 1 CreateCryptoBoxPresenter.kt\ncom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1\n*L\n313#1:789,2\n344#1:791\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lkotlin/Pair;)Lcom/iMe/storage/domain/model/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getCreationRules$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 313
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    const/4 v2, 0x3

    invoke-direct {p1, v1, v1, v2, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    sget-object v2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-static {v2, p1, v1, v0, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto/16 :goto_2

    .line 315
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedCapacity$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Integer;)I

    move-result v2

    .line 316
    iget-object v3, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedAmount$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    const-string/jumbo v6, "valueOf(this.toLong())"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    const-string/jumbo v3, "this.multiply(other)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    new-instance v7, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeePerUser()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    new-instance v3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeePerCryptobox()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    const-string/jumbo v5, "this.add(other)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v5, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v5}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    if-nez v5, :cond_2

    const-string v0, ""

    goto :goto_1

    .line 322
    :cond_2
    iget-object v6, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v6}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v6

    .line 323
    sget v7, Lorg/telegram/messenger/R$string;->cryptobox_create_cryptobox_information_amount:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 324
    sget-object v9, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {v9, v2, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    const/4 v5, 0x1

    .line 325
    iget-object v8, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;

    invoke-static {v8}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;->access$getSelectedTokenBalance$p(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 326
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    .line 325
    invoke-static {v8, v1, v2}, Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;->getInsertedTokenAmountInDollars(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;D)Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_3
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->orZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 322
    invoke-interface {v6, v7, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    :goto_1
    new-instance v1, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;

    .line 331
    sget-object v2, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    .line 333
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    .line 331
    invoke-virtual {v2, v4, v5}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object v4

    .line 336
    new-instance v5, Ljava/math/BigDecimal;

    .line 337
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeePerCryptobox()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 336
    invoke-virtual {v2, v5, v6}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxCreationRules;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    .line 340
    invoke-virtual {v2, v3, p1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-direct {v1, v4, v0, v5, p1}, Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 310
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxPresenter$subscribeToCryptoBoxParamsSubject$1;->invoke(Lkotlin/Pair;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
