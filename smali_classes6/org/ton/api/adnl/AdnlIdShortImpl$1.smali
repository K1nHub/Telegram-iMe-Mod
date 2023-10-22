.class final Lorg/ton/api/adnl/AdnlIdShortImpl$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AdnlIdShort.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/api/adnl/AdnlIdShortImpl;-><init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/api/adnl/AdnlIdShortImpl;


# direct methods
.method constructor <init>(Lorg/ton/api/adnl/AdnlIdShortImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/api/adnl/AdnlIdShortImpl$1;->this$0:Lorg/ton/api/adnl/AdnlIdShortImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShortImpl$1;->this$0:Lorg/ton/api/adnl/AdnlIdShortImpl;

    invoke-virtual {v0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->getId()[B

    move-result-object v0

    invoke-virtual {v0}, [B->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl$1;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
