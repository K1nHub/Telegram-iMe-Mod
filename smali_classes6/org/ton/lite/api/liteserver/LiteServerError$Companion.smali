.class public final Lorg/ton/lite/api/liteserver/LiteServerError$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerError;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.error code:int message:string = liteServer.Error"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 15
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/LiteServerError$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerError$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerError;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerError;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lorg/ton/lite/api/liteserver/LiteServerError;

    invoke-direct {v1, v0, p1}, Lorg/ton/lite/api/liteserver/LiteServerError;-><init>(ILjava/lang/String;)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerError;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerError$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerError;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerError;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerError;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 26
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/LiteServerError;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerError$$serializer;

    return-object v0
.end method
