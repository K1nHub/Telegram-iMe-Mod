.class final Lorg/ton/tlb/AbstractTlbConstructor$id$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TlbConstructor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/AbstractTlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/bitstring/BitString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $id:Lorg/ton/bitstring/BitString;

.field final synthetic this$0:Lorg/ton/tlb/AbstractTlbConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/AbstractTlbConstructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/tlb/AbstractTlbConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/tlb/AbstractTlbConstructor<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/tlb/AbstractTlbConstructor$id$2;->$id:Lorg/ton/bitstring/BitString;

    iput-object p2, p0, Lorg/ton/tlb/AbstractTlbConstructor$id$2;->this$0:Lorg/ton/tlb/AbstractTlbConstructor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/ton/tlb/AbstractTlbConstructor$id$2;->invoke()Lorg/ton/bitstring/BitString;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/bitstring/BitString;
    .locals 2

    .line 16
    iget-object v0, p0, Lorg/ton/tlb/AbstractTlbConstructor$id$2;->$id:Lorg/ton/bitstring/BitString;

    if-nez v0, :cond_0

    sget-object v0, Lorg/ton/tlb/AbstractTlbConstructor;->Companion:Lorg/ton/tlb/AbstractTlbConstructor$Companion;

    iget-object v1, p0, Lorg/ton/tlb/AbstractTlbConstructor$id$2;->this$0:Lorg/ton/tlb/AbstractTlbConstructor;

    invoke-virtual {v1}, Lorg/ton/tlb/AbstractTlbConstructor;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/tlb/AbstractTlbConstructor$Companion;->formatSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/tlb/AbstractTlbConstructor$Companion;->calculateId(Ljava/lang/String;)Lorg/ton/bitstring/BitString;

    move-result-object v0

    :cond_0
    return-object v0
.end method
