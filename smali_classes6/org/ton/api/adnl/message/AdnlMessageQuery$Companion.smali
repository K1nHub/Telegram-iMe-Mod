.class public final Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlMessageQuery.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/message/AdnlMessageQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/message/AdnlMessageQuery;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.message.query query_id:int256 query:bytes = adnl.Message"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/message/AdnlMessageQuery;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/message/AdnlMessageQuery;
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 46
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readByteString(I)Lorg/ton/tl/ByteString;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object p1

    .line 48
    new-instance v1, Lorg/ton/api/adnl/message/AdnlMessageQuery;

    invoke-direct {v1, v0, p1}, Lorg/ton/api/adnl/message/AdnlMessageQuery;-><init>(Lorg/ton/tl/ByteString;[B)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/api/adnl/message/AdnlMessageQuery;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/message/AdnlMessageQuery;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/message/AdnlMessageQuery;)V
    .locals 7

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lorg/ton/api/adnl/message/AdnlMessageQuery;->getQueryId()Lorg/ton/tl/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw(Lorg/ton/tl/ByteString;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/api/adnl/message/AdnlMessageQuery;->getQuery()[B

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
            "Lorg/ton/api/adnl/message/AdnlMessageQuery;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;->INSTANCE:Lorg/ton/api/adnl/message/AdnlMessageQuery$$serializer;

    return-object v0
.end method
