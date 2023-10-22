.class final Lorg/ton/hashmap/AhmeRootImpl;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugE$AhmeRoot;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/hashmap/HashmapAugE$AhmeRoot<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field private final extra:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TY;"
        }
    .end annotation
.end field

.field private final n:I

.field private final root:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/CellRef;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;TY;)V"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lorg/ton/hashmap/AhmeRootImpl;->n:I

    .line 95
    iput-object p2, p0, Lorg/ton/hashmap/AhmeRootImpl;->root:Lorg/ton/tlb/CellRef;

    .line 96
    iput-object p3, p0, Lorg/ton/hashmap/AhmeRootImpl;->extra:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/hashmap/AhmeRootImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/AhmeRootImpl;

    iget v1, p0, Lorg/ton/hashmap/AhmeRootImpl;->n:I

    iget v3, p1, Lorg/ton/hashmap/AhmeRootImpl;->n:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/AhmeRootImpl;->root:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/hashmap/AhmeRootImpl;->root:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/hashmap/AhmeRootImpl;->extra:Ljava/lang/Object;

    iget-object p1, p1, Lorg/ton/hashmap/AhmeRootImpl;->extra:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            ")",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmeRootImpl;->getRoot()Lorg/ton/tlb/CellRef;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HashmapAug;

    invoke-interface {v0, p1}, Lorg/ton/hashmap/HashmapAug;->get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    move-result-object p1

    return-object p1
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/ton/hashmap/AhmeRootImpl;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/ton/hashmap/AhmeRootImpl;->n:I

    return v0
.end method

.method public getRoot()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/ton/hashmap/AhmeRootImpl;->root:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/hashmap/AhmeRootImpl;->n:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmeRootImpl;->root:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmeRootImpl;->extra:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmeRootImpl;->getRoot()Lorg/ton/tlb/CellRef;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HashmapAug;

    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lorg/ton/hashmap/HashmapAugE$AhmeRoot$DefaultImpls;->print(Lorg/ton/hashmap/HashmapAugE$AhmeRoot;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
