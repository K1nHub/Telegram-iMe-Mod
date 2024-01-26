.class final Lorg/ton/tlb/TlbCombinator$TlbTrie;
.super Ljava/lang/Object;
.source "TlbCombinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tlb/TlbCombinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TlbTrie"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private left:Lorg/ton/tlb/TlbCombinator$TlbTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator$TlbTrie<",
            "TT;>;"
        }
    .end annotation
.end field

.field private right:Lorg/ton/tlb/TlbCombinator$TlbTrie;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator$TlbTrie<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/ton/tlb/TlbCombinator$TlbTrie;-><init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCombinator$TlbTrie<",
            "TT;>;",
            "Lorg/ton/tlb/TlbCombinator$TlbTrie<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    .line 84
    iput-object p2, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    .line 85
    iput-object p3, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 82
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/tlb/TlbCombinator$TlbTrie;-><init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;

    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    iget-object v3, p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    iget-object v3, p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    iget-object p1, p1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final get(Lorg/ton/bitstring/BitString;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "I)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    move-object v1, p0

    :goto_0
    if-ge p2, v0, :cond_1

    .line 106
    invoke-interface {p1, p2}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, v1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 111
    :cond_0
    iget-object v2, v1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    if-eqz v2, :cond_1

    :goto_1
    move-object v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, v1, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator$TlbTrie;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/ton/tlb/TlbCombinator$TlbTrie;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final set(Lorg/ton/bitstring/BitString;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 90
    invoke-interface {p1, v1}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v3, v2, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    if-nez v3, :cond_1

    new-instance v3, Lorg/ton/tlb/TlbCombinator$TlbTrie;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/ton/tlb/TlbCombinator$TlbTrie;-><init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    iput-object v3, v2, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    goto :goto_1

    .line 95
    :cond_0
    iget-object v3, v2, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    if-nez v3, :cond_1

    new-instance v3, Lorg/ton/tlb/TlbCombinator$TlbTrie;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/ton/tlb/TlbCombinator$TlbTrie;-><init>(Lorg/ton/tlb/TlbCombinator$TlbTrie;Lorg/ton/tlb/TlbCombinator$TlbTrie;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    iput-object v3, v2, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    :cond_1
    :goto_1
    move-object v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    iput-object p2, v2, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TlbTrie(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->left:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->right:Lorg/ton/tlb/TlbCombinator$TlbTrie;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/tlb/TlbCombinator$TlbTrie;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
