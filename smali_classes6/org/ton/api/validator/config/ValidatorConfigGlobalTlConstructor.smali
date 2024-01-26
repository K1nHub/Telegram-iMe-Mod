.class final Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "ValidatorConfigGlobal.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/validator/config/ValidatorConfigGlobal;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValidatorConfigGlobal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValidatorConfigGlobal.kt\norg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor\n+ 2 TlWriter.kt\norg/ton/tl/TlWriter\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n+ 4 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,45:1\n76#2:46\n69#2,3:51\n73#2:56\n77#2:57\n81#3,2:47\n81#3,2:49\n81#3,2:54\n63#4:58\n65#4:59\n65#4:60\n*S KotlinDebug\n*F\n+ 1 ValidatorConfigGlobal.kt\norg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor\n*L\n28#1:46\n31#1:51,3\n31#1:56\n28#1:57\n29#1:47,2\n30#1:49,2\n32#1:54,2\n36#1:58\n37#1:59\n38#1:60\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;

    invoke-direct {v0}, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "validator.config.global zero_state:tonNode.blockIdExt init_block:tonNode.blockIdExt hardforks:(vector tonNode.blockIdExt) = validator.config.Global"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 25
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/validator/config/ValidatorConfigGlobal;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    check-cast v1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 39
    sget-object v2, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor$decode$1$hardforks$1;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor$decode$1$hardforks$1;

    invoke-virtual {p1, v2}, Lorg/ton/tl/TlReader;->readVector(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    .line 42
    new-instance v2, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-direct {v2, v1, v0, p1}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;)V

    return-object v2
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/validator/config/ValidatorConfigGlobalTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/validator/config/ValidatorConfigGlobal;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/validator/config/ValidatorConfigGlobal;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    invoke-virtual {p2}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->getZeroState()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p2}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->getInitBlock()Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p2}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->getHardforks()Ljava/util/Collection;

    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    .line 32
    sget-object v1, Lorg/ton/api/tonnode/TonNodeBlockIdExt;->Companion:Lorg/ton/api/tonnode/TonNodeBlockIdExt$Companion;

    .line 81
    invoke-interface {v1, p1, v0}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
