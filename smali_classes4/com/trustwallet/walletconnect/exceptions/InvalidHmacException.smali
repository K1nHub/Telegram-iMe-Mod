.class public final Lcom/trustwallet/walletconnect/exceptions/InvalidHmacException;
.super Ljava/lang/Exception;
.source "InvalidHmacException.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Received and computed HMAC doesn\'t mach"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
