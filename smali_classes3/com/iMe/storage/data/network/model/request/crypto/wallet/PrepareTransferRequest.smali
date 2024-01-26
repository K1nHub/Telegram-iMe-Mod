.class public final Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;
.super Ljava/lang/Object;
.source "PrepareTransferRequest.kt"


# instance fields
.field private final to:Ljava/lang/String;

.field private final token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->copy(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;-><init>(Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrepareTransferRequest(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->token:Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/request/crypto/wallet/PrepareTransferRequest;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
