.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;
.super Ljava/lang/Object;
.source "LiteServerWaitMasterchainSeqno.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    iput-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 17
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqnoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeToByteArray(Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$$serializer;

    return-object v0
.end method
