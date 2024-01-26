.class public final Lorg/ton/api/adnl/AdnlIdShort$Companion;
.super Ljava/lang/Object;
.source "AdnlIdShort.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlIdShort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "Lorg/ton/api/adnl/AdnlIdShort;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/api/adnl/AdnlIdShort$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/adnl/AdnlIdShort$Companion;

    invoke-direct {v0}, Lorg/ton/api/adnl/AdnlIdShort$Companion;-><init>()V

    sput-object v0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$INSTANCE:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->INSTANCE:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    iput-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/adnl/AdnlIdShort;

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/adnl/AdnlIdShort;

    return-object p1
.end method

.method public bridge synthetic encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Lorg/ton/api/adnl/AdnlIdShort;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/api/adnl/AdnlIdShort;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0

    .line 20
    check-cast p1, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->encodeToByteArray(Lorg/ton/api/adnl/AdnlIdShort;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public encodeToByteArray(Lorg/ton/api/adnl/AdnlIdShort;Z)[B
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$delegate_0:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tl/TlConstructor;->encodeToByteArray(Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public final of([B)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortImpl;

    invoke-direct {v0, p1}, Lorg/ton/api/adnl/AdnlIdShortImpl;-><init>([B)V

    return-object v0
.end method
