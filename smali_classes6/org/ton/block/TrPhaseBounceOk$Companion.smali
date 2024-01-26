.class public final Lorg/ton/block/TrPhaseBounceOk$Companion;
.super Ljava/lang/Object;
.source "TrPhaseBounceOk.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbConstructorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/TrPhaseBounceOk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbConstructorProvider<",
        "Lorg/ton/block/TrPhaseBounceOk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->INSTANCE:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    iput-object v0, p0, Lorg/ton/block/TrPhaseBounceOk$Companion;->$$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/TrPhaseBounceOk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseBounceOk$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/TrPhaseBounceOk;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseBounceOk$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceOk;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/TrPhaseBounceOk;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk$Companion;->$$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbConstructor;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/TrPhaseBounceOk;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceOk;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk$Companion;->$$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    invoke-virtual {v0, p1}, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceOk;

    move-result-object p1

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/TrPhaseBounceOk;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lorg/ton/block/TrPhaseBounceOk$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseBounceOk$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/TrPhaseBounceOk;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrPhaseBounceOk$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceOk;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceOk;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk$Companion;->$$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    invoke-virtual {v0, p1, p2}, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceOk;)V

    return-void
.end method

.method public tlbConstructor()Lorg/ton/tlb/TlbConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbConstructor<",
            "Lorg/ton/block/TrPhaseBounceOk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk$Companion;->$$delegate_0:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbConstructor;->tlbConstructor()Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    return-object v0
.end method
