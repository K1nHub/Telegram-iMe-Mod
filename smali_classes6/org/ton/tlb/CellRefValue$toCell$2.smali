.class final Lorg/ton/tlb/CellRefValue$toCell$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CellRef.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tlb/CellRefValue;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/ton/cell/CellBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentCodec:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/ton/tlb/CellRefValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRefValue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/CellRefValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TT;>;",
            "Lorg/ton/tlb/CellRefValue<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/tlb/CellRefValue$toCell$2;->$currentCodec:Lorg/ton/tlb/TlbCodec;

    iput-object p2, p0, Lorg/ton/tlb/CellRefValue$toCell$2;->this$0:Lorg/ton/tlb/CellRefValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Lorg/ton/cell/CellBuilder;

    invoke-virtual {p0, p1}, Lorg/ton/tlb/CellRefValue$toCell$2;->invoke(Lorg/ton/cell/CellBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/ton/cell/CellBuilder;)V
    .locals 2

    const-string v0, "$this$createCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lorg/ton/tlb/CellRefValue$toCell$2;->$currentCodec:Lorg/ton/tlb/TlbCodec;

    iget-object v1, p0, Lorg/ton/tlb/CellRefValue$toCell$2;->this$0:Lorg/ton/tlb/CellRefValue;

    invoke-virtual {v1}, Lorg/ton/tlb/CellRefValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
