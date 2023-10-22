.class public interface abstract Lorg/ton/hashmap/HashmapAugNode$AhmnFork;
.super Ljava/lang/Object;
.source "HashmapAugNode.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAugNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HashmapAugNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AhmnFork"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;,
        Lorg/ton/hashmap/HashmapAugNode$AhmnFork$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/hashmap/HashmapAugNode<",
        "TX;TY;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->Companion:Lorg/ton/hashmap/HashmapAugNode$AhmnFork$Companion;

    return-void
.end method


# virtual methods
.method public abstract getExtra()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TY;"
        }
    .end annotation
.end method

.method public abstract getLeft()Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end method

.method public abstract getN()I
.end method

.method public abstract getRight()Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;>;"
        }
    .end annotation
.end method

.method public abstract loadLeft()Lorg/ton/hashmap/HashmapAug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation
.end method

.method public abstract loadRight()Lorg/ton/hashmap/HashmapAug;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAug<",
            "TX;TY;>;"
        }
    .end annotation
.end method
