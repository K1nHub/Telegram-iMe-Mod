.class public final Lorg/ton/hashmap/Unary$Companion;
.super Ljava/lang/Object;
.source "Unary.kt"

# interfaces
.implements Lorg/ton/tlb/TlbNegatedCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/Unary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbNegatedCodec<",
        "Lorg/ton/hashmap/Unary;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/hashmap/UnaryTlbCombinator;->INSTANCE:Lorg/ton/hashmap/UnaryTlbCombinator;

    iput-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/hashmap/Unary$Companion;-><init>()V

    return-void
.end method

.method private final synthetic get$cachedSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 17
    invoke-static {}, Lorg/ton/hashmap/Unary;->access$get$cachedSerializer$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
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
            "Lorg/ton/hashmap/Unary;",
            ">;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbNegatedCombinator;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/Unary$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/Unary;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/Unary$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/Unary;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/hashmap/Unary;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/Unary;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/Unary;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbNegatedCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/hashmap/Unary;

    return-object p1
.end method

.method public final of(I)Lorg/ton/hashmap/Unary;
    .locals 3

    .line 20
    sget-object v0, Lorg/ton/hashmap/UnaryZero;->INSTANCE:Lorg/ton/hashmap/UnaryZero;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 22
    new-instance v2, Lorg/ton/hashmap/UnarySuccess;

    invoke-direct {v2, v0}, Lorg/ton/hashmap/UnarySuccess;-><init>(Lorg/ton/hashmap/Unary;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/hashmap/Unary;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/ton/hashmap/Unary$Companion;->get$cachedSerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/hashmap/Unary;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/Unary$Companion;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/Unary;)I

    move-result p1

    return p1
.end method

.method public storeNegatedTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/Unary;)I
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbNegatedCombinator;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/hashmap/Unary;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/Unary$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/Unary;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/Unary;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/hashmap/Unary$Companion;->$$delegate_0:Lorg/ton/hashmap/UnaryTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbNegatedCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
