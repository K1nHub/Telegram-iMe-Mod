.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxInfoMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxInfoMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;->getId()J

    move-result-wide v1

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;->getName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;->getImage()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;
    .locals 16

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getChat()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxChatResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v3

    .line 15
    sget-object v4, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->Companion:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getNetwork()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v5

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getName()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getOwnerAddress()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getContractUrl()Ljava/lang/String;

    move-result-object v10

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getRewardToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v11

    invoke-static {v11}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getRewardValue()Ljava/math/BigDecimal;

    move-result-object v12

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getCapacity()I

    move-result v13

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getParticipants()I

    move-result v14

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxInfoResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v15

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v15}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;IILjava/lang/String;)V

    return-object v0
.end method
