.class public abstract Lorg/ton/hashmap/HmEdgeIterator$WalkState;
.super Ljava/lang/Object;
.source "HmEdge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmEdgeIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WalkState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;,
        Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;
    }
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
.field private final node:Lorg/ton/hashmap/HashMapNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/ton/hashmap/HashMapNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState;->node:Lorg/ton/hashmap/HashMapNode;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/hashmap/HashMapNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/ton/hashmap/HmEdgeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashMapNode;)V

    return-void
.end method


# virtual methods
.method public abstract step()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;>;"
        }
    .end annotation
.end method
