.class final Lorg/ton/block/McBlockExtraAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "McBlockExtra.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/McBlockExtraAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraAuxTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,119:1\n52#2:120\n52#2:121\n52#2:122\n59#2,3:124\n59#2,3:127\n59#2,3:130\n131#3:123\n132#3:133\n*S KotlinDebug\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraAuxTlbConstructor\n*L\n105#1:120\n106#1:121\n107#1:122\n113#1:124,3\n114#1:127,3\n115#1:130,3\n112#1:123\n112#1:133\n*E\n"
.end annotation


# static fields
.field private static final HashMapE16CryptoSignaturePair:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CryptoSignaturePair;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lorg/ton/block/McBlockExtraAuxTlbConstructor;

.field private static final MaybeInMsg:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/InMsg;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/McBlockExtraAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->INSTANCE:Lorg/ton/block/McBlockExtraAuxTlbConstructor;

    .line 101
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/CryptoSignaturePair;->Companion:Lorg/ton/block/CryptoSignaturePair$Companion;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->HashMapE16CryptoSignaturePair:Lorg/ton/tlb/TlbCodec;

    .line 102
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/InMsg;->Companion:Lorg/ton/block/InMsg$Companion;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->MaybeInMsg:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "$_ prev_blk_signatures:(HashmapE 16 CryptoSignaturePair) recover_create_msg:(Maybe ^InMsg) mint_msg:(Maybe ^InMsg)"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 98
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 98
    invoke-virtual {p0, p1}, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McBlockExtraAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McBlockExtraAux;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->HashMapE16CryptoSignaturePair:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    check-cast v0, Lorg/ton/hashmap/HashMapE;

    .line 106
    sget-object v1, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->MaybeInMsg:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 106
    check-cast v2, Lorg/ton/block/Maybe;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 107
    check-cast p1, Lorg/ton/block/Maybe;

    .line 108
    new-instance v1, Lorg/ton/block/McBlockExtraAux;

    invoke-direct {v1, v0, v2, p1}, Lorg/ton/block/McBlockExtraAux;-><init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p2, Lorg/ton/block/McBlockExtraAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McBlockExtraAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McBlockExtraAux;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->HashMapE16CryptoSignaturePair:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtraAux;->getPrevBlkSignatures()Lorg/ton/hashmap/HashMapE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 114
    sget-object v0, Lorg/ton/block/McBlockExtraAuxTlbConstructor;->MaybeInMsg:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtraAux;->getRecoverCreateMsg()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p2}, Lorg/ton/block/McBlockExtraAux;->getMintMsg()Lorg/ton/block/Maybe;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
