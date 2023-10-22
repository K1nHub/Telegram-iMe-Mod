.class final Lorg/ton/block/LibDescrTlbConstructor$publishers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LibDescr.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/LibDescrTlbConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/hashmap/HmEdge<",
        "Lkotlin/Unit;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/LibDescrTlbConstructor$publishers$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/LibDescrTlbConstructor$publishers$2;

    invoke-direct {v0}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2;-><init>()V

    sput-object v0, Lorg/ton/block/LibDescrTlbConstructor$publishers$2;->INSTANCE:Lorg/ton/block/LibDescrTlbConstructor$publishers$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2;->invoke()Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/ton/tlb/TlbCodec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 29
    sget-object v0, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    new-instance v1, Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;

    invoke-direct {v1}, Lorg/ton/block/LibDescrTlbConstructor$publishers$2$1;-><init>()V

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HmEdge$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    return-object v0
.end method
