.class final Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CommonMsgInfoRelaxed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntMsgInfoTlbConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonMsgInfoRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,155:1\n131#2:156\n132#2:172\n59#3,3:157\n59#3,3:160\n59#3,3:163\n59#3,3:166\n59#3,3:169\n52#3:174\n52#3:175\n52#3:176\n52#3:177\n52#3:178\n86#4:173\n*S KotlinDebug\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor\n*L\n98#1:156\n98#1:172\n102#1:157,3\n103#1:160,3\n104#1:163,3\n105#1:166,3\n106#1:169,3\n117#1:174\n118#1:175\n119#1:176\n120#1:177\n121#1:178\n113#1:173\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "int_msg_info$0 ihr_disabled:Bool bounce:Bool bounced:Bool src:MsgAddress dest:MsgAddressInt value:CurrencyCollection ihr_fee:Coins fwd_fee:Coins created_lt:uint64 created_at:uint32 = CommonMsgInfoRelaxed;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 90
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;
    .locals 14

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 115
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v3

    .line 116
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v4

    .line 117
    sget-object v0, Lorg/ton/block/MsgAddress;->Companion:Lorg/ton/block/MsgAddress$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    move-object v5, v0

    check-cast v5, Lorg/ton/block/MsgAddress;

    .line 118
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    move-object v6, v0

    check-cast v6, Lorg/ton/block/MsgAddressInt;

    .line 119
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    move-object v7, v0

    check-cast v7, Lorg/ton/block/CurrencyCollection;

    .line 120
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    move-object v8, v1

    check-cast v8, Lorg/ton/block/Coins;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    move-object v9, v0

    check-cast v9, Lorg/ton/block/Coins;

    .line 122
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v10

    .line 123
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v12

    .line 124
    new-instance p1, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    const/4 v13, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v13}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;-><init>(ZZZLorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/Coins;Lorg/ton/block/Coins;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p2, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$IntMsgInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getIhrDisabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 100
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getBounce()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 101
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getBounced()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 102
    sget-object v0, Lorg/ton/block/MsgAddress;->Companion:Lorg/ton/block/MsgAddress$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getSrc()Lorg/ton/block/MsgAddress;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getDest()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getValue()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 105
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getIhrFee()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getFwdFee()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getCreatedLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 108
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;->getCreatedAt-pVg5ArA()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    return-void
.end method
