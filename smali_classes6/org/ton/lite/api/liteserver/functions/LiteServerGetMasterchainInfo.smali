.class public final Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;
.super Ljava/lang/Object;
.source "LiteServerGetMasterchainInfo.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final synthetic $cachedSerializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    .line 8
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo$1;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo$1;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    iput-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 8
    sget-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$cachedSerializer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 8
    check-cast p1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->$$delegate_0:Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfoTlConstructor;

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
            "Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/functions/LiteServerGetMasterchainInfo;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
