.class final Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BinTreeFork.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/block/BinTreeForkTlbConstructor;-><init>(Lorg/ton/tlb/TlbCodec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/tlb/TlbCombinator<",
        "Lorg/ton/block/BinTree<",
        "TX;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/block/BinTreeForkTlbConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/BinTreeForkTlbConstructor<",
            "TX;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/ton/block/BinTreeForkTlbConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/BinTreeForkTlbConstructor<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;->this$0:Lorg/ton/block/BinTreeForkTlbConstructor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;->invoke()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/tlb/TlbCombinator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/ton/block/BinTree;->Companion:Lorg/ton/block/BinTree$Companion;

    iget-object v1, p0, Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;->this$0:Lorg/ton/block/BinTreeForkTlbConstructor;

    invoke-virtual {v1}, Lorg/ton/block/BinTreeForkTlbConstructor;->getX()Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/BinTree$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
