.class public final Lcom/iMe/storage/data/mapper/crypto/NetworksMappingKt;
.super Ljava/lang/Object;
.source "NetworksMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworksMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworksMapping.kt\ncom/iMe/storage/data/mapper/crypto/NetworksMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,34:1\n1549#2:35\n1620#2,3:36\n*S KotlinDebug\n*F\n+ 1 NetworksMapping.kt\ncom/iMe/storage/data/mapper/crypto/NetworksMappingKt\n*L\n8#1:35\n8#1:36,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->mapByBackendName(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getName()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getShortName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getColor()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getExplorer()Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse;->getName()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse;->getLogo()Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse;->getPathTemplate()Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse$PathTemplateResponse;

    move-result-object v0

    .line 23
    new-instance v9, Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;

    .line 24
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse$PathTemplateResponse;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse$PathTemplateResponse;->getToken()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse$ExplorerResponse$PathTemplateResponse;->getTx()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-direct {v9, v10, v11, v0}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer$PathTemplate;)V

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getChainId()Ljava/lang/Long;

    move-result-object v8

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getLogo()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;->getLogoSmall()Ljava/lang/String;

    move-result-object v10

    .line 11
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/Network;

    move-object v1, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v10}, Lcom/iMe/storage/domain/model/crypto/Network;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworksListResponse;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworksListResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworksListResponse;->getNetworks()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;

    .line 8
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/NetworksMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/NetworkResponse;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
