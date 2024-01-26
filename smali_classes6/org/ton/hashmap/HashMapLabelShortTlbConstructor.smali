.class final Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;
.super Lorg/ton/tlb/TlbNegatedConstructor;
.source "HmlShort.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedConstructor<",
        "Lorg/ton/hashmap/HmlShort;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlShort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlShort.kt\norg/ton/hashmap/HashMapLabelShortTlbConstructor\n+ 2 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,62:1\n13#2:63\n64#3:64\n56#3:65\n*S KotlinDebug\n*F\n+ 1 HmlShort.kt\norg/ton/hashmap/HashMapLabelShortTlbConstructor\n*L\n43#1:63\n49#1:64\n57#1:65\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;

    invoke-direct {v0}, Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;->INSTANCE:Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 13
    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/ton/bitstring/BitString$Companion;->of([Z)Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "hml_short$0 {m:#} {n:#} len:(Unary ~n) s:(n * Bit) = HmLabel ~n m;"

    .line 41
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbNegatedResult<",
            "Lorg/ton/hashmap/HmlShort;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    .line 56
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component1()I

    move-result v1

    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/Unary;

    .line 58
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 59
    new-instance v2, Lorg/ton/tlb/TlbNegatedResult;

    new-instance v3, Lorg/ton/hashmap/HmlShort;

    invoke-direct {v3, v0, p1}, Lorg/ton/hashmap/HmlShort;-><init>(Lorg/ton/hashmap/Unary;Lorg/ton/bitstring/BitString;)V

    invoke-direct {v2, v1, v3}, Lorg/ton/tlb/TlbNegatedResult;-><init>(ILjava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p2, Lorg/ton/hashmap/HmlShort;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapLabelShortTlbConstructor;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlShort;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmlShort;)I
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmlShort;->getLen()Lorg/ton/hashmap/Unary;

    move-result-object v1

    .line 64
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 50
    invoke-virtual {p2}, Lorg/ton/hashmap/HmlShort;->getS()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return v0
.end method
