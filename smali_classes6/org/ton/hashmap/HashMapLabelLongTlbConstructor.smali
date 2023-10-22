.class final Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;
.super Lorg/ton/tlb/TlbNegatedConstructor;
.source "HmlLong.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashMapLabelLongTlbConstructor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedConstructor<",
        "Lorg/ton/hashmap/HmlLong;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlLong.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlLong.kt\norg/ton/hashmap/HashMapLabelLongTlbConstructor\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n*L\n1#1,61:1\n13#2:62\n*S KotlinDebug\n*F\n+ 1 HmlLong.kt\norg/ton/hashmap/HashMapLabelLongTlbConstructor\n*L\n58#1:62\n*E\n"
.end annotation


# static fields
.field private static final ID:Lorg/ton/bitstring/BitString;


# instance fields
.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x2

    new-array v1, v0, [Z

    .line 58
    fill-array-data v1, :array_0

    .line 13
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 58
    sput-object v0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 38
    sget-object v0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->ID:Lorg/ton/bitstring/BitString;

    const-string v1, "hml_long$10 {m:#} n:(#<= m) s:(n * Bit) = HmLabel ~n m;"

    .line 36
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 35
    iput p1, p0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->m:I

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
            "Lorg/ton/hashmap/HmlLong;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v0, p0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->m:I

    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 53
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 54
    new-instance v1, Lorg/ton/tlb/TlbNegatedResult;

    new-instance v2, Lorg/ton/hashmap/HmlLong;

    invoke-direct {v2, v0, p1}, Lorg/ton/hashmap/HmlLong;-><init>(ILorg/ton/bitstring/BitString;)V

    invoke-direct {v1, v0, v2}, Lorg/ton/tlb/TlbNegatedResult;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/hashmap/HmlLong;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlLong;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlLong;)I
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlLong;->getN()I

    move-result v0

    iget v1, p0, Lorg/ton/hashmap/HashMapLabelLongTlbConstructor;->m:I

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    .line 45
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlLong;->getS()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 46
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlLong;->getN()I

    move-result p1

    return p1
.end method
