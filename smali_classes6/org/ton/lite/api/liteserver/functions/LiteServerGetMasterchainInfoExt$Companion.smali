.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;
.super Ljava/lang/Object;
.source "LiteServerGetMasterchainInfoExt.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    iput-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 13
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$Companion;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExtTlConstructor;

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
            "Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoExt$$serializer;

    return-object v0
.end method
