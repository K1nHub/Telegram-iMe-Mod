.class final Lorg/ton/block/AddrVarTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AddrVar.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AddrVar;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddrVar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddrVar.kt\norg/ton/block/AddrVarTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 Maybe.kt\norg/ton/block/Maybe$Companion\n*L\n1#1,83:1\n131#2:84\n132#2:88\n59#3,3:85\n52#3:90\n86#4:89\n33#5:91\n*S KotlinDebug\n*F\n+ 1 AddrVar.kt\norg/ton/block/AddrVarTlbConstructor\n*L\n66#1:84\n66#1:88\n67#1:85,3\n76#1:90\n75#1:89\n61#1:91\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AddrVarTlbConstructor;

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

    new-instance v0, Lorg/ton/block/AddrVarTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AddrVarTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AddrVarTlbConstructor;->INSTANCE:Lorg/ton/block/AddrVarTlbConstructor;

    .line 61
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Anycast;->Companion:Lorg/ton/block/Anycast$Companion;

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 61
    sput-object v0, Lorg/ton/block/AddrVarTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "addr_var$11 anycast:(Maybe Anycast) addr_len:(## 9) workchain_id:int32 address:(bits addr_len) = MsgAddressInt;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 58
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrVarTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrVar;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrVar;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lorg/ton/block/AddrVarTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Lorg/ton/block/Maybe;

    const/16 v1, 0x9

    .line 77
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/16 v2, 0x20

    .line 78
    invoke-interface {p1, v2}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 79
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 80
    new-instance v3, Lorg/ton/block/AddrVar;

    invoke-direct {v3, v0, v1, v2, p1}, Lorg/ton/block/AddrVar;-><init>(Lorg/ton/block/Maybe;IILorg/ton/bitstring/BitString;)V

    return-object v3
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p2, Lorg/ton/block/AddrVar;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AddrVarTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrVar;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrVar;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lorg/ton/block/AddrVarTlbConstructor;->MaybeAnycast:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/AddrVar;->getAnycast()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p2}, Lorg/ton/block/AddrVar;->getAddrLen()I

    move-result v0

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 69
    invoke-virtual {p2}, Lorg/ton/block/AddrVar;->getWorkchainId()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 70
    invoke-virtual {p2}, Lorg/ton/block/AddrVar;->getAddress()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
