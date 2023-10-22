.class public final Lorg/ton/block/ValueFlow$Companion;
.super Ljava/lang/Object;
.source "ValueFlow.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ValueFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ValueFlow;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlow$Companion\n+ 2 TlbConstructor.kt\norg/ton/tlb/TlbConstructorKt\n*L\n1#1,94:1\n82#2:95\n*S KotlinDebug\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlow$Companion\n*L\n37#1:95\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/tlb/TlbCombinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/ValueFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ValueFlowTlbConstructor;->INSTANCE:Lorg/ton/block/ValueFlowTlbConstructor;

    .line 82
    const-class v1, Lorg/ton/block/ValueFlow;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    .line 37
    iput-object v0, p0, Lorg/ton/block/ValueFlow$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ValueFlow$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/ton/block/ValueFlow$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ValueFlow;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/ton/block/ValueFlow$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValueFlow;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ValueFlow;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ValueFlow$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ValueFlow;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValueFlow;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ValueFlow$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ValueFlow;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ValueFlow;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lorg/ton/block/ValueFlow$$serializer;->INSTANCE:Lorg/ton/block/ValueFlow$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/ton/block/ValueFlow;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ValueFlow$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValueFlow;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValueFlow;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ValueFlow$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
