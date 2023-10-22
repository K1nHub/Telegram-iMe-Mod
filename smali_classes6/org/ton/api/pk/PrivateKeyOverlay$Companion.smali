.class public final Lorg/ton/api/pk/PrivateKeyOverlay$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "overlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pk/PrivateKeyOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/pk/PrivateKeyOverlay;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "pk.overlay name:bytes = PrivateKey"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 24
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/pk/PrivateKeyOverlay$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/api/pk/PrivateKeyOverlay$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyOverlay;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pk/PrivateKeyOverlay;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readByteString()Lorg/ton/tl/ByteString;

    move-result-object p1

    .line 33
    new-instance v0, Lorg/ton/api/pk/PrivateKeyOverlay;

    invoke-direct {v0, p1}, Lorg/ton/api/pk/PrivateKeyOverlay;-><init>(Lorg/ton/tl/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/api/pk/PrivateKeyOverlay;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pk/PrivateKeyOverlay$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyOverlay;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pk/PrivateKeyOverlay;)V
    .locals 7

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/ton/api/pk/PrivateKeyOverlay;->getName()Lorg/ton/tl/ByteString;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;Lorg/ton/tl/ByteString;IIILjava/lang/Object;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/pk/PrivateKeyOverlay;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/ton/api/pk/PrivateKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyOverlay$$serializer;

    return-object v0
.end method
