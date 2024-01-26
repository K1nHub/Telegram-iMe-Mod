.class public abstract Lorg/ton/tlb/TlbNegatedConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TlbConstructor.kt"

# interfaces
.implements Lorg/ton/tlb/TlbNegatedCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "TT;>;",
        "Lorg/ton/tlb/TlbNegatedCodec<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "schema"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 71
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbNegatedConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-interface {p0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/tlb/TlbNegatedResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p0, p1, p2}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    return-void
.end method
