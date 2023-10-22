.class public final Lorg/ton/block/ShardAccounts;
.super Ljava/lang/Object;
.source "ShardAccounts.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardAccounts$$serializer;,
        Lorg/ton/block/ShardAccounts$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/block/ShardAccounts$Companion;


# instance fields
.field private final x:Lorg/ton/hashmap/HashmapAugE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ShardAccounts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ShardAccounts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ShardAccounts;->Companion:Lorg/ton/block/ShardAccounts$Companion;

    return-void
.end method

.method private synthetic constructor <init>(Lorg/ton/hashmap/HashmapAugE;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/ShardAccounts;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;
    .locals 1

    new-instance v0, Lorg/ton/block/ShardAccounts;

    invoke-direct {v0, p0}, Lorg/ton/block/ShardAccounts;-><init>(Lorg/ton/hashmap/HashmapAugE;)V

    return-object v0
.end method

.method public static constructor-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/hashmap/HashmapAugE;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;)",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlinx/serialization/KSerializer;

    .line 23
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    new-instance v4, Lorg/ton/block/ShardAccounts$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v5, "@type"

    invoke-direct {v4, v5}, Lorg/ton/block/ShardAccounts$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-direct {v2, v3, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v5

    sput-object v1, Lorg/ton/block/ShardAccounts;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method public static equals-impl(Lorg/ton/hashmap/HashmapAugE;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    instance-of v0, p1, Lorg/ton/block/ShardAccounts;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/ton/block/ShardAccounts;

    invoke-virtual {p1}, Lorg/ton/block/ShardAccounts;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl(Lorg/ton/hashmap/HashmapAugE;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public static print-impl(Lorg/ton/hashmap/HashmapAugE;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;",
            "Lorg/ton/tlb/TlbPrettyPrinter;",
            ")",
            "Lorg/ton/tlb/TlbPrettyPrinter;"
        }
    .end annotation

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0, p1}, Lorg/ton/tlb/TlbObject;->print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p0

    return-object p0
.end method

.method public static toString-impl(Lorg/ton/hashmap/HashmapAugE;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardAccount;",
            "Lorg/ton/block/DepthBalanceInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 21
    invoke-static {p0}, Lorg/ton/block/ShardAccounts;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/ShardAccounts;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p0

    invoke-virtual {p0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v0, p1}, Lorg/ton/block/ShardAccounts;->equals-impl(Lorg/ton/hashmap/HashmapAugE;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v0}, Lorg/ton/block/ShardAccounts;->hashCode-impl(Lorg/ton/hashmap/HashmapAugE;)I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 1

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v0, p1}, Lorg/ton/block/ShardAccounts;->print-impl(Lorg/ton/hashmap/HashmapAugE;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    invoke-static {v0}, Lorg/ton/block/ShardAccounts;->toString-impl(Lorg/ton/hashmap/HashmapAugE;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Lorg/ton/hashmap/HashmapAugE;
    .locals 1

    iget-object v0, p0, Lorg/ton/block/ShardAccounts;->x:Lorg/ton/hashmap/HashmapAugE;

    return-object v0
.end method
