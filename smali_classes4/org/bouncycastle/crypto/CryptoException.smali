.class public Lorg/bouncycastle/crypto/CryptoException;
.super Ljava/lang/Exception;


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
