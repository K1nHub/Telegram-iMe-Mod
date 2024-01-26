.class public final Lorg/ton/block/IntermediateAddress$Companion;
.super Ljava/lang/Object;
.source "IntermediateAddress.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/IntermediateAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/IntermediateAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/IntermediateAddress$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/IntermediateAddress$Companion;

    invoke-direct {v0}, Lorg/ton/block/IntermediateAddress$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/IntermediateAddress$Companion;->$$INSTANCE:Lorg/ton/block/IntermediateAddress$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/IntermediateAddressTlbCombinator;->INSTANCE:Lorg/ton/block/IntermediateAddressTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/IntermediateAddress$Companion;->$$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/block/IntermediateAddress$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/IntermediateAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/block/IntermediateAddress$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddress;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/IntermediateAddress;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/IntermediateAddress$Companion;->$$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/IntermediateAddress;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddress;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/IntermediateAddress$Companion;->$$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/IntermediateAddress;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/IntermediateAddress;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/IntermediateAddress;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/IntermediateAddressExt;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/IntermediateAddressRegular;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/block/IntermediateAddressSimple;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    new-array v8, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/IntermediateAddressExt$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressExt$$serializer;

    aput-object v0, v8, v4

    sget-object v0, Lorg/ton/block/IntermediateAddressRegular$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressRegular$$serializer;

    aput-object v0, v8, v5

    sget-object v0, Lorg/ton/block/IntermediateAddressSimple$$serializer;->INSTANCE:Lorg/ton/block/IntermediateAddressSimple$$serializer;

    aput-object v0, v8, v7

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 12
    new-instance v0, Lorg/ton/block/IntermediateAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/IntermediateAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.block.IntermediateAddress"

    move-object v0, v6

    move-object v4, v8

    .line 14
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lorg/ton/block/IntermediateAddress;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IntermediateAddress$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddress;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddress;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/IntermediateAddress$Companion;->$$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/IntermediateAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/IntermediateAddress$Companion;->$$delegate_0:Lorg/ton/block/IntermediateAddressTlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
