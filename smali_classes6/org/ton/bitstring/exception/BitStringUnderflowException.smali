.class public final Lorg/ton/bitstring/exception/BitStringUnderflowException;
.super Ljava/lang/RuntimeException;
.source "exceptions.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BitString underflow"

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
