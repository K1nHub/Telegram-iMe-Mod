.class final Lorg/ton/block/IntMsgInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "IntMsgInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/IntMsgInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntMsgInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntMsgInfo.kt\norg/ton/block/IntMsgInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,84:1\n131#2:85\n132#2:101\n59#3,3:86\n59#3,3:89\n59#3,3:92\n59#3,3:95\n59#3,3:98\n52#3:103\n52#3:104\n52#3:105\n52#3:106\n52#3:107\n86#4:102\n*S KotlinDebug\n*F\n+ 1 IntMsgInfo.kt\norg/ton/block/IntMsgInfoTlbConstructor\n*L\n53#1:85\n53#1:101\n57#1:86,3\n58#1:89,3\n59#1:92,3\n60#1:95,3\n61#1:98,3\n72#1:103\n73#1:104\n74#1:105\n75#1:106\n76#1:107\n68#1:102\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/IntMsgInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/IntMsgInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/IntMsgInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/IntMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/IntMsgInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "int_msg_info$0 ihr_disabled:Bool bounce:Bool bounced:Bool src:MsgAddressInt dest:MsgAddressInt value:CurrencyCollection ihr_fee:Coins fwd_fee:Coins created_lt:uint64 created_at:uint32 = CommonMsgInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 48
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/ton/block/IntMsgInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntMsgInfo;
    .locals 13

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 70
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v3

    .line 71
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v4

    .line 72
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    move-object v5, v1

    check-cast v5, Lorg/ton/block/MsgAddressInt;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    move-object v6, v0

    check-cast v6, Lorg/ton/block/MsgAddressInt;

    .line 74
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    move-object v7, v0

    check-cast v7, Lorg/ton/block/CurrencyCollection;

    .line 75
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 75
    move-object v8, v1

    check-cast v8, Lorg/ton/block/Coins;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    move-object v9, v0

    check-cast v9, Lorg/ton/block/Coins;

    const/16 v0, 0x40

    .line 77
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    const/16 v0, 0x20

    .line 78
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 79
    new-instance p1, Lorg/ton/block/IntMsgInfo;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Lorg/ton/block/IntMsgInfo;-><init>(ZZZLorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JI)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Lorg/ton/block/IntMsgInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IntMsgInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntMsgInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntMsgInfo;)V
    .locals 3

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getIhrDisabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 55
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getBounce()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 56
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getBounced()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 57
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getSrc()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getDest()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getValue()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 60
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getIhr_fee()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getFwd_fee()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getCreated_lt()J

    move-result-wide v0

    const/16 v2, 0x40

    invoke-interface {p1, v0, v1, v2}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    .line 63
    invoke-virtual {p2}, Lorg/ton/block/IntMsgInfo;->getCreated_at()I

    move-result p2

    const/16 v0, 0x20

    invoke-interface {p1, p2, v0}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    return-void
.end method
