.class public final Lcom/iMe/storage/data/mapper/fragment/PremiumBuyTransactionParamsMappingKt;
.super Ljava/lang/Object;
.source "PremiumBuyTransactionParamsMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyTransactionParamsResponse;)Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyTransactionParamsResponse;->getPayment()Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyPaymentDataResponse;

    move-result-object v0

    .line 8
    new-instance v7, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyTransactionParamsResponse;->getValidUntil()I

    move-result v2

    .line 10
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyPaymentDataResponse;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyPaymentDataResponse;->getPayload()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyPaymentDataResponse;->getAmount()Ljava/math/BigInteger;

    move-result-object v5

    .line 13
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumBuyPaymentDataResponse;->getSeqno()I

    move-result v6

    move-object v1, v7

    .line 8
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumBuyTransactionParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;I)V

    return-object v7
.end method
