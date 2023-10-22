.class public interface abstract Lorg/ton/tlb/TlbNegatedLoader;
.super Ljava/lang/Object;
.source "TlbCodec.kt"

# interfaces
.implements Lorg/ton/tlb/TlbLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbLoader<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/tlb/TlbNegatedResult<",
            "TT;>;"
        }
    .end annotation
.end method
