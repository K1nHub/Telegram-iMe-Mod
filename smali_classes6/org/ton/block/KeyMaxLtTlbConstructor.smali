.class final Lorg/ton/block/KeyMaxLtTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "KeyMaxLt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/KeyMaxLt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyMaxLt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyMaxLt.kt\norg/ton/block/KeyMaxLtTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2,2:48\n86#3:50\n*S KotlinDebug\n*F\n+ 1 KeyMaxLt.kt\norg/ton/block/KeyMaxLtTlbConstructor\n*L\n34#1:48,2\n41#1:50\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/KeyMaxLtTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/KeyMaxLtTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/KeyMaxLtTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/KeyMaxLtTlbConstructor;->INSTANCE:Lorg/ton/block/KeyMaxLtTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ key:Bool max_end_lt:uint64 = KeyMaxLt;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/KeyMaxLtTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/KeyMaxLt;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/KeyMaxLt;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v0

    .line 43
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v1

    .line 44
    new-instance p1, Lorg/ton/block/KeyMaxLt;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/ton/block/KeyMaxLt;-><init>(ZJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/KeyMaxLt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/KeyMaxLtTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/KeyMaxLt;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/KeyMaxLt;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lorg/ton/block/KeyMaxLt;->getKey()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 36
    invoke-virtual {p2}, Lorg/ton/block/KeyMaxLt;->getMaxEndLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
