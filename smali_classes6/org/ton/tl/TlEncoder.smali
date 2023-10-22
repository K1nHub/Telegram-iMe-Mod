.class public interface abstract Lorg/ton/tl/TlEncoder;
.super Ljava/lang/Object;
.source "TlEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/tl/TlEncoder$DefaultImpls;
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
.method public abstract encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlWriter;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlWriter;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract encodeToByteArray(Ljava/lang/Object;Z)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)[B"
        }
    .end annotation
.end method
