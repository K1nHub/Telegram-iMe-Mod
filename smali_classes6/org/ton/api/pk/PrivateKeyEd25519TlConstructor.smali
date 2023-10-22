.class final Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "ed25519.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/pk/PrivateKeyEd25519;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    invoke-direct {v0}, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "pk.ed25519 key:int256 = PrivateKey"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 75
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyEd25519;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readByteString(I)Lorg/ton/tl/ByteString;

    move-result-object p1

    .line 84
    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;

    invoke-direct {v0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;-><init>(Lorg/ton/tl/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyEd25519TlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyEd25519;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p2}, Lorg/ton/api/pk/PrivateKeyEd25519;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeRaw(Lorg/ton/tl/ByteString;)V

    return-void
.end method
