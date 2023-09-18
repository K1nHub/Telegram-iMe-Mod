.class public final Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;
.super Ljava/lang/Exception;
.source "InvalidJsonRpcParamsException.kt"


# instance fields
.field private final requestId:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string v0, "Invalid JSON RPC Request"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;->requestId:J

    return-void
.end method


# virtual methods
.method public final getRequestId()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/trustwallet/walletconnect/exceptions/InvalidJsonRpcParamsException;->requestId:J

    return-wide v0
.end method
