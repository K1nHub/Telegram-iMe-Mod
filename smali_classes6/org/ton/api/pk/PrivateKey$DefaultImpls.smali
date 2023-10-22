.class public final Lorg/ton/api/pk/PrivateKey$DefaultImpls;
.super Ljava/lang/Object;
.source "pk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pk/PrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static toAdnlIdShort(Lorg/ton/api/pk/PrivateKey;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 0

    .line 14
    invoke-interface {p0}, Lorg/ton/api/pk/PrivateKey;->publicKey()Lorg/ton/api/pub/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Lorg/ton/api/pub/PublicKey;->toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p0

    return-object p0
.end method
