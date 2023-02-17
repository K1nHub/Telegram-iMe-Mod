.class public Lorg/web3j/utils/Assertions;
.super Ljava/lang/Object;
.source "Assertions.java"


# direct methods
.method public static verifyPrecondition(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
