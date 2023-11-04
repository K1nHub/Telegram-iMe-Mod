.class public final Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;
.super Ljava/lang/Object;
.source "JsonRpcResponse.kt"


# instance fields
.field private final error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

.field private final id:J

.field private final jsonrpc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;)V
    .locals 1

    const-string/jumbo v0, "jsonrpc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->jsonrpc:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->id:J

    .line 14
    iput-object p4, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    const-string p1, "2.0"

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;-><init>(Ljava/lang/String;JLcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->jsonrpc:Ljava/lang/String;

    iget-object v3, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->jsonrpc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->id:J

    iget-wide v5, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->jsonrpc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->id:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonRpcErrorResponse(jsonrpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->jsonrpc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcErrorResponse;->error:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
