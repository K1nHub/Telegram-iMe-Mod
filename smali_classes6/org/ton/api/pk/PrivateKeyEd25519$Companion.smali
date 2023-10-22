.class public final Lorg/ton/api/pk/PrivateKeyEd25519$Companion;
.super Ljava/lang/Object;
.source "ed25519.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pk/PrivateKeyEd25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/api/pk/PrivateKeyEd25519;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    invoke-direct {v0}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;-><init>()V

    sput-object v0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    iput-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/pk/PrivateKeyEd25519;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/pk/PrivateKeyEd25519;

    return-object p1
.end method

.method public decodeBoxed([B)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/pk/PrivateKeyEd25519;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 32
    check-cast p1, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->encodeToByteArray(Lorg/ton/api/pk/PrivateKeyEd25519;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/api/pk/PrivateKeyEd25519;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$delegate_0:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeToByteArray(Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public final of([B)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 3

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->decodeBoxed([B)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v1, "copyOf(this, size)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;-><init>([B)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final tlConstructor()Lorg/ton/tl/TlConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tl/TlConstructor<",
            "Lorg/ton/api/pk/PrivateKeyEd25519;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    return-object v0
.end method
