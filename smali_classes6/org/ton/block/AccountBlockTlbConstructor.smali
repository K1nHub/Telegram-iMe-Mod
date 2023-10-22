.class final Lorg/ton/block/AccountBlockTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AccountBlock.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AccountBlock;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountBlock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountBlock.kt\norg/ton/block/AccountBlockTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,68:1\n131#2:69\n132#2:75\n59#3,3:70\n52#3:77\n106#4,2:73\n110#4:78\n14#4:79\n86#5:76\n*S KotlinDebug\n*F\n+ 1 AccountBlock.kt\norg/ton/block/AccountBlockTlbConstructor\n*L\n53#1:69\n53#1:75\n55#1:70,3\n63#1:77\n56#1:73,2\n64#1:78\n64#1:79\n61#1:76\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AccountBlockTlbConstructor;

.field private static final augDictionaryEdge:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAug<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/AccountBlockTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AccountBlockTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AccountBlockTlbConstructor;->INSTANCE:Lorg/ton/block/AccountBlockTlbConstructor;

    .line 44
    sget-object v0, Lorg/ton/hashmap/HashmapAug;->Companion:Lorg/ton/hashmap/HashmapAug$Companion;

    .line 46
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 47
    sget-object v2, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    const/16 v3, 0x40

    .line 44
    invoke-virtual {v0, v3, v1, v2}, Lorg/ton/hashmap/HashmapAug$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/AccountBlockTlbConstructor;->augDictionaryEdge:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "acc_trans#5 account_addr:bits256            transactions:(HashmapAug 64 ^Transaction CurrencyCollection)            state_update:^(HASH_UPDATE Account)          = AccountBlock"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountBlockTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountBlock;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountBlock;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 62
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 63
    sget-object v1, Lorg/ton/block/AccountBlockTlbConstructor;->augDictionaryEdge:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    check-cast v1, Lorg/ton/hashmap/HashmapAug;

    .line 64
    sget-object v2, Lorg/ton/block/HashUpdate;->Companion:Lorg/ton/block/HashUpdate$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, p1, v2}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 65
    new-instance v2, Lorg/ton/block/AccountBlock;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/AccountBlock;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAug;Lorg/ton/tlb/CellRef;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lorg/ton/block/AccountBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountBlockTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountBlock;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountBlock;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lorg/ton/block/AccountBlock;->getAccountAddr()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 55
    sget-object v0, Lorg/ton/block/AccountBlockTlbConstructor;->augDictionaryEdge:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/AccountBlock;->getTransactions()Lorg/ton/hashmap/HashmapAug;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lorg/ton/block/HashUpdate;->Companion:Lorg/ton/block/HashUpdate$Companion;

    invoke-virtual {p2}, Lorg/ton/block/AccountBlock;->getStateUpdate()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
