.class public final Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;
.super Ljava/lang/Object;
.source "JsonRpcError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->Companion:Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->code:I

    .line 5
    iput-object p2, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    iget v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->code:I

    iget v3, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonRpcError(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
