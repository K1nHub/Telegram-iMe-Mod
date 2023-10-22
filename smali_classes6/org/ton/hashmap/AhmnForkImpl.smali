.class final Lorg/ton/hashmap/AhmnForkImpl;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugNode$AhmnFork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
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

.field private final left:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end field

.field private final n:I

.field private final right:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;TY;)V"
        }
    .end annotation

    const-string v0, "left"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/ton/hashmap/AhmnForkImpl;->n:I

    .line 102
    iput-object p2, p0, Lorg/ton/hashmap/AhmnForkImpl;->left:Lorg/ton/tlb/CellRef;

    .line 103
    iput-object p3, p0, Lorg/ton/hashmap/AhmnForkImpl;->right:Lorg/ton/tlb/CellRef;

    .line 104
    iput-object p4, p0, Lorg/ton/hashmap/AhmnForkImpl;->extra:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/hashmap/AhmnForkImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/AhmnForkImpl;

    iget v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->n:I

    iget v3, p1, Lorg/ton/hashmap/AhmnForkImpl;->n:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->left:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/hashmap/AhmnForkImpl;->left:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->right:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/hashmap/AhmnForkImpl;->right:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->extra:Ljava/lang/Object;

    iget-object p1, p1, Lorg/ton/hashmap/AhmnForkImpl;->extra:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/ton/hashmap/AhmnForkImpl;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getLeft()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/ton/hashmap/AhmnForkImpl;->left:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/ton/hashmap/AhmnForkImpl;->n:I

    return v0
.end method

.method public getRight()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/ton/hashmap/AhmnForkImpl;->right:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/hashmap/AhmnForkImpl;->n:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->left:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->right:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmnForkImpl;->extra:Ljava/lang/Object;

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

.method public loadLeft()Lorg/ton/hashmap/HashmapAug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls;->loadLeft(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)Lorg/ton/hashmap/HashmapAug;

    move-result-object v0

    return-object v0
.end method

.method public loadRight()Lorg/ton/hashmap/HashmapAug;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls;->loadRight(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)Lorg/ton/hashmap/HashmapAug;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls;->print(Lorg/ton/hashmap/HashmapAugNode$AhmnFork;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 106
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
