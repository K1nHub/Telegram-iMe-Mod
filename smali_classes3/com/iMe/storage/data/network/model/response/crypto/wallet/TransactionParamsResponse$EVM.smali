.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
.super Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.source "TransactionParamsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EVM"
.end annotation


# instance fields
.field private final chainId:J

.field private final fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

.field private final fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

.field private final nonce:Ljava/math/BigInteger;

.field private final safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;J)V
    .locals 1

    const-string v0, "fast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    .line 9
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    .line 11
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    .line 12
    iput-wide p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;JILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    :cond_4
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;J)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final component4()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    return-wide v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;J)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;
    .locals 8

    const-string v0, "fast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonce"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;-><init>(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;Ljava/math/BigInteger;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getChainId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    return-wide v0
.end method

.method public final getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public final getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getSafeLow()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVM(fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fastest:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->fast:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safeLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->safeLow:Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->nonce:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chainId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->chainId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
