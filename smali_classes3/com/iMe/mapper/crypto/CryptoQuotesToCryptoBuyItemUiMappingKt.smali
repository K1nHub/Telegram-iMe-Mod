.class public final Lcom/iMe/mapper/crypto/CryptoQuotesToCryptoBuyItemUiMappingKt;
.super Ljava/lang/Object;
.source "CryptoQuotesToCryptoBuyItemUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoQuotesToCryptoBuyItemUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoQuotesToCryptoBuyItemUiMapping.kt\ncom/iMe/mapper/crypto/CryptoQuotesToCryptoBuyItemUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,10:1\n1549#2:11\n1620#2,3:12\n*S KotlinDebug\n*F\n+ 1 CryptoQuotesToCryptoBuyItemUiMapping.kt\ncom/iMe/mapper/crypto/CryptoQuotesToCryptoBuyItemUiMappingKt\n*L\n9#1:11\n9#1:12,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToUI(Ljava/util/List;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    .line 9
    new-instance v2, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    sget-object v3, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->Companion:Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;->getProductByPrice(F)Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    move-result-object v3

    invoke-direct {v2, p1, v3, v1}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
