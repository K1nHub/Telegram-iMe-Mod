.class final Lorg/ton/block/BlkMasterInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BlkMasterInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BlkMasterInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlkMasterInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlkMasterInfo.kt\norg/ton/block/BlkMasterInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,41:1\n131#2:42\n132#2:46\n59#3,3:43\n52#3:48\n86#4:47\n*S KotlinDebug\n*F\n+ 1 BlkMasterInfo.kt\norg/ton/block/BlkMasterInfoTlbConstructor\n*L\n30#1:42\n30#1:46\n31#1:43,3\n37#1:48\n36#1:47\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlkMasterInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/BlkMasterInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/BlkMasterInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/BlkMasterInfoTlbConstructor;->INSTANCE:Lorg/ton/block/BlkMasterInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "master_info$_ master:ExtBlkRef = BlkMasterInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 24
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/BlkMasterInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlkMasterInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlkMasterInfo;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    check-cast p1, Lorg/ton/block/ExtBlkRef;

    .line 38
    new-instance v0, Lorg/ton/block/BlkMasterInfo;

    invoke-direct {v0, p1}, Lorg/ton/block/BlkMasterInfo;-><init>(Lorg/ton/block/ExtBlkRef;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/block/BlkMasterInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlkMasterInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlkMasterInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlkMasterInfo;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    invoke-virtual {p2}, Lorg/ton/block/BlkMasterInfo;->getMaster()Lorg/ton/block/ExtBlkRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
