.class public final Lcom/iMe/mapper/cryptobox/CryptoBoxUiMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/cryptobox/CryptoBoxItem;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/model/cryptobox/CryptoBoxItem;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getId()J

    move-result-wide v6

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getChat()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxChat;->getName()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getRewardToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v9

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v1, v10, v11, v10}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getTitleResId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;->getColorResId()I

    move-result v12

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v12}, Lcom/iMe/model/cryptobox/CryptoBoxItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
