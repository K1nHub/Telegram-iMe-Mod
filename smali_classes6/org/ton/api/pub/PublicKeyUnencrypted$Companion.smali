.class public final Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "pub.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pub/PublicKeyUnencrypted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/pub/PublicKeyUnencrypted;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "pub.unenc data:bytes = PublicKey"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 56
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyUnencrypted;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/pub/PublicKeyUnencrypted;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object p1

    .line 65
    new-instance v0, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-direct {v0, p1}, Lorg/ton/api/pub/PublicKeyUnencrypted;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p2, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyUnencrypted;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/pub/PublicKeyUnencrypted;)V
    .locals 7

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Lorg/ton/api/pub/PublicKeyUnencrypted;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/pub/PublicKeyUnencrypted;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    return-object v0
.end method
