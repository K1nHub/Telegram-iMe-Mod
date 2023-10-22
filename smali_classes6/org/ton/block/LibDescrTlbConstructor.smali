.class final Lorg/ton/block/LibDescrTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "LibDescr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/LibDescr;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibDescr.kt\norg/ton/block/LibDescrTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,54:1\n131#2:55\n132#2:59\n59#3,3:56\n52#3:61\n86#4:60\n*S KotlinDebug\n*F\n+ 1 LibDescr.kt\norg/ton/block/LibDescrTlbConstructor\n*L\n41#1:55\n41#1:59\n43#1:56,3\n50#1:61\n48#1:60\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/LibDescrTlbConstructor;

.field private static final publishers$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/LibDescrTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/LibDescrTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/LibDescrTlbConstructor;->INSTANCE:Lorg/ton/block/LibDescrTlbConstructor;

    .line 28
    sget-object v0, Lorg/ton/block/LibDescrTlbConstructor$publishers$2;->INSTANCE:Lorg/ton/block/LibDescrTlbConstructor$publishers$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lorg/ton/block/LibDescrTlbConstructor;->publishers$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "shared_lib_descr$00 lib:^Cell publishers:(Hashmap 256 True) = LibDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 25
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getPublishers()Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 28
    sget-object v0, Lorg/ton/block/LibDescrTlbConstructor;->publishers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/tlb/TlbCodec;

    return-object v0
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/ton/block/LibDescrTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/LibDescr;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/LibDescr;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 50
    sget-object v1, Lorg/ton/block/LibDescrTlbConstructor;->INSTANCE:Lorg/ton/block/LibDescrTlbConstructor;

    invoke-virtual {v1}, Lorg/ton/block/LibDescrTlbConstructor;->getPublishers()Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    check-cast p1, Lorg/ton/hashmap/HmEdge;

    .line 51
    new-instance v1, Lorg/ton/block/LibDescr;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/LibDescr;-><init>(Lorg/ton/cell/Cell;Lorg/ton/hashmap/HmEdge;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lorg/ton/block/LibDescr;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/LibDescrTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/LibDescr;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/LibDescr;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/LibDescr;->getLib()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 43
    sget-object v0, Lorg/ton/block/LibDescrTlbConstructor;->INSTANCE:Lorg/ton/block/LibDescrTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/block/LibDescrTlbConstructor;->getPublishers()Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/LibDescr;->getPublishers()Lorg/ton/hashmap/HmEdge;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
