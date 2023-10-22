.class final Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "LiteServerQuery.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;->INSTANCE:Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "liteServer.query data:bytes = Object"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 31
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object p1

    .line 36
    new-instance v0, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    invoke-direct {v0, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerQueryTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;)V
    .locals 7

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    return-void
.end method
