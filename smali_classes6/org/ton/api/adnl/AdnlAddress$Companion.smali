.class public final Lorg/ton/api/adnl/AdnlAddress$Companion;
.super Lorg/ton/tl/TlCombinator;
.source "AdnlAddress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlCombinator<",
        "Lorg/ton/api/adnl/AdnlAddress;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/api/adnl/AdnlAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/adnl/AdnlAddress$Companion;

    invoke-direct {v0}, Lorg/ton/api/adnl/AdnlAddress$Companion;-><init>()V

    sput-object v0, Lorg/ton/api/adnl/AdnlAddress$Companion;->$$INSTANCE:Lorg/ton/api/adnl/AdnlAddress$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 20
    const-class v0, Lorg/ton/api/adnl/AdnlAddress;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    .line 22
    const-class v2, Lorg/ton/api/adnl/AdnlAddressUdp;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/api/adnl/AdnlAddressUdp;->Companion:Lorg/ton/api/adnl/AdnlAddressUdp$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/api/adnl/AdnlAddressUdp6;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 23
    sget-object v3, Lorg/ton/api/adnl/AdnlAddressUdp6;->Companion:Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 22
    const-class v2, Lorg/ton/api/adnl/AdnlAddressTunnel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/ton/api/adnl/AdnlAddressTunnel;->Companion:Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 20
    invoke-direct {p0, v0, v1}, Lorg/ton/tl/TlCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/adnl/AdnlAddress;",
            ">;"
        }
    .end annotation

    .line 20
    const-class v0, Lorg/ton/api/adnl/AdnlAddressUdp6;

    const-class v1, Lorg/ton/api/adnl/AdnlAddressUdp;

    new-instance v8, Lkotlinx/serialization/SealedClassSerializer;

    const-class v2, Lorg/ton/api/adnl/AdnlAddress;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v2, 0x5

    new-array v5, v2, [Lkotlin/reflect/KClass;

    const-class v3, Lorg/ton/api/adnl/AdnlAddressTunnel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v5, v7

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v5, v9

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v5, v3

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v5, v1

    new-array v0, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;

    aput-object v2, v0, v6

    sget-object v2, Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;

    aput-object v2, v0, v7

    sget-object v10, Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;

    aput-object v10, v0, v9

    aput-object v2, v0, v3

    aput-object v10, v0, v1

    new-array v7, v7, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v1, Lorg/ton/api/adnl/AdnlAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v2, "@type"

    invoke-direct {v1, v2}, Lorg/ton/api/adnl/AdnlAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v1, v7, v6

    const-string v3, "org.ton.api.adnl.AdnlAddress"

    move-object v2, v8

    move-object v6, v0

    .line 20
    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v8
.end method
