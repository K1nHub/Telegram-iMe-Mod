.class public final Lcom/iMe/storage/data/mapper/crypto/BitcoinUnspentOutputMapperKt;
.super Ljava/lang/Object;
.source "BitcoinUnspentOutputMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;->getTxId()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;->getIndex()I

    move-result v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;->getAmount()Ljava/math/BigInteger;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v0
.end method
