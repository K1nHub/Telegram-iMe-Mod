.class public final Lcom/iMe/mapper/wallet/NetworkUiMappingKt;
.super Ljava/lang/Object;
.source "NetworkUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNetworkUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkUiMapping.kt\ncom/iMe/mapper/wallet/NetworkUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,23:1\n1549#2:24\n1620#2,3:25\n*S KotlinDebug\n*F\n+ 1 NetworkUiMapping.kt\ncom/iMe/mapper/wallet/NetworkUiMappingKt\n*L\n8#1:24\n8#1:25,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p0

    return-object p0
.end method

.method public static final mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getFullName()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getShortName()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getColorHex()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getLogoUrl()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getSmallLogoUrl()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v8

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToUI(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 8
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
