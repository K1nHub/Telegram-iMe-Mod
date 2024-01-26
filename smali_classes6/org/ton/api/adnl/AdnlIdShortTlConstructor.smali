.class final Lorg/ton/api/adnl/AdnlIdShortTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlIdShort.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/AdnlIdShort;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    invoke-direct {v0}, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->INSTANCE:Lorg/ton/api/adnl/AdnlIdShortTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.id.short id:int256 = adnl.id.Short"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 82
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 86
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object p1

    .line 87
    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortImpl;

    invoke-direct {v0, p1}, Lorg/ton/api/adnl/AdnlIdShortImpl;-><init>([B)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlIdShortTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlIdShort;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p2}, Lorg/ton/api/adnl/AdnlIdShort;->getId()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    return-void
.end method
