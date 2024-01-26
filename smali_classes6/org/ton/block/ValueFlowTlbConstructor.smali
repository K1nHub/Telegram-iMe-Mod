.class final Lorg/ton/block/ValueFlowTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ValueFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ValueFlow;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlowTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,94:1\n131#2:95\n139#2,3:96\n142#2,3:111\n139#2,3:117\n142#2,3:132\n132#2:135\n59#3,3:99\n59#3,3:102\n59#3,3:105\n59#3,3:108\n59#3,3:114\n59#3,3:120\n59#3,3:123\n59#3,3:126\n59#3,3:129\n52#3:138\n52#3:139\n52#3:140\n52#3:141\n52#3:142\n52#3:144\n52#3:145\n52#3:146\n52#3:147\n86#4:136\n89#4:137\n89#4:143\n*S KotlinDebug\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlowTlbConstructor\n*L\n55#1:95\n56#1:96,3\n56#1:111,3\n63#1:117,3\n63#1:132,3\n55#1:135\n57#1:99,3\n58#1:102,3\n59#1:105,3\n60#1:108,3\n62#1:114,3\n64#1:120,3\n65#1:123,3\n66#1:126,3\n67#1:129,3\n76#1:138\n77#1:139\n78#1:140\n79#1:141\n82#1:142\n85#1:144\n86#1:145\n87#1:146\n88#1:147\n73#1:136\n74#1:137\n83#1:143\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ValueFlowTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ValueFlowTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ValueFlowTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ValueFlowTlbConstructor;->INSTANCE:Lorg/ton/block/ValueFlowTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "value_flow#b8e48dfb ^[ from_prev_blk:CurrencyCollection to_next_blk:CurrencyCollection imported:CurrencyCollection exported:CurrencyCollection ] fees_collected:CurrencyCollection ^[ fees_imported:CurrencyCollection recovered:CurrencyCollection created:CurrencyCollection minted:CurrencyCollection ] = ValueFlow;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 40
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/ton/block/ValueFlowTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValueFlow;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValueFlow;
    .locals 19

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v2, [Lorg/ton/block/CurrencyCollection;

    .line 76
    sget-object v4, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v4, v1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 52
    invoke-interface {v4, v1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    .line 52
    invoke-interface {v4, v1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v3, v8

    .line 52
    invoke-interface {v4, v1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v3, v5

    .line 74
    aget-object v10, v3, v6

    aget-object v11, v3, v7

    aget-object v12, v3, v8

    aget-object v13, v3, v5

    .line 52
    invoke-interface {v4, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    move-object v14, v1

    check-cast v14, Lorg/ton/block/CurrencyCollection;

    .line 89
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v0

    new-array v1, v2, [Lorg/ton/block/CurrencyCollection;

    .line 52
    invoke-interface {v4, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v6

    .line 52
    invoke-interface {v4, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v7

    .line 52
    invoke-interface {v4, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v8

    .line 52
    invoke-interface {v4, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v5

    .line 83
    aget-object v15, v1, v6

    aget-object v16, v1, v7

    aget-object v17, v1, v8

    aget-object v18, v1, v5

    .line 91
    new-instance v0, Lorg/ton/block/ValueFlow;

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Lorg/ton/block/ValueFlow;-><init>(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Lorg/ton/block/ValueFlow;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ValueFlowTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValueFlow;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValueFlow;)V
    .locals 4

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v1

    .line 57
    sget-object v2, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getFromPrevBlk()Lorg/ton/block/CurrencyCollection;

    move-result-object v3

    .line 60
    invoke-interface {v2, v1, v3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getToNextBlk()Lorg/ton/block/CurrencyCollection;

    move-result-object v3

    .line 60
    invoke-interface {v2, v1, v3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getImported()Lorg/ton/block/CurrencyCollection;

    move-result-object v3

    .line 60
    invoke-interface {v2, v1, v3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getExported()Lorg/ton/block/CurrencyCollection;

    move-result-object v3

    .line 60
    invoke-interface {v2, v1, v3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v1}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 143
    invoke-interface {p1, v1}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 62
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getFeesCollected()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v2, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getFeesImported()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v2, v0, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getRecovered()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v2, v0, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getCreated()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v2, v0, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p2}, Lorg/ton/block/ValueFlow;->getMinted()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v2, v0, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object p2

    .line 143
    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
