.class final Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ed25519.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/api/pk/PrivateKeyEd25519Impl;-><init>(Lorg/ton/tl/ByteString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/api/pub/PublicKeyEd25519;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/api/pk/PrivateKeyEd25519Impl;


# direct methods
.method constructor <init>(Lorg/ton/api/pk/PrivateKeyEd25519Impl;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;->this$0:Lorg/ton/api/pk/PrivateKeyEd25519Impl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;->invoke()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 2

    .line 64
    new-instance v0, Lorg/ton/api/pub/PublicKeyEd25519;

    iget-object v1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;->this$0:Lorg/ton/api/pk/PrivateKeyEd25519Impl;

    invoke-virtual {v1}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->getKey()Lorg/ton/tl/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/ton/crypto/Ed25519;->publicKey([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKeyEd25519;-><init>([B)V

    return-object v0
.end method
