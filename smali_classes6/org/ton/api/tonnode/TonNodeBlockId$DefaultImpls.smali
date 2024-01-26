.class public final Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;
.super Ljava/lang/Object;
.source "TonNodeBlockId.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/tonnode/TonNodeBlockId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static isMasterchain(Lorg/ton/api/tonnode/TonNodeBlockId;)Z
    .locals 1

    .line 25
    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->getWorkchain()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValid(Lorg/ton/api/tonnode/TonNodeBlockId;)Z
    .locals 1

    .line 27
    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->getWorkchain()I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidFull(Lorg/ton/api/tonnode/TonNodeBlockId;)Z
    .locals 6

    .line 30
    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->getShard()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->getShard()J

    move-result-wide v0

    const-wide/16 v4, 0x7

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->isMasterchain()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lorg/ton/api/tonnode/TonNodeBlockId;->getShard()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
