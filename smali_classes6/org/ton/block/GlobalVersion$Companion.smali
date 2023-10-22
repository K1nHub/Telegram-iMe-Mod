.class public final Lorg/ton/block/GlobalVersion$Companion;
.super Ljava/lang/Object;
.source "GlobalVersion.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/GlobalVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/GlobalVersion;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersion$Companion\n+ 2 TlbConstructor.kt\norg/ton/tlb/TlbConstructorKt\n*L\n1#1,46:1\n82#2:47\n*S KotlinDebug\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersion$Companion\n*L\n24#1:47\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/tlb/TlbCombinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/GlobalVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/GlobalVersionTlbConstructor;->INSTANCE:Lorg/ton/block/GlobalVersionTlbConstructor;

    .line 82
    const-class v1, Lorg/ton/block/GlobalVersion;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/ton/block/GlobalVersion$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/GlobalVersion$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/GlobalVersion$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/GlobalVersion;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lorg/ton/block/GlobalVersion$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/GlobalVersion;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/GlobalVersion;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/GlobalVersion$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/GlobalVersion;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/GlobalVersion;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/GlobalVersion$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/GlobalVersion;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/GlobalVersion;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lorg/ton/block/GlobalVersion$$serializer;->INSTANCE:Lorg/ton/block/GlobalVersion$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lorg/ton/block/GlobalVersion;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/GlobalVersion$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/GlobalVersion;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/GlobalVersion;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/GlobalVersion$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
