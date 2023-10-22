.class public final Lorg/ton/tlb/TlbLoader$DefaultImpls;
.super Ljava/lang/Object;
.source "TlbCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/TlbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static loadTlb(Lorg/ton/tlb/TlbLoader;Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/TlbLoader<",
            "TT;>;",
            "Lorg/ton/cell/Cell;",
            ")TT;"
        }
    .end annotation

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
