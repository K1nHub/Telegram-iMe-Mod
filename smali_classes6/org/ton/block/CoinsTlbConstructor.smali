.class final Lorg/ton/block/CoinsTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Coins.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Coins;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoins.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Coins.kt\norg/ton/block/CoinsTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,84:1\n131#2:85\n132#2:89\n59#3,3:86\n52#3:91\n86#4:90\n*S KotlinDebug\n*F\n+ 1 Coins.kt\norg/ton/block/CoinsTlbConstructor\n*L\n73#1:85\n73#1:89\n74#1:86,3\n80#1:91\n79#1:90\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CoinsTlbConstructor;

.field private static final varUIntegerCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/CoinsTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CoinsTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CoinsTlbConstructor;->INSTANCE:Lorg/ton/block/CoinsTlbConstructor;

    .line 69
    sget-object v0, Lorg/ton/block/VarUInteger;->Companion:Lorg/ton/block/VarUInteger$Companion;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/ton/block/VarUInteger$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/CoinsTlbConstructor;->varUIntegerCodec:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "nanocoins$_ amount:(VarUInteger 16) = Coins;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 66
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/ton/block/CoinsTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Coins;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Coins;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lorg/ton/block/CoinsTlbConstructor;->varUIntegerCodec:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 80
    check-cast p1, Lorg/ton/block/VarUInteger;

    .line 81
    new-instance v0, Lorg/ton/block/Coins;

    invoke-direct {v0, p1}, Lorg/ton/block/Coins;-><init>(Lorg/ton/block/VarUInteger;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p2, Lorg/ton/block/Coins;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CoinsTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Coins;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Coins;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lorg/ton/block/CoinsTlbConstructor;->varUIntegerCodec:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/Coins;->amount()Lorg/ton/block/VarUInteger;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
