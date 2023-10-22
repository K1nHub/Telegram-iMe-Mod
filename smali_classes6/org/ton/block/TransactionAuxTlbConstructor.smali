.class final Lorg/ton/block/TransactionAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransactionAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transaction.kt\norg/ton/block/TransactionAuxTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,198:1\n131#2:199\n132#2:206\n59#3,3:200\n59#3,3:203\n52#3:208\n52#3:209\n86#4:207\n*S KotlinDebug\n*F\n+ 1 Transaction.kt\norg/ton/block/TransactionAuxTlbConstructor\n*L\n186#1:199\n186#1:206\n187#1:200,3\n188#1:203,3\n193#1:208\n194#1:209\n191#1:207\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransactionAuxTlbConstructor;

.field private static final maybeMessage:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;>;>;"
        }
    .end annotation
.end field

.field private static final outMsgs:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Message<",
            "Lorg/ton/cell/Cell;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/TransactionAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransactionAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransactionAuxTlbConstructor;->INSTANCE:Lorg/ton/block/TransactionAuxTlbConstructor;

    .line 183
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/Message;->Companion:Lorg/ton/block/Message$Companion;

    invoke-virtual {v2}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TransactionAuxTlbConstructor;->maybeMessage:Lorg/ton/tlb/TlbCodec;

    .line 184
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    invoke-virtual {v2}, Lorg/ton/block/Message$Companion;->getAny()Lorg/ton/tlb/TlbConstructor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TransactionAuxTlbConstructor;->outMsgs:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "$_ in_msg:(Maybe ^(Message Any)) out_msgs:(HashmapE 15 ^(Message Any)) "

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 180
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 180
    invoke-virtual {p0, p1}, Lorg/ton/block/TransactionAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransactionAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransactionAux;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lorg/ton/block/TransactionAux;

    .line 193
    sget-object v1, Lorg/ton/block/TransactionAuxTlbConstructor;->maybeMessage:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/block/Maybe;

    .line 194
    sget-object v2, Lorg/ton/block/TransactionAuxTlbConstructor;->outMsgs:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/HashMapE;

    .line 192
    invoke-direct {v0, v1, p1}, Lorg/ton/block/TransactionAux;-><init>(Lorg/ton/block/Maybe;Lorg/ton/hashmap/HashMapE;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 180
    check-cast p2, Lorg/ton/block/TransactionAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransactionAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransactionAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransactionAux;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lorg/ton/block/TransactionAuxTlbConstructor;->maybeMessage:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransactionAux;->inMsg()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 188
    sget-object v0, Lorg/ton/block/TransactionAuxTlbConstructor;->outMsgs:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransactionAux;->outMsgs()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
