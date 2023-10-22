.class public final Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerSendMsgStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.sendMsgStatus status:int = liteServer.SendMsgStatus"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 14
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 19
    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;

    invoke-direct {v0, p1}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;->getStatus()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$$serializer;

    return-object v0
.end method
