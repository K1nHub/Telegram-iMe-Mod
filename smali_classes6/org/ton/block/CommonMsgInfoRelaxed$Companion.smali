.class public final Lorg/ton/block/CommonMsgInfoRelaxed$Companion;
.super Ljava/lang/Object;
.source "CommonMsgInfoRelaxed.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/CommonMsgInfoRelaxed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/CommonMsgInfoRelaxed;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;->INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/CommonMsgInfoRelaxed;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/CommonMsgInfoRelaxed;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/CommonMsgInfoRelaxed;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfoRelaxed;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/CommonMsgInfoRelaxed;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/CommonMsgInfoRelaxed;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlin/reflect/KClass;

    new-array v4, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/annotation/Annotation;

    .line 14
    new-instance v1, Lorg/ton/block/CommonMsgInfoRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v7, "@type"

    invoke-direct {v1, v7}, Lorg/ton/block/CommonMsgInfoRelaxed$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    const-string v1, "org.ton.block.CommonMsgInfoRelaxed"

    move-object v0, v6

    .line 82
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Lorg/ton/block/CommonMsgInfoRelaxed;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfoRelaxed;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/CommonMsgInfoRelaxed;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoRelaxedTlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
