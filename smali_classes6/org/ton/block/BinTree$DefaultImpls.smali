.class public final Lorg/ton/block/BinTree$DefaultImpls;
.super Ljava/lang/Object;
.source "BinTree.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/BinTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static iterator(Lorg/ton/block/BinTree;)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/block/BinTree<",
            "TX;>;)",
            "Ljava/util/Iterator<",
            "TX;>;"
        }
    .end annotation

    .line 16
    invoke-interface {p0}, Lorg/ton/block/BinTree;->nodes()Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
