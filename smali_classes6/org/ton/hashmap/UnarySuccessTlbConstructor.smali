.class final Lorg/ton/hashmap/UnarySuccessTlbConstructor;
.super Lorg/ton/tlb/TlbNegatedConstructor;
.source "Unary.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedConstructor<",
        "Lorg/ton/hashmap/UnarySuccess;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Unary.kt\norg/ton/hashmap/UnarySuccessTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,59:1\n64#2:60\n56#2:61\n*S KotlinDebug\n*F\n+ 1 Unary.kt\norg/ton/hashmap/UnarySuccessTlbConstructor\n*L\n42#1:60\n46#1:61\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/UnarySuccessTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/UnarySuccessTlbConstructor;

    invoke-direct {v0}, Lorg/ton/hashmap/UnarySuccessTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/hashmap/UnarySuccessTlbConstructor;->INSTANCE:Lorg/ton/hashmap/UnarySuccessTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "unary_succ$1 {n:#} x:(Unary ~n) = Unary ~(n + 1);"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
            "Lorg/ton/hashmap/UnarySuccess;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    .line 56
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lorg/ton/tlb/TlbNegatedResult;->component1()I

    move-result v0

    invoke-virtual {p1}, Lorg/ton/tlb/TlbNegatedResult;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/Unary;

    .line 47
    new-instance v1, Lorg/ton/tlb/TlbNegatedResult;

    add-int/lit8 v0, v0, 0x1

    new-instance v2, Lorg/ton/hashmap/UnarySuccess;

    invoke-direct {v2, p1}, Lorg/ton/hashmap/UnarySuccess;-><init>(Lorg/ton/hashmap/Unary;)V

    invoke-direct {v1, v0, v2}, Lorg/ton/tlb/TlbNegatedResult;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p2, Lorg/ton/hashmap/UnarySuccess;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/UnarySuccessTlbConstructor;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/UnarySuccess;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/UnarySuccess;)I
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    invoke-virtual {p2}, Lorg/ton/hashmap/UnarySuccess;->getX()Lorg/ton/hashmap/Unary;

    move-result-object p2

    .line 64
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
