.class public final Lcom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt;
.super Ljava/lang/Object;
.source "WalletInformationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletInformationMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletInformationMapping.kt\ncom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,13:1\n1549#2:14\n1620#2,3:15\n*S KotlinDebug\n*F\n+ 1 WalletInformationMapping.kt\ncom/smedialink/storage/data/mapper/crypto/WalletInformationMappingKt\n*L\n12#1:14\n12#1:15,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;)Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getMyEtherWalletAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getTonWalletAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getTronWalletAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v0

    .line 11
    :goto_2
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->isEtherWalletAddressOpened()Z

    move-result v6

    .line 12
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/CryptoWalletInfoResponse;->getUsersWithAccessToEtherWalletAddress()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Ljava/lang/String;

    .line 12
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1621
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7
    :cond_3
    new-instance p0, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p0
.end method
