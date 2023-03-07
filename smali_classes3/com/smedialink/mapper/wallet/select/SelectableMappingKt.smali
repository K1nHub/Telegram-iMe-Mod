.class public final Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;
.super Ljava/lang/Object;
.source "SelectableMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectableMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectableMapping.kt\ncom/smedialink/mapper/wallet/select/SelectableMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1547#2:62\n1618#2,3:63\n1547#2:66\n1618#2,3:67\n1547#2:70\n1618#2,3:71\n*S KotlinDebug\n*F\n+ 1 SelectableMapping.kt\ncom/smedialink/mapper/wallet/select/SelectableMappingKt\n*L\n16#1:62\n16#1:63,3\n19#1:66\n19#1:67,3\n24#1:70\n24#1:71,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object p0

    .line 35
    new-instance v3, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v3}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object p0

    return-object p0
.end method

.method public static final mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAsset()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAssetName()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;->getAssetLogoUrl()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;

    .line 46
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getFullName()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {p0, p2}, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I

    move-result p0

    .line 45
    invoke-direct {v0, v1, v2, p1, p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/wallet/select/SelectableTokenBalance;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableTokenBalance;

    .line 59
    invoke-static {p0}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getTotalBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-direct {v0, v1, p0}, Lcom/smedialink/model/wallet/select/SelectableTokenBalance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/wallet/select/SelectableTokenBalance;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableTokenBalance;

    .line 54
    invoke-static {p0}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getTotalBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {p0, p1}, Lcom/smedialink/utils/extentions/model/wallet/TokenBalanceExtKt;->getDollarsBalanceText(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-direct {v0, v1, p0}, Lcom/smedialink/model/wallet/select/SelectableTokenBalance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToSelectable(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 16
    invoke-static {v1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToSelectable(Ljava/util/List;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;",
            ">;",
            "Lcom/smedialink/storage/domain/utils/system/ResourceManager;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    .line 24
    invoke-static {v1, p1, p2}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/model/wallet/select/SelectableToken$WithResLogo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToSelectableBinanceTokenBalanceInfo(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 19
    invoke-static {v1}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
