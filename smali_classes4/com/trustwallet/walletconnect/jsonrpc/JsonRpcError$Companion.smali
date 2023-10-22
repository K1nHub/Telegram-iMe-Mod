.class public final Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;
.super Ljava/lang/Object;
.source "JsonRpcError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final invalidParams(Ljava/lang/String;)Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;
    .locals 2

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    const/16 v1, -0x7f5a

    invoke-direct {v0, v1, p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public final serverError(Ljava/lang/String;)Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;
    .locals 2

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;

    const/16 v1, -0x7d00

    invoke-direct {v0, v1, p1}, Lcom/trustwallet/walletconnect/jsonrpc/JsonRpcError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
