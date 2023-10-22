.class public interface abstract Lorg/ton/tlb/providers/TlbConstructorProvider;
.super Ljava/lang/Object;
.source "TlbConstructorProvider.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tlb/providers/TlbConstructorProvider$DefaultImpls;
    }
.end annotation

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
.method public abstract tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "TT;>;"
        }
    .end annotation
.end method
