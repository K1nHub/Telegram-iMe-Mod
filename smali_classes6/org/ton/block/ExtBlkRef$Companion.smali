.class public final Lorg/ton/block/ExtBlkRef$Companion;
.super Ljava/lang/Object;
.source "ExtBlkRef.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ExtBlkRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ExtBlkRef;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/ExtBlkRefTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ExtBlkRefTlbConstructor;->INSTANCE:Lorg/ton/block/ExtBlkRefTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/ExtBlkRef$Companion;->$$delegate_0:Lorg/ton/block/ExtBlkRefTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ExtBlkRef$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtBlkRef$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ExtBlkRef;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/ExtBlkRef$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtBlkRef;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ExtBlkRef;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ExtBlkRef$Companion;->$$delegate_0:Lorg/ton/block/ExtBlkRefTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ExtBlkRef;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtBlkRef;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ExtBlkRef$Companion;->$$delegate_0:Lorg/ton/block/ExtBlkRefTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/ExtBlkRefTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ExtBlkRef;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/ton/block/ExtBlkRef$$serializer;->INSTANCE:Lorg/ton/block/ExtBlkRef$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/ExtBlkRef;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ExtBlkRef$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtBlkRef;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtBlkRef;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ExtBlkRef$Companion;->$$delegate_0:Lorg/ton/block/ExtBlkRefTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/ExtBlkRefTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ExtBlkRef;)V

    return-void
.end method
