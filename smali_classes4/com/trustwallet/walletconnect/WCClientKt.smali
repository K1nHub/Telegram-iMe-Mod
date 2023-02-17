.class public final Lcom/trustwallet/walletconnect/WCClientKt;
.super Ljava/lang/Object;
.source "WCClient.kt"


# direct methods
.method public static final synthetic access$generateId()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/trustwallet/walletconnect/WCClientKt;->generateId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final generateId()J
    .locals 2

    .line 404
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method
