.class public final Lorg/ton/block/ShardIdent$Companion;
.super Ljava/lang/Object;
.source "ShardIdent.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/ShardIdent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/ShardIdent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardIdent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardIdent.kt\norg/ton/block/ShardIdent$Companion\n+ 2 TlbConstructor.kt\norg/ton/tlb/TlbConstructorKt\n*L\n1#1,54:1\n82#2:55\n*S KotlinDebug\n*F\n+ 1 ShardIdent.kt\norg/ton/block/ShardIdent$Companion\n*L\n29#1:55\n*E\n"
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/tlb/TlbCombinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/ShardIdent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/ShardIdentTlbConstructor;->INSTANCE:Lorg/ton/block/ShardIdentTlbConstructor;

    .line 82
    const-class v1, Lorg/ton/block/ShardIdent;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ton/tlb/TlbConstructorKt;->asTlbCombinator(Lorg/ton/tlb/TlbConstructor;Lkotlin/reflect/KClass;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    .line 29
    iput-object v0, p0, Lorg/ton/block/ShardIdent$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/block/ShardIdent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardIdent$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardIdent;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardIdent$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardIdent;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/ShardIdent;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardIdent$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardIdent;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardIdent;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardIdent$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/ShardIdent;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/ShardIdent;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lorg/ton/block/ShardIdent$$serializer;->INSTANCE:Lorg/ton/block/ShardIdent$$serializer;

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/ShardIdent;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardIdent$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardIdent;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardIdent;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/ShardIdent$Companion;->$$delegate_0:Lorg/ton/tlb/TlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
