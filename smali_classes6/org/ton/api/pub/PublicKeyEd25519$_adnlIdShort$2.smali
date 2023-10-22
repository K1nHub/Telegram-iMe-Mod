.class final Lorg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ed25519.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/api/pub/PublicKeyEd25519;-><init>(Lorg/ton/tl/ByteString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/api/adnl/AdnlIdShort;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ned25519.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ed25519.kt\norg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2\n+ 2 AdnlIdShort.kt\norg/ton/api/adnl/AdnlIdShortKt\n*L\n1#1,55:1\n12#2:56\n*S KotlinDebug\n*F\n+ 1 ed25519.kt\norg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2\n*L\n28#1:56\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/api/pub/PublicKeyEd25519;


# direct methods
.method constructor <init>(Lorg/ton/api/pub/PublicKeyEd25519;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2;->this$0:Lorg/ton/api/pub/PublicKeyEd25519;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2;->invoke()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 2

    .line 28
    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519;->Companion:Lorg/ton/api/pub/PublicKeyEd25519$Companion;

    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyEd25519$_adnlIdShort$2;->this$0:Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-virtual {v0, v1}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->hash(Lorg/ton/api/pub/PublicKeyEd25519;)[B

    move-result-object v0

    .line 12
    sget-object v1, Lorg/ton/api/adnl/AdnlIdShort;->Companion:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->of([B)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method
