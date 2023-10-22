.class final Lorg/ton/block/StateInitTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "StateInit.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/StateInit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateInit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateInit.kt\norg/ton/block/StateInitTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 Maybe.kt\norg/ton/block/Maybe$Companion\n*L\n1#1,95:1\n131#2:96\n132#2:112\n59#3,3:97\n59#3,3:100\n59#3,3:103\n59#3,3:106\n59#3,3:109\n52#3:114\n52#3:115\n52#3:116\n52#3:117\n52#3:118\n86#4:113\n33#5:119\n33#5:120\n33#5:121\n*S KotlinDebug\n*F\n+ 1 StateInit.kt\norg/ton/block/StateInitTlbConstructor\n*L\n76#1:96\n76#1:112\n77#1:97,3\n78#1:100,3\n79#1:103,3\n80#1:106,3\n81#1:109,3\n87#1:114\n88#1:115\n89#1:116\n90#1:117\n91#1:118\n86#1:113\n69#1:119\n70#1:120\n71#1:121\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/StateInitTlbConstructor;

.field private static final Library:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/SimpleLib;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final Maybe5:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lkotlin/UInt;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MaybeCell:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/cell/Cell;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final MaybeTickTock:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TickTock;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/StateInitTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/StateInitTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/StateInitTlbConstructor;->INSTANCE:Lorg/ton/block/StateInitTlbConstructor;

    .line 69
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/tlb/constructor/UIntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/ton/tlb/constructor/UIntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 69
    sput-object v1, Lorg/ton/block/StateInitTlbConstructor;->Maybe5:Lorg/ton/tlb/TlbCodec;

    .line 70
    sget-object v1, Lorg/ton/block/TickTock;->Companion:Lorg/ton/block/TickTock$Companion;

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 70
    sput-object v1, Lorg/ton/block/StateInitTlbConstructor;->MaybeTickTock:Lorg/ton/tlb/TlbCodec;

    .line 71
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 71
    sput-object v0, Lorg/ton/block/StateInitTlbConstructor;->MaybeCell:Lorg/ton/tlb/TlbCodec;

    .line 72
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/SimpleLib;->Companion:Lorg/ton/block/SimpleLib$Companion;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/StateInitTlbConstructor;->Library:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ split_depth:(Maybe (## 5)) special:(Maybe TickTock) code:(Maybe ^Cell) data:(Maybe ^Cell) library:(HashmapE 256 SimpleLib) = StateInit;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/StateInitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->Maybe5:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    move-object v2, v0

    check-cast v2, Lorg/ton/block/Maybe;

    .line 88
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->MaybeTickTock:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    move-object v3, v0

    check-cast v3, Lorg/ton/block/Maybe;

    .line 89
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->MaybeCell:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 89
    move-object v4, v1

    check-cast v4, Lorg/ton/block/Maybe;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    move-object v5, v0

    check-cast v5, Lorg/ton/block/Maybe;

    .line 91
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->Library:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 91
    move-object v6, p1

    check-cast v6, Lorg/ton/hashmap/HashMapE;

    .line 92
    new-instance p1, Lorg/ton/block/StateInit;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/StateInit;-><init>(Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/hashmap/HashMapE;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p2, Lorg/ton/block/StateInit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/StateInitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->Maybe5:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StateInit;->splitDepth()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->MaybeTickTock:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StateInit;->special()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->MaybeCell:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StateInit;->code()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p2}, Lorg/ton/block/StateInit;->data()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->Library:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StateInit;->library()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
