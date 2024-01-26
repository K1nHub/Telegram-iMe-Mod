.class public final Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerAccountId.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerAccountId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerAccountId;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.accountId workchain:int id:int256 = liteServer.AccountId"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerAccountId;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    const/16 v1, 0x20

    .line 33
    invoke-virtual {p1, v1}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object p1

    .line 34
    new-instance v1, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-direct {v1, v0, p1}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;-><init>(I[B)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerAccountId;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountId$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerAccountId;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerAccountId;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->workchain()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 39
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerAccountId;->id()Lorg/ton/tl/ByteString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/LiteServerAccountId;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerAccountId$$serializer;

    return-object v0
.end method
