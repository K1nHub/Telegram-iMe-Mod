.class public final Lorg/ton/block/SimpleLib$Companion;
.super Ljava/lang/Object;
.source "SimpleLib.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/SimpleLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/SimpleLib;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/SimpleLibTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/SimpleLibTlbConstructor;->INSTANCE:Lorg/ton/block/SimpleLibTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/SimpleLib$Companion;->$$delegate_0:Lorg/ton/block/SimpleLibTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/SimpleLib$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/block/SimpleLib$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/SimpleLib;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/ton/block/SimpleLib$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SimpleLib;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/SimpleLib;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/SimpleLib$Companion;->$$delegate_0:Lorg/ton/block/SimpleLibTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/SimpleLib;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SimpleLib;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/SimpleLib$Companion;->$$delegate_0:Lorg/ton/block/SimpleLibTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/SimpleLibTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SimpleLib;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/SimpleLib;",
            ">;"
        }
    .end annotation

    .line 28
    sget-object v0, Lorg/ton/block/SimpleLib$$serializer;->INSTANCE:Lorg/ton/block/SimpleLib$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/ton/block/SimpleLib;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SimpleLib$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SimpleLib;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SimpleLib;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/SimpleLib$Companion;->$$delegate_0:Lorg/ton/block/SimpleLibTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/SimpleLibTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SimpleLib;)V

    return-void
.end method
