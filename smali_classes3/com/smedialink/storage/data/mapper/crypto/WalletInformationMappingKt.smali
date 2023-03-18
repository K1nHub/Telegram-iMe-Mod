.class public final Lcom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt;
.super Ljava/lang/Object;
.source "WalletInformationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletInformationMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletInformationMapping.kt\ncom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,12:1\n1549#2:13\n1620#2,3:14\n*S KotlinDebug\n*F\n+ 1 WalletInformationMapping.kt\ncom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt\n*L\n11#1:13\n11#1:14,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;)Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getMyEtherWalletAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getTonWalletAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 10
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened()Z

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getUsersWithAccessToEtherWalletAddress()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1621
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p0
.end method
