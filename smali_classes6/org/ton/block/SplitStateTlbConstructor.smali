.class final Lorg/ton/block/SplitStateTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "SplitState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/SplitState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitState.kt\norg/ton/block/SplitStateTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,55:1\n131#2:56\n139#2,3:57\n142#2,3:63\n139#2,3:66\n142#2,3:72\n132#2:75\n59#3,3:60\n59#3,3:69\n52#3:78\n52#3:80\n86#4:76\n89#4:77\n89#4:79\n*S KotlinDebug\n*F\n+ 1 SplitState.kt\norg/ton/block/SplitStateTlbConstructor\n*L\n34#1:56\n35#1:57,3\n35#1:63,3\n38#1:66,3\n38#1:72,3\n34#1:75\n36#1:60,3\n39#1:69,3\n47#1:78\n50#1:80\n45#1:76\n46#1:77\n49#1:79\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/SplitStateTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/SplitStateTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/SplitStateTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/SplitStateTlbConstructor;->INSTANCE:Lorg/ton/block/SplitStateTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "split_state#5f327da5 left:^ShardStateUnsplit right:^ShardStateUnsplit = ShardState;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/SplitStateTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SplitState;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SplitState;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v0

    .line 47
    sget-object v1, Lorg/ton/block/ShardStateUnsplit;->Companion:Lorg/ton/block/ShardStateUnsplit$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/block/ShardStateUnsplit;

    .line 89
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    invoke-interface {p1}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object p1

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardStateUnsplit;

    .line 52
    new-instance v1, Lorg/ton/block/SplitState;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/SplitState;-><init>(Lorg/ton/block/ShardStateUnsplit;Lorg/ton/block/ShardStateUnsplit;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/SplitState;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SplitStateTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SplitState;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SplitState;)V
    .locals 4

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v1

    .line 36
    sget-object v2, Lorg/ton/block/ShardStateUnsplit;->Companion:Lorg/ton/block/ShardStateUnsplit$Companion;

    invoke-virtual {p2}, Lorg/ton/block/SplitState;->getLeft()Lorg/ton/block/ShardStateUnsplit;

    move-result-object v3

    .line 60
    invoke-interface {v2, v1, v3}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v1}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 143
    invoke-interface {p1, v1}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 140
    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 39
    invoke-virtual {p2}, Lorg/ton/block/SplitState;->getRight()Lorg/ton/block/ShardStateUnsplit;

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
