.class public final Lorg/ton/block/AccountBlock$Companion;
.super Ljava/lang/Object;
.source "AccountBlock.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/AccountBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/AccountBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/AccountBlockTlbCombinator;->INSTANCE:Lorg/ton/block/AccountBlockTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/AccountBlock$Companion;->$$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/AccountBlock$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountBlock$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AccountBlock;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/AccountBlock$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountBlock;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/AccountBlock;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountBlock$Companion;->$$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/AccountBlock;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AccountBlock;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountBlock$Companion;->$$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/AccountBlock;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/AccountBlock;",
            ">;"
        }
    .end annotation

    .line 30
    sget-object v0, Lorg/ton/block/AccountBlock$$serializer;->INSTANCE:Lorg/ton/block/AccountBlock$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/AccountBlock;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AccountBlock$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountBlock;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AccountBlock;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/AccountBlock$Companion;->$$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/AccountBlock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/AccountBlock$Companion;->$$delegate_0:Lorg/ton/block/AccountBlockTlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
