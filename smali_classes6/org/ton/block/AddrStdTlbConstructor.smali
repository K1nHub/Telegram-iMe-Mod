.class final Lorg/ton/block/AddrStdTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AddrStd.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AddrStd;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddrStd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStdTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 Maybe.kt\norg/ton/block/Maybe$Companion\n*L\n1#1,200:1\n131#2:201\n132#2:205\n59#3,3:202\n52#3:207\n86#4:206\n33#5:208\n*S KotlinDebug\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStdTlbConstructor\n*L\n185#1:201\n185#1:205\n186#1:202,3\n194#1:207\n193#1:206\n180#1:208\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AddrStdTlbConstructor;

.field private static final MaybeAnycast:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Anycast;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/AddrStdTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AddrStdTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AddrStdTlbConstructor;->INSTANCE:Lorg/ton/block/AddrStdTlbConstructor;

    .line 180
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Anycast;->Companion:Lorg/ton/block/Anycast$Companion;

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 180
    sput-object v0, Lorg/ton/block/AddrStdTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "addr_std$10 anycast:(Maybe Anycast) workchain_id:int8 address:bits256 = MsgAddressInt;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 177
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrStdTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrStd;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrStd;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lorg/ton/block/AddrStdTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Lorg/ton/block/Maybe;

    const/16 v1, 0x8

    .line 195
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/16 v2, 0x100

    .line 196
    invoke-interface {p1, v2}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 197
    new-instance v2, Lorg/ton/block/AddrStd;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/AddrStd;-><init>(Lorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p2, Lorg/ton/block/AddrStd;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AddrStdTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrStd;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrStd;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lorg/ton/block/AddrStdTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/AddrStd;->anycast()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p2}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 188
    invoke-virtual {p2}, Lorg/ton/block/AddrStd;->address()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
