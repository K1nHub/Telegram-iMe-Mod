.class final Lorg/ton/hashmap/AhmeEmptyImpl;
.super Ljava/lang/Object;
.source "HashmapAugE.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
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


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITY;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->n:I

    .line 84
    iput-object p2, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->extra:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/hashmap/AhmeEmptyImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/AhmeEmptyImpl;

    iget v1, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->n:I

    iget v3, p1, Lorg/ton/hashmap/AhmeEmptyImpl;->n:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->extra:Ljava/lang/Object;

    iget-object p1, p1, Lorg/ton/hashmap/AhmeEmptyImpl;->extra:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 83
    iget v0, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->n:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->n:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmeEmptyImpl;->extra:Ljava/lang/Object;

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
    .locals 2
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

    .line 88
    new-instance v0, Lorg/ton/hashmap/AhmnNodeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/AhmnNodeIterator;-><init>(Lorg/ton/hashmap/HashmapAug$AhmEdge;)V

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty$DefaultImpls;->print(Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 90
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
