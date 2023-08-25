.class public final Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;
.super Ljava/lang/Object;
.source "CryptoBoxParticipationResultResponse.kt"


# instance fields
.field private final expectedDurationSec:J

.field private final queued:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    .line 5
    iput-wide p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;ZJILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->copy(ZJ)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    return-wide v0
.end method

.method public final copy(ZJ)Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;-><init>(ZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExpectedDurationSec()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    return-wide v0
.end method

.method public final getQueued()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxParticipationResultResponse(queued="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->queued:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expectedDurationSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxParticipationResultResponse;->expectedDurationSec:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
