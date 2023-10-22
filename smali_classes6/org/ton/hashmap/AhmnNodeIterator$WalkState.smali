.class public abstract Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
.super Ljava/lang/Object;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/AhmnNodeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WalkState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;,
        Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final node:Lorg/ton/hashmap/HashmapAugNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ton/hashmap/HashmapAugNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;->node:Lorg/ton/hashmap/HashmapAugNode;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/hashmap/HashmapAugNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashmapAugNode;)V

    return-void
.end method


# virtual methods
.method public getNode()Lorg/ton/hashmap/HashmapAugNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;->node:Lorg/ton/hashmap/HashmapAugNode;

    return-object v0
.end method

.method public abstract step()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;"
        }
    .end annotation
.end method
