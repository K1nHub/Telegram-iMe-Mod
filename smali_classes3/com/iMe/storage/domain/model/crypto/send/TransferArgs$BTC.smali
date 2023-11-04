.class public final Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;
.super Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.source "TransferArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BTC"
.end annotation


# instance fields
.field private final amount:D

.field private final byteFee:Ljava/math/BigInteger;

.field private final changeAddress:Ljava/lang/String;

.field private final decimals:I

.field private final recipientAddress:Ljava/lang/String;

.field private final utxos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    const-string v0, "recipientAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utxos"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteFee"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs;-><init>(DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    iput-wide p1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->amount:D

    .line 46
    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->decimals:I

    .line 47
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    .line 49
    iput-object p6, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    goto :goto_5

    :cond_5
    move-object v7, p7

    :goto_5
    move-wide p1, v1

    move p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->copy(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method protected final component2()I
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v0

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final copy(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/math/BigInteger;",
            ")",
            "Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;"
        }
    .end annotation

    const-string v0, "recipientAddress"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utxos"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "changeAddress"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteFee"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    move-object v1, v0

    move-wide v2, p1

    move v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;-><init>(DILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getAmount()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->amount:D

    return-wide v0
.end method

.method public final getByteFee()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getDecimals()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->decimals:I

    return v0
.end method

.method public final getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getUtxos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BTC(amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getAmount()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", decimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->getDecimals()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", recipientAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->recipientAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", utxos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->utxos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->changeAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", byteFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$BTC;->byteFee:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
