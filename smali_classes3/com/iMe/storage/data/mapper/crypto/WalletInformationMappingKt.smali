.class public final Lcom/iMe/storage/data/mapper/crypto/WalletInformationMappingKt;
.super Ljava/lang/Object;
.source "WalletInformationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletInformationMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletInformationMapping.kt\ncom/iMe/storage/data/mapper/crypto/WalletInformationMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,14:1\n1179#2,2:15\n1253#2,4:17\n1603#2,9:21\n1855#2:30\n1856#2:32\n1612#2:33\n1#3:31\n*S KotlinDebug\n*F\n+ 1 WalletInformationMapping.kt\ncom/iMe/storage/data/mapper/crypto/WalletInformationMappingKt\n*L\n9#1:15,2\n9#1:17,4\n13#1:21,9\n13#1:30\n13#1:32\n13#1:33\n13#1:31\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;)Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;->getWallets()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 1180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1254
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/RemoteWalletInfoResponse;

    .line 10
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/RemoteWalletInfoResponse;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->mapByBackendName(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/RemoteWalletInfoResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 1254
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;->isVisible()Z

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;->getAllowedUsers()Ljava/util/List;

    move-result-object p0

    .line 1603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1611
    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1611
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;

    invoke-direct {p0, v2, v0, v1}, Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    return-object p0
.end method
