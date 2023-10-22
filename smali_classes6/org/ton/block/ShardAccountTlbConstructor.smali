.class final Lorg/ton/block/ShardAccountTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardAccount.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardAccount;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardAccount.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardAccount.kt\norg/ton/block/ShardAccountTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,51:1\n131#2:52\n132#2:55\n106#3,2:53\n110#3:57\n14#3:58\n86#4:56\n*S KotlinDebug\n*F\n+ 1 ShardAccount.kt\norg/ton/block/ShardAccountTlbConstructor\n*L\n36#1:52\n36#1:55\n37#1:53,2\n45#1:57\n45#1:58\n44#1:56\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardAccountTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardAccountTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardAccountTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardAccountTlbConstructor;->INSTANCE:Lorg/ton/block/ShardAccountTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "account_descr$_ account:^Account last_trans_hash:bits256 last_trans_lt:uint64 = ShardAccount;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardAccountTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardAccount;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardAccount;
    .locals 9

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/ton/block/Account;->Companion:Lorg/ton/block/Account$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v4

    const/16 v0, 0x100

    .line 46
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v5

    .line 47
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v6

    .line 48
    new-instance p1, Lorg/ton/block/ShardAccount;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/ton/block/ShardAccount;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/bitstring/BitString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/ShardAccount;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardAccountTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardAccount;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardAccount;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/block/Account;->Companion:Lorg/ton/block/Account$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardAccount;->getAccount()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 38
    invoke-virtual {p2}, Lorg/ton/block/ShardAccount;->getLastTransHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 39
    invoke-virtual {p2}, Lorg/ton/block/ShardAccount;->getLastTransLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
