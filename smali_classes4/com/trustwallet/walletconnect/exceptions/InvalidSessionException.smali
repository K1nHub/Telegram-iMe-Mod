.class public final Lcom/trustwallet/walletconnect/exceptions/InvalidSessionException;
.super Ljava/lang/Exception;
.source "InvalidSessionException.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Invalid session"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
