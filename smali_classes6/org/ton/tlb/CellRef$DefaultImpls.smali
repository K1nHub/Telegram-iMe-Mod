.class public final Lorg/ton/tlb/CellRef$DefaultImpls;
.super Ljava/lang/Object;
.source "CellRef.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/CellRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRef$DefaultImpls\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,112:1\n86#2,3:113\n*S KotlinDebug\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRef$DefaultImpls\n*L\n31#1:113,3\n*E\n"
.end annotation


# direct methods
.method public static hash(Lorg/ton/tlb/CellRef;)Lorg/ton/bitstring/BitString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/CellRef<",
            "+TT;>;)",
            "Lorg/ton/bitstring/BitString;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-interface {p0, v0}, Lorg/ton/tlb/CellRef;->hash(Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0
.end method

.method public static hash(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;)Lorg/ton/bitstring/BitString;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/CellRef<",
            "+TT;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;)",
            "Lorg/ton/bitstring/BitString;"
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 22
    invoke-static {p0, p1, v0, p1}, Lorg/ton/tlb/CellRef$DefaultImpls;->toCell$default(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;ILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lorg/ton/cell/Cell$DefaultImpls;->hash$default(Lorg/ton/cell/Cell;IILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0
.end method

.method public static print(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tlb/CellRef<",
            "+TT;>;",
            "Lorg/ton/tlb/TlbPrettyPrinter;",
            ")",
            "Lorg/ton/tlb/TlbPrettyPrinter;"
        }
    .end annotation

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 28
    instance-of v0, p0, Lorg/ton/tlb/TlbObject;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Lorg/ton/tlb/TlbObject;

    invoke-interface {p0, p1}, Lorg/ton/tlb/TlbObject;->print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->type(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    :goto_0
    return-object p1
.end method

.method public static synthetic toCell$default(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;ILjava/lang/Object;)Lorg/ton/cell/Cell;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 19
    :cond_0
    invoke-interface {p0, p1}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toCell"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
