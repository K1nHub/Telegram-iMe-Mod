.class final Lorg/ton/block/TransactionTlConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Transaction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransaction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transaction.kt\norg/ton/block/TransactionTlConstructor\n+ 2 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,198:1\n86#2:199\n52#3:200\n52#3:201\n52#3:204\n59#3,3:210\n59#3,3:213\n59#3,3:218\n110#4:202\n14#4:203\n110#4:205\n14#4:206\n110#4:207\n14#4:208\n106#4,2:216\n106#4,2:221\n106#4,2:223\n131#5:209\n132#5:225\n*S KotlinDebug\n*F\n+ 1 Transaction.kt\norg/ton/block/TransactionTlConstructor\n*L\n135#1:199\n142#1:200\n143#1:201\n145#1:204\n171#1:210,3\n172#1:213,3\n174#1:218,3\n144#1:202\n144#1:203\n146#1:205\n146#1:206\n147#1:207\n147#1:208\n173#1:216,2\n175#1:221,2\n176#1:223,2\n164#1:209\n164#1:225\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransactionTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TransactionTlConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransactionTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransactionTlConstructor;->INSTANCE:Lorg/ton/block/TransactionTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "transaction$0111   account_addr:bits256   lt:uint64   prev_trans_hash:bits256   prev_trans_lt:uint64   now:uint32   outmsg_cnt:uint15   orig_status:AccountStatus   end_status:AccountStatus   ^[ in_msg:(Maybe ^(Message Any)) out_msgs:(HashmapE 15 ^(Message Any)) ]   total_fees:CurrencyCollection state_update:^(HASH_UPDATE Account)   description:^TransactionDescr = Transaction;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 121
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lorg/ton/block/TransactionTlConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Transaction;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Transaction;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x100

    .line 136
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v3

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v4

    .line 138
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v6

    .line 139
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v7

    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v9

    const/16 v1, 0xf

    .line 141
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    .line 142
    sget-object v1, Lorg/ton/block/AccountStatus;->Companion:Lorg/ton/block/AccountStatus$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    move-object v11, v2

    check-cast v11, Lorg/ton/block/AccountStatus;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 143
    move-object v12, v1

    check-cast v12, Lorg/ton/block/AccountStatus;

    .line 144
    sget-object v1, Lorg/ton/block/TransactionAux;->Companion:Lorg/ton/block/TransactionAux$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    .line 14
    sget-object v13, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v13, v2, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 145
    sget-object v2, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v2, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    move-object v14, v2

    check-cast v14, Lorg/ton/block/CurrencyCollection;

    .line 146
    sget-object v2, Lorg/ton/block/HashUpdate;->Companion:Lorg/ton/block/HashUpdate$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v15

    .line 14
    invoke-virtual {v13, v15, v2}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v15

    .line 147
    sget-object v2, Lorg/ton/block/TransactionDescr;->Companion:Lorg/ton/block/TransactionDescr$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 14
    invoke-virtual {v13, v0, v2}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v16

    .line 148
    new-instance v0, Lorg/ton/block/Transaction;

    const/16 v17, 0x0

    move-object v2, v0

    move-object v13, v1

    invoke-direct/range {v2 .. v17}, Lorg/ton/block/Transaction;-><init>(Lorg/ton/bitstring/BitString;JLorg/ton/bitstring/BitString;JIILorg/ton/block/AccountStatus;Lorg/ton/block/AccountStatus;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p2, Lorg/ton/block/Transaction;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransactionTlConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Transaction;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Transaction;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->accountAddr()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 166
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->lt()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 167
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->prevTransHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 168
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->prevTransLt()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 169
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->now()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 170
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->outMsgCnt()I

    move-result v0

    const/16 v1, 0xf

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 171
    sget-object v0, Lorg/ton/block/AccountStatus;->Companion:Lorg/ton/block/AccountStatus$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Transaction;->origStatus()Lorg/ton/block/AccountStatus;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p2}, Lorg/ton/block/Transaction;->endStatus()Lorg/ton/block/AccountStatus;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 173
    sget-object v0, Lorg/ton/block/TransactionAux;->Companion:Lorg/ton/block/TransactionAux$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Transaction;->r1()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 174
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Transaction;->totalFees()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 175
    sget-object v0, Lorg/ton/block/HashUpdate;->Companion:Lorg/ton/block/HashUpdate$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Transaction;->stateUpdate()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 176
    sget-object v0, Lorg/ton/block/TransactionDescr;->Companion:Lorg/ton/block/TransactionDescr$Companion;

    invoke-virtual {p2}, Lorg/ton/block/Transaction;->description()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
