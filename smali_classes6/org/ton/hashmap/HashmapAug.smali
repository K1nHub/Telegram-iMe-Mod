.class public interface abstract Lorg/ton/hashmap/HashmapAug;
.super Ljava/lang/Object;
.source "HashmapAug.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HashmapAug$AhmEdge;,
        Lorg/ton/hashmap/HashmapAug$Companion;
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
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HashmapAug$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/hashmap/HashmapAug$Companion;->$$INSTANCE:Lorg/ton/hashmap/HashmapAug$Companion;

    sput-object v0, Lorg/ton/hashmap/HashmapAug;->Companion:Lorg/ton/hashmap/HashmapAug$Companion;

    return-void
.end method


# virtual methods
.method public abstract get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            ")",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
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
.end method
