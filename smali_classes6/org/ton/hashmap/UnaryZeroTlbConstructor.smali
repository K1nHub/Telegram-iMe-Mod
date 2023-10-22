.class final Lorg/ton/hashmap/UnaryZeroTlbConstructor;
.super Lorg/ton/tlb/TlbNegatedConstructor;
.source "Unary.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbNegatedConstructor<",
        "Lorg/ton/hashmap/UnaryZero;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/UnaryZeroTlbConstructor;

.field private static final result:Lorg/ton/tlb/TlbNegatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbNegatedResult<",
            "Lorg/ton/hashmap/UnaryZero;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/hashmap/UnaryZeroTlbConstructor;

    invoke-direct {v0}, Lorg/ton/hashmap/UnaryZeroTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/hashmap/UnaryZeroTlbConstructor;->INSTANCE:Lorg/ton/hashmap/UnaryZeroTlbConstructor;

    .line 54
    new-instance v0, Lorg/ton/tlb/TlbNegatedResult;

    sget-object v1, Lorg/ton/hashmap/UnaryZero;->INSTANCE:Lorg/ton/hashmap/UnaryZero;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/ton/tlb/TlbNegatedResult;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lorg/ton/hashmap/UnaryZeroTlbConstructor;->result:Lorg/ton/tlb/TlbNegatedResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "unary_zero$0 = Unary ~0;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 51
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbNegatedResult<",
            "Lorg/ton/hashmap/UnaryZero;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object p1, Lorg/ton/hashmap/UnaryZeroTlbConstructor;->result:Lorg/ton/tlb/TlbNegatedResult;

    return-object p1
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p2, Lorg/ton/hashmap/UnaryZero;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/UnaryZeroTlbConstructor;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/UnaryZero;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/UnaryZero;)I
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
