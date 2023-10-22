.class public interface abstract Lorg/ton/api/pub/PublicKey;
.super Ljava/lang/Object;
.source "pub.kt"

# interfaces
.implements Lorg/ton/crypto/Encryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pub/PublicKey$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/crypto/Encryptor;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pub/PublicKey$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/pub/PublicKey$Companion;->$$INSTANCE:Lorg/ton/api/pub/PublicKey$Companion;

    sput-object v0, Lorg/ton/api/pub/PublicKey;->Companion:Lorg/ton/api/pub/PublicKey$Companion;

    return-void
.end method


# virtual methods
.method public abstract toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
.end method
