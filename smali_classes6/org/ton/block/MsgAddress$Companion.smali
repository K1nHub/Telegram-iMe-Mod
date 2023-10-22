.class public final Lorg/ton/block/MsgAddress$Companion;
.super Ljava/lang/Object;
.source "MsgAddress.kt"

# interfaces
.implements Lorg/ton/tlb/providers/TlbCombinatorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/MsgAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/providers/TlbCombinatorProvider<",
        "Lorg/ton/block/MsgAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/MsgAddress$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/MsgAddress$Companion;

    invoke-direct {v0}, Lorg/ton/block/MsgAddress$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/MsgAddress$Companion;->$$INSTANCE:Lorg/ton/block/MsgAddress$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/MsgAddressTlbCombinator;->INSTANCE:Lorg/ton/block/MsgAddressTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/MsgAddress$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgAddress$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lorg/ton/block/MsgAddress$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgAddress;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/MsgAddress;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddress$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgAddress;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MsgAddress;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddress$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/MsgAddress;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/MsgAddress;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/MsgAddress;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x4

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/AddrExtern;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/AddrNone;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/block/AddrStd;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    const-class v1, Lorg/ton/block/AddrVar;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v3, v8

    new-array v9, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/AddrExtern$$serializer;->INSTANCE:Lorg/ton/block/AddrExtern$$serializer;

    aput-object v0, v9, v4

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lorg/ton/block/AddrNone;->INSTANCE:Lorg/ton/block/AddrNone;

    new-array v10, v5, [Ljava/lang/annotation/Annotation;

    .line 18
    new-instance v11, Lorg/ton/block/MsgAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v12, "@type"

    invoke-direct {v11, v12}, Lorg/ton/block/MsgAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v4

    const-string v11, "addr_none"

    .line 10
    invoke-direct {v0, v11, v1, v10}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v9, v5

    sget-object v0, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    aput-object v0, v9, v7

    sget-object v0, Lorg/ton/block/AddrVar$$serializer;->INSTANCE:Lorg/ton/block/AddrVar$$serializer;

    aput-object v0, v9, v8

    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    const-string v1, "org.ton.block.MsgAddress"

    move-object v0, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p2, Lorg/ton/block/MsgAddress;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MsgAddress$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgAddress;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MsgAddress;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/MsgAddress$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method

.method public tlbCombinator()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/MsgAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/ton/block/MsgAddress$Companion;->$$delegate_0:Lorg/ton/block/MsgAddressTlbCombinator;

    invoke-virtual {v0}, Lorg/ton/tlb/TlbCombinator;->tlbCombinator()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    return-object v0
.end method
