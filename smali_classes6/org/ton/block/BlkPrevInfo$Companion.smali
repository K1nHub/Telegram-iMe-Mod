.class public final Lorg/ton/block/BlkPrevInfo$Companion;
.super Ljava/lang/Object;
.source "BlkPrevInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/BlkPrevInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/block/BlkPrevInfo$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/BlkPrevInfo$Companion;

    invoke-direct {v0}, Lorg/ton/block/BlkPrevInfo$Companion;-><init>()V

    sput-object v0, Lorg/ton/block/BlkPrevInfo$Companion;->$$INSTANCE:Lorg/ton/block/BlkPrevInfo$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/block/BlkPrevInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/block/PrevBlkInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/block/PrevBlksInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    new-array v7, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/PrevBlkInfo$$serializer;->INSTANCE:Lorg/ton/block/PrevBlkInfo$$serializer;

    aput-object v0, v7, v4

    sget-object v0, Lorg/ton/block/PrevBlksInfo$$serializer;->INSTANCE:Lorg/ton/block/PrevBlksInfo$$serializer;

    aput-object v0, v7, v5

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 11
    new-instance v0, Lorg/ton/block/BlkPrevInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/block/BlkPrevInfo$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.block.BlkPrevInfo"

    move-object v0, v6

    move-object v4, v7

    .line 14
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method

.method public final tlbCodec(I)Lorg/ton/tlb/TlbCodec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lorg/ton/block/BlkPrevInfo$Companion;->tlbCodec(Z)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    return-object p1
.end method

.method public final tlbCodec(Z)Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 18
    sget-object p1, Lorg/ton/block/PrevBlksInfo;->Companion:Lorg/ton/block/PrevBlksInfo$Companion;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/ton/block/PrevBlkInfo;->Companion:Lorg/ton/block/PrevBlkInfo$Companion;

    :goto_0
    const-string v0, "null cannot be cast to non-null type org.ton.tlb.TlbCodec<org.ton.block.BlkPrevInfo>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
