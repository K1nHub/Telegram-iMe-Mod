.class final Lorg/ton/boc/CachedBagOfCells$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CachedBagOfCells.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/boc/CachedBagOfCells;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/ton/boc/CachedBagOfCells$CellInfo;",
        "Lorg/ton/cell/Cell;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/boc/CachedBagOfCells$iterator$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/boc/CachedBagOfCells$iterator$1;

    invoke-direct {v0}, Lorg/ton/boc/CachedBagOfCells$iterator$1;-><init>()V

    sput-object v0, Lorg/ton/boc/CachedBagOfCells$iterator$1;->INSTANCE:Lorg/ton/boc/CachedBagOfCells$iterator$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lorg/ton/boc/CachedBagOfCells$CellInfo;

    invoke-virtual {p0, p1}, Lorg/ton/boc/CachedBagOfCells$iterator$1;->invoke(Lorg/ton/boc/CachedBagOfCells$CellInfo;)Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/ton/boc/CachedBagOfCells$CellInfo;)Lorg/ton/cell/Cell;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lorg/ton/boc/CachedBagOfCells$CellInfo;->getCell()Lorg/ton/cell/Cell;

    move-result-object p1

    return-object p1
.end method
