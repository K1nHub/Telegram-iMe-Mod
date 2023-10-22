.class final Lorg/ton/block/OutMsgQueueInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "OutMsgQueueInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/OutMsgQueueInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutMsgQueueInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutMsgQueueInfo.kt\norg/ton/block/OutMsgQueueInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,61:1\n131#2:62\n132#2:72\n59#3,3:63\n59#3,3:66\n59#3,3:69\n52#3:74\n52#3:75\n52#3:76\n86#4:73\n*S KotlinDebug\n*F\n+ 1 OutMsgQueueInfo.kt\norg/ton/block/OutMsgQueueInfoTlbConstructor\n*L\n46#1:62\n46#1:72\n47#1:63,3\n48#1:66,3\n49#1:69,3\n55#1:74\n56#1:75\n57#1:76\n54#1:73\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/OutMsgQueueInfoTlbConstructor;

.field private static final ihrPending:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/IhrPendingSince;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final outQueue:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/EnqueuedMsg;",
            "Lkotlin/ULong;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final procInfo:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/ProcessedUpto;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->INSTANCE:Lorg/ton/block/OutMsgQueueInfoTlbConstructor;

    .line 39
    sget-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v1, Lorg/ton/block/EnqueuedMsg;->Companion:Lorg/ton/block/EnqueuedMsg$Companion;

    sget-object v2, Lkotlin/ULong;->Companion:Lkotlin/ULong$Companion;

    invoke-static {v2}, Lorg/ton/tlb/constructor/UIntTlbConstructorKt;->tlbConstructor(Lkotlin/ULong$Companion;)Lorg/ton/tlb/TlbConstructor;

    move-result-object v2

    const/16 v3, 0x160

    invoke-virtual {v0, v3, v1, v2}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->outQueue:Lorg/ton/tlb/TlbCodec;

    .line 40
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/ProcessedUpto;->Companion:Lorg/ton/block/ProcessedUpto$Companion;

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->procInfo:Lorg/ton/tlb/TlbCodec;

    .line 41
    sget-object v1, Lorg/ton/block/IhrPendingSince;->Companion:Lorg/ton/block/IhrPendingSince$Companion;

    const/16 v2, 0x140

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->ihrPending:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ out_queue:OutMsgQueue proc_info:ProcessedInfo ihr_pending:IhrPendingInfo = OutMsgQueueInfo;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/OutMsgQueueInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/OutMsgQueueInfo;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->outQueue:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    check-cast v0, Lorg/ton/hashmap/HashmapAugE;

    .line 56
    sget-object v1, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->procInfo:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    check-cast v1, Lorg/ton/hashmap/HashMapE;

    .line 57
    sget-object v2, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->ihrPending:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 57
    check-cast p1, Lorg/ton/hashmap/HashMapE;

    .line 58
    new-instance v2, Lorg/ton/block/OutMsgQueueInfo;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/OutMsgQueueInfo;-><init>(Lorg/ton/hashmap/HashmapAugE;Lorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashMapE;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/OutMsgQueueInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/OutMsgQueueInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/OutMsgQueueInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->outQueue:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/OutMsgQueueInfo;->getOutQueue()Lorg/ton/hashmap/HashmapAugE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->procInfo:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/OutMsgQueueInfo;->getProcInfo()Lorg/ton/hashmap/HashMapE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 49
    sget-object v0, Lorg/ton/block/OutMsgQueueInfoTlbConstructor;->ihrPending:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/OutMsgQueueInfo;->getIhrPending()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
