.class public final Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;
.super Ljava/lang/Object;
.source "CryptoBoxParticipationResult.kt"


# instance fields
.field private final expectedDurationSeconds:J

.field private final isQueued:Z


# direct methods
.method public constructor <init>(ZJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    .line 5
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;ZJILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->copy(ZJ)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    return-wide v0
.end method

.method public final copy(ZJ)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;-><init>(ZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getExpectedDurationSeconds()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    invoke-static {v1, v2}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isQueued()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxParticipationResult(isQueued="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->isQueued:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expectedDurationSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxParticipationResult;->expectedDurationSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
