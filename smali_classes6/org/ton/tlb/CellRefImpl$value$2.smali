.class final Lorg/ton/tlb/CellRefImpl$value$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CellRef.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/CellRefImpl;-><init>(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCellRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CellRef.kt\norg/ton/tlb/CellRefImpl$value$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/tlb/CellRefImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRefImpl<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/ton/tlb/CellRefImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRefImpl<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/tlb/CellRefImpl$value$2;->this$0:Lorg/ton/tlb/CellRefImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/ton/tlb/CellRefImpl$value$2;->this$0:Lorg/ton/tlb/CellRefImpl;

    invoke-virtual {v0}, Lorg/ton/tlb/CellRefImpl;->getCell()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->getType()Lorg/ton/cell/CellType;

    move-result-object v0

    sget-object v1, Lorg/ton/cell/CellType;->PRUNED_BRANCH:Lorg/ton/cell/CellType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/ton/tlb/CellRefImpl$value$2;->this$0:Lorg/ton/tlb/CellRefImpl;

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v1}, Lorg/ton/tlb/CellRefImpl;->getCodec()Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    iget-object v1, p0, Lorg/ton/tlb/CellRefImpl$value$2;->this$0:Lorg/ton/tlb/CellRefImpl;

    invoke-virtual {v1}, Lorg/ton/tlb/CellRefImpl;->getCell()Lorg/ton/cell/Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t load reference value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/ton/tlb/CellRefImpl;->getCell()Lorg/ton/cell/Cell;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
