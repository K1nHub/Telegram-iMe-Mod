.class public final Lorg/ton/tlb/providers/TlbConstructorProvider$DefaultImpls;
.super Ljava/lang/Object;
.source "TlbConstructorProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/providers/TlbConstructorProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static loadTlb(Lorg/ton/tlb/providers/TlbConstructorProvider;Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/providers/TlbConstructorProvider<",
            "TT;>;",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lorg/ton/tlb/providers/TlbConstructorProvider;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static storeTlb(Lorg/ton/tlb/providers/TlbConstructorProvider;Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/providers/TlbConstructorProvider<",
            "TT;>;",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lorg/ton/tlb/providers/TlbConstructorProvider;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lorg/ton/tlb/TlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
