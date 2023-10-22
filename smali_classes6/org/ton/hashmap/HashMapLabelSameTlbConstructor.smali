.class final Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;
.super Lorg/ton/tlb/TlbNegatedConstructor;
.source "HmlSame.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapLabelSameTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedConstructor<",
        "Lorg/ton/hashmap/HmlSame;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlSame.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HashMapLabelSameTlbConstructor\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,79:1\n13#2:80\n*S KotlinDebug\n*F\n+ 1 HmlSame.kt\norg/ton/hashmap/HashMapLabelSameTlbConstructor\n*L\n76#1:80\n*E\n"
.end annotation


# static fields
.field private static final ID:Lorg/ton/bitstring/BitString;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 76
    fill-array-data v1, :array_0

    .line 13
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 76
    sput-object v0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 56
    sget-object v0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    const-string v1, "hml_same$11 {m:#} v:Bit n:(#<= m) = HmLabel ~n m;"

    .line 54
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 53
    iput p1, p0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->m:I

    return-void
.end method


# virtual methods
.method public loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbNegatedResult<",
            "Lorg/ton/hashmap/HmlSame;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v0

    .line 71
    iget v1, p0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->m:I

    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 72
    new-instance v1, Lorg/ton/tlb/TlbNegatedResult;

    new-instance v2, Lorg/ton/hashmap/HmlSame;

    invoke-direct {v2, v0, p1}, Lorg/ton/hashmap/HmlSame;-><init>(ZI)V

    invoke-direct {v1, p1, v2}, Lorg/ton/tlb/TlbNegatedResult;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 52
    check-cast p2, Lorg/ton/hashmap/HmlSame;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlSame;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlSame;)I
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlSame;->getV()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 63
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlSame;->getN()I

    move-result v0

    iget v1, p0, Lorg/ton/hashmap/HashMapLabelSameTlbConstructor;->m:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    .line 64
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlSame;->getN()I

    move-result p1

    return p1
.end method
