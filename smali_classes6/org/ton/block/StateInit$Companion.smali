.class public final Lorg/ton/block/StateInit$Companion;
.super Ljava/lang/Object;
.source "StateInit.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/StateInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/StateInit;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/StateInitTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/StateInitTlbConstructor;->INSTANCE:Lorg/ton/block/StateInitTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/StateInit$Companion;->$$delegate_0:Lorg/ton/block/StateInitTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/StateInit$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/ton/block/StateInit$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/StateInit;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lorg/ton/block/StateInit$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/StateInit;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/StateInit$Companion;->$$delegate_0:Lorg/ton/block/StateInitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/StateInit;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/StateInit$Companion;->$$delegate_0:Lorg/ton/block/StateInitTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/StateInitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StateInit;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/StateInit;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lorg/ton/block/StateInit$$serializer;->INSTANCE:Lorg/ton/block/StateInit$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Lorg/ton/block/StateInit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/StateInit$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/StateInit$Companion;->$$delegate_0:Lorg/ton/block/StateInitTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/StateInitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StateInit;)V

    return-void
.end method
