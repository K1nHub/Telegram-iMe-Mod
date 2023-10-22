.class public final Lorg/ton/api/adnl/AdnlAddressList$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlAddressList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlAddressList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/AdnlAddressList;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlAddressList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlAddressList.kt\norg/ton/api/adnl/AdnlAddressList$Companion\n+ 2 TlWriter.kt\norg/ton/tl/TlWriter\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,49:1\n69#2,3:50\n73#2:55\n81#3,2:53\n*S KotlinDebug\n*F\n+ 1 AdnlAddressList.kt\norg/ton/api/adnl/AdnlAddressList$Companion\n*L\n28#1:50,3\n28#1:55\n29#1:53,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.addressList addrs:(vector adnl.Address) version:int reinit_date:int priority:int expire_at:int = adnl.AddressList"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 24
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlAddressList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressList$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressList;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressList;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$Companion$decode$addrs$1;

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readVector(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v2

    .line 41
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v4

    .line 43
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v5

    .line 44
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v6

    .line 45
    new-instance p1, Lorg/ton/api/adnl/AdnlAddressList;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/api/adnl/AdnlAddressList;-><init>(Ljava/util/Collection;IIII)V

    return-object p1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/api/adnl/AdnlAddressList;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlAddressList$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressList;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressList;)V
    .locals 3

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressList;->getAddrs()Ljava/util/Collection;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 70
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v1, Lorg/ton/api/adnl/AdnlAddress;

    .line 29
    sget-object v2, Lorg/ton/api/adnl/AdnlAddress;->Companion:Lorg/ton/api/adnl/AdnlAddress$Companion;

    .line 81
    invoke-interface {v2, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressList;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 32
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressList;->getReinitDate()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 33
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressList;->getPriority()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 34
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressList;->getExpireAt()I

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
            "Lorg/ton/api/adnl/AdnlAddressList;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$$serializer;

    return-object v0
.end method
