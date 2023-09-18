.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;
.super Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.source "TransactionParamsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TRON"
.end annotation


# instance fields
.field private final blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

.field private final contractAddress:Ljava/lang/String;

.field private final feeLimit:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;Ljava/lang/String;)V
    .locals 1

    const-string v0, "feeLimit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    .line 17
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    .line 18
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Ljava/math/BigInteger;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->copy(Ljava/math/BigInteger;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/math/BigInteger;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;
    .locals 1

    const-string v0, "feeLimit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;-><init>(Ljava/math/BigInteger;Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBlockHeader()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    return-object v0
.end method

.method public final getContractAddress()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeeLimit()Ljava/math/BigInteger;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRON(feeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->feeLimit:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blockHeader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->blockHeader:Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contractAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->contractAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
