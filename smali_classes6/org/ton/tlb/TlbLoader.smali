.class public interface abstract Lorg/ton/tlb/TlbLoader;
.super Ljava/lang/Object;
.source "TlbCodec.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/TlbLoader$DefaultImpls;
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


# virtual methods
.method public abstract loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/Cell;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")TT;"
        }
    .end annotation
.end method
