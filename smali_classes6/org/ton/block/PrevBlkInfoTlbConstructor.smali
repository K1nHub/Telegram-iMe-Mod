.class final Lorg/ton/block/PrevBlkInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "PrevBlkInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/PrevBlkInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrevBlkInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrevBlkInfo.kt\norg/ton/block/PrevBlkInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,45:1\n131#2:46\n132#2:50\n59#3,3:47\n52#3:52\n86#4:51\n*S KotlinDebug\n*F\n+ 1 PrevBlkInfo.kt\norg/ton/block/PrevBlkInfoTlbConstructor\n*L\n34#1:46\n34#1:50\n35#1:47,3\n41#1:52\n40#1:51\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/PrevBlkInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/PrevBlkInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/PrevBlkInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/PrevBlkInfoTlbConstructor;->INSTANCE:Lorg/ton/block/PrevBlkInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "prev_blk_info$_ prev:ExtBlkRef = BlkPrevInfo 0;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 28
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/block/PrevBlkInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/PrevBlkInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/PrevBlkInfo;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 41
    check-cast p1, Lorg/ton/block/ExtBlkRef;

    .line 42
    new-instance v0, Lorg/ton/block/PrevBlkInfo;

    invoke-direct {v0, p1}, Lorg/ton/block/PrevBlkInfo;-><init>(Lorg/ton/block/ExtBlkRef;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/PrevBlkInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/PrevBlkInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/PrevBlkInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/PrevBlkInfo;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    invoke-virtual {p2}, Lorg/ton/block/PrevBlkInfo;->getPrev()Lorg/ton/block/ExtBlkRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
