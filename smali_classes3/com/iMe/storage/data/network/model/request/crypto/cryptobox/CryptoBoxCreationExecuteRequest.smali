.class public final Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;
.super Ljava/lang/Object;
.source "CryptoBoxCreationExecuteRequest.kt"


# instance fields
.field private final chatId:J

.field private final description:Ljava/lang/String;

.field private final signedTransactionBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signedTransactionBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    .line 5
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->copy(JLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;
    .locals 1

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signedTransactionBody"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;

    iget-wide v3, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChatId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    return-wide v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignedTransactionBody()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    invoke-static {v0, v1}, Lcom/iMe/bots/data/model/database/BotsDbModel$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoBoxCreationExecuteRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->chatId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signedTransactionBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/cryptobox/CryptoBoxCreationExecuteRequest;->signedTransactionBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
