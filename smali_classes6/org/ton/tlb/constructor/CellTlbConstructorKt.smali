.class public final Lorg/ton/tlb/constructor/CellTlbConstructorKt;
.super Ljava/lang/Object;
.source "CellTlbConstructor.kt"


# direct methods
.method public static final tlbCodec(Lorg/ton/cell/Cell$Companion;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell$Companion;",
            ")",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lorg/ton/tlb/constructor/CellTlbConstructor;->INSTANCE:Lorg/ton/tlb/constructor/CellTlbConstructor;

    return-object p0
.end method

.method public static final tlbCodec(Lorg/ton/cell/Cell$Companion;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/cell/Cell$Companion;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p0, Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;

    invoke-direct {p0, p1}, Lorg/ton/tlb/constructor/CellReferencedTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V

    return-object p0
.end method
