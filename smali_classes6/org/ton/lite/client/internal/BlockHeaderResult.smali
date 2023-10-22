.class public final Lorg/ton/lite/client/internal/BlockHeaderResult;
.super Ljava/lang/Object;
.source "BlockHeaderResult.kt"


# instance fields
.field private final lt:J

.field private final stateHash:Lorg/ton/bitstring/BitString;

.field private final time:I


# direct methods
.method public constructor <init>(IJLorg/ton/bitstring/BitString;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->time:I

    .line 16
    iput-wide p2, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->lt:J

    .line 17
    iput-object p4, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/lite/client/internal/BlockHeaderResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/lite/client/internal/BlockHeaderResult;

    iget v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->time:I

    iget v3, p1, Lorg/ton/lite/client/internal/BlockHeaderResult;->time:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->lt:J

    iget-wide v5, p1, Lorg/ton/lite/client/internal/BlockHeaderResult;->lt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getStateHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->time:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->lt:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockHeaderResult(time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->lt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stateHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/lite/client/internal/BlockHeaderResult;->stateHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
