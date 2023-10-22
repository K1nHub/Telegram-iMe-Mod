.class final Lorg/ton/block/ExtOutMsgInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ExtOutMsgInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ExtOutMsgInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtOutMsgInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtOutMsgInfo.kt\norg/ton/block/ExtOutMsgInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,58:1\n131#2:59\n132#2:66\n59#3,3:60\n59#3,3:63\n52#3:68\n52#3:69\n86#4:67\n*S KotlinDebug\n*F\n+ 1 ExtOutMsgInfo.kt\norg/ton/block/ExtOutMsgInfoTlbConstructor\n*L\n41#1:59\n41#1:66\n42#1:60,3\n43#1:63,3\n51#1:68\n52#1:69\n50#1:67\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ExtOutMsgInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ExtOutMsgInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ExtOutMsgInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ExtOutMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/ExtOutMsgInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ext_out_msg_info$11 src:MsgAddressInt dest:MsgAddressExt created_lt:uint64 created_at:uint32 = CommonMsgInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 36
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtOutMsgInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtOutMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtOutMsgInfo;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    move-object v2, v0

    check-cast v2, Lorg/ton/block/MsgAddressInt;

    .line 52
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    move-object v3, v0

    check-cast v3, Lorg/ton/block/MsgAddressExt;

    .line 53
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v4

    .line 54
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v6

    .line 55
    new-instance p1, Lorg/ton/block/ExtOutMsgInfo;

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/ExtOutMsgInfo;-><init>(Lorg/ton/block/MsgAddressInt;Lorg/ton/block/MsgAddressExt;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/ExtOutMsgInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ExtOutMsgInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtOutMsgInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtOutMsgInfo;)V
    .locals 3

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ExtOutMsgInfo;->getSrc()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ExtOutMsgInfo;->getDest()Lorg/ton/block/MsgAddressExt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/ExtOutMsgInfo;->getCreatedLt-s-VKNKU()J

    move-result-wide v0

    const/16 v2, 0x40

    invoke-interface {p1, v0, v1, v2}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    .line 45
    invoke-virtual {p2}, Lorg/ton/block/ExtOutMsgInfo;->getCreatedAt-pVg5ArA()I

    move-result p2

    const/16 v0, 0x20

    invoke-interface {p1, p2, v0}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    return-void
.end method
