.class public interface abstract Lorg/ton/tlb/TlbNegatedStorer;
.super Ljava/lang/Object;
.source "TlbCodec.kt"

# interfaces
.implements Lorg/ton/tlb/TlbStorer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbStorer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "TT;)I"
        }
    .end annotation
.end method
