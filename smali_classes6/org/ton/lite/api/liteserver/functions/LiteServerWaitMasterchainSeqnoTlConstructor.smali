.class final Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerWaitMasterchainSeqno.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.waitMasterchainSeqno seqno:int timeout_ms:int = Object"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 20
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 25
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 26
    new-instance v1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-direct {v1, v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->getSeqno()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 31
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->getTimeoutMs()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    return-void
.end method
