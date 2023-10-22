.class public interface abstract Lorg/ton/api/pk/PrivateKeyEd25519;
.super Ljava/lang/Object;
.source "ed25519.kt"

# interfaces
.implements Lorg/ton/api/pk/PrivateKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pk/PrivateKeyEd25519$Companion;,
        Lorg/ton/api/pk/PrivateKeyEd25519$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->$$INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    sput-object v0, Lorg/ton/api/pk/PrivateKeyEd25519;->Companion:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    return-void
.end method


# virtual methods
.method public abstract getKey()Lorg/ton/tl/ByteString;
.end method

.method public abstract publicKey()Lorg/ton/api/pub/PublicKeyEd25519;
.end method
