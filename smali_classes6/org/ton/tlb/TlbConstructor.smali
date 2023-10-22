.class public abstract Lorg/ton/tlb/TlbConstructor;
.super Lorg/ton/tlb/AbstractTlbConstructor;
.source "TlbConstructor.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/AbstractTlbConstructor<",
        "TT;>;",
        "Lorg/ton/tlb/TlbCodec<",
        "TT;>;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "schema"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/AbstractTlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    return-void
.end method


# virtual methods
.method public loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")TT;"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lorg/ton/tlb/TlbCodec$DefaultImpls;->loadTlb(Lorg/ton/tlb/TlbCodec;Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lorg/ton/tlb/providers/TlbConstructorProvider$DefaultImpls;->loadTlb(Lorg/ton/tlb/providers/TlbConstructorProvider;Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Lorg/ton/tlb/providers/TlbConstructorProvider$DefaultImpls;->storeTlb(Lorg/ton/tlb/providers/TlbConstructorProvider;Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
