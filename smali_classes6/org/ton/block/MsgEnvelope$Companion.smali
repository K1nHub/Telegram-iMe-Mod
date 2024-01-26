.class public final Lorg/ton/block/MsgEnvelope$Companion;
.super Ljava/lang/Object;
.source "MsgEnvelope.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MsgEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/MsgEnvelope;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgEnvelope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelope$Companion\n+ 2 TlbConstructor.kt\norg/ton/tlb/TlbConstructorKt\n*L\n1#1,59:1\n82#2:60\n*S KotlinDebug\n*F\n+ 1 MsgEnvelope.kt\norg/ton/block/MsgEnvelope$Companion\n*L\n31#1:60\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/tlb/TlbCombinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/MsgEnvelopeTlbConstructor;->INSTANCE:Lorg/ton/block/MsgEnvelopeTlbConstructor;

    .line 82
    const-class v1, Lorg/ton/block/MsgEnvelope;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lorg/ton/block/MsgEnvelope$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/MsgEnvelope$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgEnvelope$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgEnvelope$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgEnvelope;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgEnvelope;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgEnvelope$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgEnvelope;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgEnvelope;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgEnvelope$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgEnvelope;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Lorg/ton/block/MsgEnvelope$$serializer;->INSTANCE:Lorg/ton/block/MsgEnvelope$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/MsgEnvelope;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgEnvelope$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgEnvelope;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgEnvelope;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgEnvelope$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/MsgEnvelope$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
