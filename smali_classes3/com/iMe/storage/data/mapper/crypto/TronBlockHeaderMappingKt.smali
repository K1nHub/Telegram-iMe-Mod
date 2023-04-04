.class public final Lcom/iMe/storage/data/mapper/crypto/TronBlockHeaderMappingKt;
.super Ljava/lang/Object;
.source "TronBlockHeaderMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;)Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getNumber()J

    move-result-wide v2

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getTxTrieRoot()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getWitnessAddress()Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getParentHash()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getVersion()I

    move-result v7

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->getTimestamp()J

    move-result-wide v8

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method
