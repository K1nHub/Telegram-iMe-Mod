.class public final Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;
.super Ljava/lang/Object;
.source "JsonRpcRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final id:J

.field private final jsonrpc:Ljava/lang/String;

.field private final method:Lcom/trustwallet/walletconnect/models/WCMethod;

.field private final params:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/trustwallet/walletconnect/models/WCMethod;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/trustwallet/walletconnect/models/WCMethod;",
            "TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "jsonrpc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    .line 8
    iput-object p3, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    .line 10
    iput-object p5, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lcom/trustwallet/walletconnect/models/WCMethod;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    const-string p3, "2.0"

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p4

    move-object v5, p5

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;-><init>(JLjava/lang/String;Lcom/trustwallet/walletconnect/models/WCMethod;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;

    iget-wide v3, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    iget-wide v5, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    return-wide v0
.end method

.method public final getMethod()Lcom/trustwallet/walletconnect/models/WCMethod;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    return-object v0
.end method

.method public final getParams()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonRpcRequest(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jsonrpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->method:Lcom/trustwallet/walletconnect/models/WCMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcRequest;->params:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
