.class public interface abstract Lorg/ton/bitstring/MutableBitString;
.super Ljava/lang/Object;
.source "MutableBitString.kt"

# interfaces
.implements Lorg/ton/bitstring/BitString;


# virtual methods
.method public abstract plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/MutableBitString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/ton/bitstring/MutableBitString;"
        }
    .end annotation
.end method

.method public abstract plus(Z)Lorg/ton/bitstring/MutableBitString;
.end method

.method public abstract plus([B)Lorg/ton/bitstring/MutableBitString;
.end method

.method public abstract plus([Z)Lorg/ton/bitstring/MutableBitString;
.end method
