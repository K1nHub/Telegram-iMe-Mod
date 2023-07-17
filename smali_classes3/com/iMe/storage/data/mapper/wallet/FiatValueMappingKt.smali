.class public final Lcom/iMe/storage/data/mapper/wallet/FiatValueMappingKt;
.super Ljava/lang/Object;
.source "FiatValueMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->getValue()D

    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->getSymbol()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->getTicker()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
