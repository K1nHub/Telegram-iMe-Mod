.class final Lorg/ton/block/KeyExtBlkRefTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "KeyExtBlkRef.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/KeyExtBlkRef;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyExtBlkRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyExtBlkRef.kt\norg/ton/block/KeyExtBlkRefTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2:48\n132#2:52\n59#3,3:49\n52#3:54\n86#4:53\n*S KotlinDebug\n*F\n+ 1 KeyExtBlkRef.kt\norg/ton/block/KeyExtBlkRefTlbConstructor\n*L\n34#1:48\n34#1:52\n36#1:49,3\n43#1:54\n41#1:53\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/KeyExtBlkRefTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/KeyExtBlkRefTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/KeyExtBlkRefTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/KeyExtBlkRefTlbConstructor;->INSTANCE:Lorg/ton/block/KeyExtBlkRefTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ key:Bool blk_ref:ExtBlkRef = KeyExtBlkRef;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/block/KeyExtBlkRefTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/KeyExtBlkRef;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/KeyExtBlkRef;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v0

    .line 43
    sget-object v1, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Lorg/ton/block/ExtBlkRef;

    .line 44
    new-instance v1, Lorg/ton/block/KeyExtBlkRef;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/KeyExtBlkRef;-><init>(ZLorg/ton/block/ExtBlkRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/KeyExtBlkRef;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/KeyExtBlkRefTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/KeyExtBlkRef;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/KeyExtBlkRef;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lorg/ton/block/KeyExtBlkRef;->getKey()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 36
    sget-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    invoke-virtual {p2}, Lorg/ton/block/KeyExtBlkRef;->getBlkRef()Lorg/ton/block/ExtBlkRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
