.class public interface abstract Lorg/ton/boc/BagOfCells;
.super Ljava/lang/Object;
.source "BagOfCells.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/boc/BagOfCells$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/ton/cell/Cell;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/boc/BagOfCells$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/boc/BagOfCells$Companion;->$$INSTANCE:Lorg/ton/boc/BagOfCells$Companion;

    sput-object v0, Lorg/ton/boc/BagOfCells;->Companion:Lorg/ton/boc/BagOfCells$Companion;

    return-void
.end method


# virtual methods
.method public abstract getRoots()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ton/cell/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toByteArray()[B
.end method
