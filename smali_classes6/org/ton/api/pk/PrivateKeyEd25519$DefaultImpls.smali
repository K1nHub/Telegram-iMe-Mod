.class public final Lorg/ton/api/pk/PrivateKeyEd25519$DefaultImpls;
.super Ljava/lang/Object;
.source "ed25519.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pk/PrivateKeyEd25519;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static toAdnlIdShort(Lorg/ton/api/pk/PrivateKeyEd25519;)Lorg/ton/api/adnl/AdnlIdShort;
    .locals 0

    .line 25
    invoke-static {p0}, Lorg/ton/api/pk/PrivateKey$DefaultImpls;->toAdnlIdShort(Lorg/ton/api/pk/PrivateKey;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object p0

    return-object p0
.end method
