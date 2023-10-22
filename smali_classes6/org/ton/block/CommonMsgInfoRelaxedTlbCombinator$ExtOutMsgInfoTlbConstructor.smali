.class final Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CommonMsgInfoRelaxed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtOutMsgInfoTlbConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonMsgInfoRelaxed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,155:1\n131#2:156\n132#2:163\n59#3,3:157\n59#3,3:160\n52#3:165\n52#3:166\n86#4:164\n*S KotlinDebug\n*F\n+ 1 CommonMsgInfoRelaxed.kt\norg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor\n*L\n137#1:156\n137#1:163\n138#1:157,3\n139#1:160,3\n147#1:165\n148#1:166\n146#1:164\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ext_out_msg_info$11 src:MsgAddress dest:MsgAddressExt created_lt:uint64 created_at:uint32 = CommonMsgInfoRelaxed;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 130
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lorg/ton/block/MsgAddress;->Companion:Lorg/ton/block/MsgAddress$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    move-object v2, v0

    check-cast v2, Lorg/ton/block/MsgAddress;

    .line 148
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    move-object v3, v0

    check-cast v3, Lorg/ton/block/MsgAddressExt;

    .line 149
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v4

    .line 150
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v6

    .line 151
    new-instance p1, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;-><init>(Lorg/ton/block/MsgAddress;Lorg/ton/block/MsgAddressExt;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 130
    check-cast p2, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator$ExtOutMsgInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lorg/ton/block/MsgAddress;->Companion:Lorg/ton/block/MsgAddress$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->getSrc()Lorg/ton/block/MsgAddress;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 139
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->getDest()Lorg/ton/block/MsgAddressExt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->getCreatedLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 141
    invoke-virtual {p2}, Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;->getCreatedAt-pVg5ArA()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    return-void
.end method
