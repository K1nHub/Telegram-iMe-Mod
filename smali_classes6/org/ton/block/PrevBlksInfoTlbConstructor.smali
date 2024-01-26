.class final Lorg/ton/block/PrevBlksInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "PrevBlksInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/PrevBlksInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrevBlksInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrevBlksInfo.kt\norg/ton/block/PrevBlksInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,48:1\n131#2:49\n132#2:56\n59#3,3:50\n59#3,3:53\n52#3:58\n52#3:59\n86#4:57\n*S KotlinDebug\n*F\n+ 1 PrevBlksInfo.kt\norg/ton/block/PrevBlksInfoTlbConstructor\n*L\n35#1:49\n35#1:56\n36#1:50,3\n37#1:53,3\n43#1:58\n44#1:59\n42#1:57\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/PrevBlksInfoTlbConstructor;

.field private static final cellRef:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/PrevBlksInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/PrevBlksInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/PrevBlksInfoTlbConstructor;->INSTANCE:Lorg/ton/block/PrevBlksInfoTlbConstructor;

    .line 30
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/PrevBlksInfoTlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "prev_blks_info$_ prev1:^ExtBlkRef prev2:^ExtBlkRef = BlkPrevInfo 1;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/ton/block/PrevBlksInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/PrevBlksInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/PrevBlksInfo;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/PrevBlksInfoTlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 43
    check-cast v1, Lorg/ton/tlb/CellRef;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    check-cast p1, Lorg/ton/tlb/CellRef;

    .line 45
    new-instance v0, Lorg/ton/block/PrevBlksInfo;

    invoke-direct {v0, v1, p1}, Lorg/ton/block/PrevBlksInfo;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/PrevBlksInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/PrevBlksInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/PrevBlksInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/PrevBlksInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lorg/ton/block/PrevBlksInfoTlbConstructor;->cellRef:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/PrevBlksInfo;->getPrev1()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p2}, Lorg/ton/block/PrevBlksInfo;->getPrev2()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
