.class public final Lorg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugNode$AhmnFork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAugNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAugNode.kt\norg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,150:1\n86#2,2:151\n82#2,3:153\n88#2:156\n*S KotlinDebug\n*F\n+ 1 HashmapAugNode.kt\norg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls\n*L\n53#1:151,2\n54#1:153,3\n53#1:156\n*E\n"
.end annotation


# direct methods
.method public static loadLeft(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)Lorg/ton/hashmap/HashmapAug;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;)",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ton/hashmap/HashmapAug;

    return-object p0
.end method

.method public static loadRight(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)Lorg/ton/hashmap/HashmapAug;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;)",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object p0

    invoke-interface {p0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ton/hashmap/HashmapAug;

    return-object p0
.end method

.method public static print(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;",
            "Lorg/ton/tlb/TlbPrettyPrinter;",
            ")",
            "Lorg/ton/tlb/TlbPrettyPrinter;"
        }
    .end annotation

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahmn_fork"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 55
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v1

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object v1

    const-string v2, "right"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 57
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getExtra()Ljava/lang/Object;

    move-result-object p0

    const-string v1, "extra"

    invoke-virtual {v0, v1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, p0, v1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method
