.class public final Lorg/ton/api/pub/PublicKeyEd25519$Companion;
.super Ljava/lang/Object;
.source "ed25519.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pub/PublicKeyEd25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/api/pub/PublicKeyEd25519;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    iput-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/pub/PublicKeyEd25519;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/pub/PublicKeyEd25519;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pub/PublicKeyEd25519;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyEd25519;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyEd25519;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pub/PublicKeyEd25519;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyEd25519;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 33
    check-cast p1, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->encodeToByteArray(Lorg/ton/api/pub/PublicKeyEd25519;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/api/pub/PublicKeyEd25519;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeToByteArray(Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public hash(Lorg/ton/api/pub/PublicKeyEd25519;)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->hash(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public final of(Lorg/ton/api/pk/PrivateKeyEd25519;)Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-interface {p1}, Lorg/ton/api/pk/PrivateKeyEd25519;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/ton/crypto/Ed25519;->publicKey([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/api/pub/PublicKeyEd25519;-><init>([B)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/pub/PublicKeyEd25519;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519$$serializer;

    return-object v0
.end method

.method public final tlConstructor()Lorg/ton/tl/TlConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tl/TlConstructor<",
            "Lorg/ton/api/pub/PublicKeyEd25519;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519TlConstructor;

    return-object v0
.end method
