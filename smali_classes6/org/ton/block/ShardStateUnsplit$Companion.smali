.class public final Lorg/ton/block/ShardStateUnsplit$Companion;
.super Ljava/lang/Object;
.source "ShardStateUnsplit.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardStateUnsplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "Lorg/ton/block/ShardStateUnsplit;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->INSTANCE:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/ShardStateUnsplit$Companion;->$$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ShardStateUnsplit$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardStateUnsplit$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardStateUnsplit;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardStateUnsplit$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardStateUnsplit;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit$Companion;->$$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardStateUnsplit;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplit;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit$Companion;->$$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplit;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ShardStateUnsplit;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/ton/block/ShardStateUnsplit$$serializer;->INSTANCE:Lorg/ton/block/ShardStateUnsplit$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Lorg/ton/block/ShardStateUnsplit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardStateUnsplit$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit$Companion;->$$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplit;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/ShardStateUnsplit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/ShardStateUnsplit$Companion;->$$delegate_0:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbConstructor;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method
