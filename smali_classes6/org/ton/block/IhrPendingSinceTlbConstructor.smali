.class final Lorg/ton/block/IhrPendingSinceTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "IhrPendingSince.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/IhrPendingSince;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIhrPendingSince.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IhrPendingSince.kt\norg/ton/block/IhrPendingSinceTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,36:1\n131#2,2:37\n86#3:39\n*S KotlinDebug\n*F\n+ 1 IhrPendingSince.kt\norg/ton/block/IhrPendingSinceTlbConstructor\n*L\n25#1:37,2\n31#1:39\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/IhrPendingSinceTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/IhrPendingSinceTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/IhrPendingSinceTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/IhrPendingSinceTlbConstructor;->INSTANCE:Lorg/ton/block/IhrPendingSinceTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ihr_pending$_ import_lt:uint64 = IhrPendingSince;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 19
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/ton/block/IhrPendingSinceTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IhrPendingSince;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IhrPendingSince;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v0

    .line 33
    new-instance p1, Lorg/ton/block/IhrPendingSince;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/ton/block/IhrPendingSince;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lorg/ton/block/IhrPendingSince;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IhrPendingSinceTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IhrPendingSince;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IhrPendingSince;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lorg/ton/block/IhrPendingSince;->getImport_lt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
