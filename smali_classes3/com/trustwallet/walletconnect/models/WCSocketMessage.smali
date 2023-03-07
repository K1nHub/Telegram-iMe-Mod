.class public final Lcom/trustwallet/walletconnect/models/WCSocketMessage;
.super Ljava/lang/Object;
.source "WCSocketMessage.kt"


# instance fields
.field private final payload:Ljava/lang/String;

.field private final topic:Ljava/lang/String;

.field private final type:Lcom/trustwallet/walletconnect/models/MessageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/trustwallet/walletconnect/models/MessageType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->topic:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->type:Lcom/trustwallet/walletconnect/models/MessageType;

    .line 6
    iput-object p3, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->topic:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->topic:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->type:Lcom/trustwallet/walletconnect/models/MessageType;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->type:Lcom/trustwallet/walletconnect/models/MessageType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->type:Lcom/trustwallet/walletconnect/models/MessageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WCSocketMessage(topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->type:Lcom/trustwallet/walletconnect/models/MessageType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/models/WCSocketMessage;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
