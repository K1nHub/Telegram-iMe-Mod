.class public final Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "TonNodeZeroStateIdExt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "tonNode.zeroStateIdExt workchain:int root_hash:int256 file_hash:int256 = tonNode.ZeroStateIdExt"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 33
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    const/16 v1, 0x20

    .line 38
    invoke-virtual {p1, v1}, Lorg/ton/tl/TlReader;->readByteString(I)Lorg/ton/tl/ByteString;

    move-result-object v2

    .line 39
    invoke-virtual {p1, v1}, Lorg/ton/tl/TlReader;->readByteString(I)Lorg/ton/tl/ByteString;

    move-result-object p1

    .line 40
    new-instance v1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-direct {v1, v0, v2, p1}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;-><init>(ILorg/ton/tl/ByteString;Lorg/ton/tl/ByteString;)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->getWorkchain()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 45
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->getRootHash()Lorg/ton/tl/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw(Lorg/ton/tl/ByteString;)V

    .line 46
    invoke-virtual {p2}, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;->getFileHash()Lorg/ton/tl/ByteString;

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
            "Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;",
            ">;"
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    return-object v0
.end method
