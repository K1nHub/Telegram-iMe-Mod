.class public final Lorg/ton/block/ShardDescrOld$Companion;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardDescrOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "Lorg/ton/block/ShardDescrOld;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ShardDescrOldTlbConstructor;->INSTANCE:Lorg/ton/block/ShardDescrOldTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/ShardDescrOld$Companion;->$$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ShardDescrOld$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrOld$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardDescrOld;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrOld$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrOld;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardDescrOld;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardDescrOld$Companion;->$$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardDescrOld;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrOld;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardDescrOld$Companion;->$$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/ShardDescrOldTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrOld;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ShardDescrOld;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lorg/ton/block/ShardDescrOld$$serializer;->INSTANCE:Lorg/ton/block/ShardDescrOld$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p2, Lorg/ton/block/ShardDescrOld;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrOld$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrOld;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrOld;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardDescrOld$Companion;->$$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ShardDescrOldTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrOld;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/ShardDescrOld;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/ShardDescrOld$Companion;->$$delegate_0:Lorg/ton/block/ShardDescrOldTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbConstructor;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method
