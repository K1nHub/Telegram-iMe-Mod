.class public final Lorg/ton/hashmap/HashmapAug$AhmEdge$DefaultImpls;
.super Ljava/lang/Object;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAug$AhmEdge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/HashmapAug$AhmEdge$DefaultImpls\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,218:1\n86#2,2:219\n82#2,3:221\n88#2:224\n*S KotlinDebug\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/HashmapAug$AhmEdge$DefaultImpls\n*L\n29#1:219,2\n30#1:221,3\n29#1:224\n*E\n"
.end annotation


# direct methods
.method public static print(Lorg/ton/hashmap/HashmapAug$AhmEdge;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
            "TX;TY;>;",
            "Lorg/ton/tlb/TlbPrettyPrinter;",
            ")",
            "Lorg/ton/tlb/TlbPrettyPrinter;"
        }
    .end annotation

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahm_edge"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 31
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 32
    invoke-interface {p0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object p0

    const-string v1, "node"

    invoke-virtual {v0, v1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 p0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-static {v0, p0, v1, p0}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method
