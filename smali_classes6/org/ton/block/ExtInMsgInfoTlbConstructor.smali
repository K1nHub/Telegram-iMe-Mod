.class final Lorg/ton/block/ExtInMsgInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ExtInMsgInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ExtInMsgInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtInMsgInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtInMsgInfo.kt\norg/ton/block/ExtInMsgInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,59:1\n131#2:60\n132#2:70\n59#3,3:61\n59#3,3:64\n59#3,3:67\n52#3:72\n52#3:73\n52#3:74\n86#4:71\n*S KotlinDebug\n*F\n+ 1 ExtInMsgInfo.kt\norg/ton/block/ExtInMsgInfoTlbConstructor\n*L\n44#1:60\n44#1:70\n45#1:61,3\n46#1:64,3\n47#1:67,3\n53#1:72\n54#1:73\n55#1:74\n52#1:71\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ExtInMsgInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ExtInMsgInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ExtInMsgInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ExtInMsgInfoTlbConstructor;->INSTANCE:Lorg/ton/block/ExtInMsgInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ext_in_msg_info$10 src:MsgAddressExt dest:MsgAddressInt import_fee:Coins = CommonMsgInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 39
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtInMsgInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtInMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtInMsgInfo;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    check-cast v0, Lorg/ton/block/MsgAddressExt;

    .line 54
    sget-object v1, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    check-cast v1, Lorg/ton/block/MsgAddressInt;

    .line 55
    sget-object v2, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    check-cast p1, Lorg/ton/block/Coins;

    .line 56
    new-instance v2, Lorg/ton/block/ExtInMsgInfo;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/ExtInMsgInfo;-><init>(Lorg/ton/block/MsgAddressExt;Lorg/ton/block/MsgAddressInt;Lorg/ton/block/Coins;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lorg/ton/block/ExtInMsgInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ExtInMsgInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtInMsgInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtInMsgInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/ton/block/MsgAddressExt;->Companion:Lorg/ton/block/MsgAddressExt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ExtInMsgInfo;->getSrc()Lorg/ton/block/MsgAddressExt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lorg/ton/block/MsgAddressInt;->Companion:Lorg/ton/block/MsgAddressInt$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ExtInMsgInfo;->getDest()Lorg/ton/block/MsgAddressInt;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ExtInMsgInfo;->getImportFee()Lorg/ton/block/Coins;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
