.class public final Lorg/ton/tlb/constructor/AnyTlbConstructor;
.super Ljava/lang/Object;
.source "AnyTlbConstructor.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/cell/Cell;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnyTlbConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyTlbConstructor.kt\norg/ton/tlb/constructor/AnyTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,22:1\n135#2,2:23\n*S KotlinDebug\n*F\n+ 1 AnyTlbConstructor.kt\norg/ton/tlb/constructor/AnyTlbConstructor\n*L\n16#1:23,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/tlb/constructor/AnyTlbConstructor;

    invoke-direct {v0}, Lorg/ton/tlb/constructor/AnyTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/tlb/constructor/AnyTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/AnyTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/AnyTlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/ton/tlb/constructor/AnyTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/cell/Cell;
    .locals 0

    .line 9
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/cell/Cell;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/cell/Cell;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getBitsPosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 18
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getRefs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->getRefsPosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadRefs(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/ton/cell/CellBuilder;->storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;

    .line 136
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lorg/ton/cell/Cell;

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/constructor/AnyTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/cell/Cell;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/cell/Cell;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p2}, Lorg/ton/cell/Cell;->getBits()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 12
    invoke-interface {p2}, Lorg/ton/cell/Cell;->getRefs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRefs(Ljava/util/Collection;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
