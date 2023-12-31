.class public final Lcom/iMe/mapper/crypto/FeeUiMappingKt;
.super Ljava/lang/Object;
.source "FeeUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFeeUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeeUiMapping.kt\ncom/iMe/mapper/crypto/FeeUiMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n1#2:14\n*E\n"
.end annotation


# direct methods
.method public static final mapToUiFees(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/TransactionParams;",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->LOW:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-direct {v3, v4, p1, v1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 11
    new-instance v3, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v2, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->FASTEST:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-direct {v2, v3, p1, p0}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    :cond_1
    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
