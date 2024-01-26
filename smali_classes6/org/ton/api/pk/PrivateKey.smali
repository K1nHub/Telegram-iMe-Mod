.class public interface abstract Lorg/ton/api/pk/PrivateKey;
.super Ljava/lang/Object;
.source "pk.kt"

# interfaces
.implements Lorg/ton/crypto/Decryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pk/PrivateKey$Companion;,
        Lorg/ton/api/pk/PrivateKey$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pk/PrivateKey$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/pk/PrivateKey$Companion;->$$INSTANCE:Lorg/ton/api/pk/PrivateKey$Companion;

    sput-object v0, Lorg/ton/api/pk/PrivateKey;->Companion:Lorg/ton/api/pk/PrivateKey$Companion;

    return-void
.end method


# virtual methods
.method public abstract publicKey()Lorg/ton/api/pub/PublicKey;
.end method
