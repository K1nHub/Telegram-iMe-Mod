.class public interface abstract Lorg/ton/tlb/providers/TlbCombinatorProvider;
.super Ljava/lang/Object;
.source "TlbCombinatorProvider.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "TT;>;"
        }
    .end annotation
.end method
