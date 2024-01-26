.class public final Lorg/ton/block/CommonMsgInfo$Companion;
.super Ljava/lang/Object;
.source "CommonMsgInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbCodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/CommonMsgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbCodec<",
        "Lorg/ton/block/CommonMsgInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/CommonMsgInfo$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/block/CommonMsgInfoTlbCombinator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CommonMsgInfo$Companion;

    invoke-direct {v0}, Lorg/ton/block/CommonMsgInfo$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/CommonMsgInfo$Companion;->$$INSTANCE:Lorg/ton/block/CommonMsgInfo$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/ton/block/CommonMsgInfoTlbCombinator;->INSTANCE:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    iput-object v0, p0, Lorg/ton/block/CommonMsgInfo$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfo$Companion;->loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/CommonMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ton/block/CommonMsgInfo$Companion;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/Cell;)Lorg/ton/block/CommonMsgInfo;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfo$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/AbstractTlbCombinator;->loadTlb(Lorg/ton/cell/Cell;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/CommonMsgInfo;

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CommonMsgInfo;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfo$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/TlbCombinator;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/CommonMsgInfo;

    return-object p1
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/CommonMsgInfo;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/CommonMsgInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x3

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/ExtInMsgInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/ExtOutMsgInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/block/IntMsgInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    new-array v8, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/ExtInMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/ExtInMsgInfo$$serializer;

    aput-object v0, v8, v4

    sget-object v0, Lorg/ton/block/ExtOutMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/ExtOutMsgInfo$$serializer;

    aput-object v0, v8, v5

    sget-object v0, Lorg/ton/block/IntMsgInfo$$serializer;->INSTANCE:Lorg/ton/block/IntMsgInfo$$serializer;

    aput-object v0, v8, v7

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 12
    new-instance v0, Lorg/ton/block/CommonMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/CommonMsgInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.block.CommonMsgInfo"

    move-object v0, v6

    move-object v4, v8

    .line 15
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p2, Lorg/ton/block/CommonMsgInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CommonMsgInfo$Companion;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CommonMsgInfo;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/block/CommonMsgInfo$Companion;->$$delegate_0:Lorg/ton/block/CommonMsgInfoTlbCombinator;

    invoke-virtual {v0, p1, p2}, Lorg/ton/tlb/TlbCombinator;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
