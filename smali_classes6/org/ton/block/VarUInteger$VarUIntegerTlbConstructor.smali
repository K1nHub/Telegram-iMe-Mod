.class final Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "VarUInteger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/VarUInteger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VarUIntegerTlbConstructor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/VarUInteger;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVarUInteger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VarUInteger.kt\norg/ton/block/VarUInteger$VarUIntegerTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,128:1\n131#2,2:129\n86#3:131\n*S KotlinDebug\n*F\n+ 1 VarUInteger.kt\norg/ton/block/VarUInteger$VarUIntegerTlbConstructor\n*L\n114#1:129,2\n121#1:131\n*E\n"
.end annotation


# instance fields
.field private final n:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-string v0, "var_uint$_ {n:#} len:(#< n) value:(uint (len * 8)) = VarUInteger n;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 109
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    iput p1, p0, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;->n:I

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/VarUInteger;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/VarUInteger;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget v0, p0, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;->n:I

    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLes(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    .line 123
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 124
    new-instance v1, Lorg/ton/block/VarUInteger;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/VarUInteger;-><init>(ILjava/math/BigInteger;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 107
    check-cast p2, Lorg/ton/block/VarUInteger;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/VarUInteger;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/VarUInteger;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lorg/ton/block/VarUInteger;->len()I

    move-result v0

    iget v1, p0, Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;->n:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLes(II)Lorg/ton/cell/CellBuilder;

    .line 116
    invoke-virtual {p2}, Lorg/ton/block/VarUInteger;->value()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/VarUInteger;->len()I

    move-result p2

    mul-int/lit8 p2, p2, 0x8

    invoke-interface {p1, v0, p2}, Lorg/ton/cell/CellBuilder;->storeUInt(Ljava/math/BigInteger;I)Lorg/ton/cell/CellBuilder;

    return-void
.end method
