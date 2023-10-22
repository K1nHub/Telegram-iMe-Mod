.class public final Lorg/ton/api/pub/PublicKeyAes$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "pub.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pub/PublicKeyAes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/pub/PublicKeyAes;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "pub.aes key:int256 = PublicKey"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 81
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/pub/PublicKeyAes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/ton/api/pub/PublicKeyAes$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyAes;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyAes;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 89
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readByteString(I)Lorg/ton/tl/ByteString;

    move-result-object p1

    .line 90
    new-instance v0, Lorg/ton/api/pub/PublicKeyAes;

    invoke-direct {v0, p1}, Lorg/ton/api/pub/PublicKeyAes;-><init>(Lorg/ton/tl/ByteString;)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 81
    check-cast p2, Lorg/ton/api/pub/PublicKeyAes;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyAes$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyAes;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyAes;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lorg/ton/api/pub/PublicKeyAes;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeRaw(Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/pub/PublicKeyAes;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    return-object v0
.end method
