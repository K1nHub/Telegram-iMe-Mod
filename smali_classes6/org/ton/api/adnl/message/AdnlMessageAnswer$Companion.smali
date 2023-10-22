.class public final Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlMessageAnswer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/message/AdnlMessageAnswer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/message/AdnlMessageAnswer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlMessageAnswer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlMessageAnswer.kt\norg/ton/api/adnl/message/AdnlMessageAnswer$Companion\n+ 2 TlWriter.kt\norg/ton/tl/TlWriter\n+ 3 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,58:1\n76#2,2:59\n63#3:61\n*S KotlinDebug\n*F\n+ 1 AdnlMessageAnswer.kt\norg/ton/api/adnl/message/AdnlMessageAnswer$Companion\n*L\n46#1:59,2\n51#1:61\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.message.answer query_id:int256 answer:bytes = adnl.Message"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 40
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/message/AdnlMessageAnswer;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 52
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object p1

    .line 54
    new-instance v1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    invoke-direct {v1, v0, p1}, Lorg/ton/api/adnl/message/AdnlMessageAnswer;-><init>([B[B)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/message/AdnlMessageAnswer;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/message/AdnlMessageAnswer;)V
    .locals 7

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2}, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->getQueryId()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/ton/bitstring/BitString$DefaultImpls;->toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 48
    invoke-virtual {p2}, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->getAnswer()[B

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
            "Lorg/ton/api/adnl/message/AdnlMessageAnswer;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;->INSTANCE:Lorg/ton/api/adnl/message/AdnlMessageAnswer$$serializer;

    return-object v0
.end method
