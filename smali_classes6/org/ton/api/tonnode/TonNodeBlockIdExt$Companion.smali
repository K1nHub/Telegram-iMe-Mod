.class public final Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;
.super Ljava/lang/Object;
.source "TonNodeBlockIdExt.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/tonnode/TonNodeBlockIdExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonNodeBlockIdExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonNodeBlockIdExt.kt\norg/ton/api/tonnode/TonNodeBlockIdExt$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,123:1\n1#2:124\n151#3,6:125\n*S KotlinDebug\n*F\n+ 1 TonNodeBlockIdExt.kt\norg/ton/api/tonnode/TonNodeBlockIdExt$Companion\n*L\n85#1:125,6\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    iput-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeBlockIdExt;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p2, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeBlockIdExt;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 81
    check-cast p1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->encodeToByteArray(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;->$$delegate_0:Lorg/ton/api/tonnode/TonNodeBlockIdExtTlConstructor;

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
            "Lorg/ton/api/tonnode/TonNodeBlockIdExt;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    return-object v0
.end method
