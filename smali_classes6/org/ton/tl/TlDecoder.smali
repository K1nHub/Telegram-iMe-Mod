.class public interface abstract Lorg/ton/tl/TlDecoder;
.super Ljava/lang/Object;
.source "TlDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tl/TlDecoder$DefaultImpls;
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
.method public abstract decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlReader;",
            ")TT;"
        }
    .end annotation
.end method
