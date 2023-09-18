.class public final Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;
.super Ljava/lang/Object;
.source "TronBlockHeaderResponse.kt"


# instance fields
.field private final number:J

.field private final parentHash:Ljava/lang/String;

.field private final timestamp:J

.field private final txTrieRoot:Ljava/lang/String;

.field private final version:I

.field private final witnessAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "txTrieRoot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "witnessAddress"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentHash"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    .line 5
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    .line 9
    iput-wide p7, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    goto :goto_4

    :cond_4
    move v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-wide v7, v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move p6, v6

    move-wide/from16 p7, v7

    invoke-virtual/range {p0 .. p8}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    return v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    return-wide v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;
    .locals 10

    const-string v0, "txTrieRoot"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "witnessAddress"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentHash"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    move-object v1, v0

    move-wide v2, p1

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getNumber()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    return-wide v0
.end method

.method public final getParentHash()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    return-wide v0
.end method

.method public final getTxTrieRoot()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    return v0
.end method

.method public final getWitnessAddress()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TronBlockHeaderResponse(number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->number:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", txTrieRoot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->txTrieRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", witnessAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->witnessAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parentHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->parentHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
