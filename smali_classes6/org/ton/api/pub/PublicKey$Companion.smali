.class public final Lorg/ton/api/pub/PublicKey$Companion;
.super Lorg/ton/tl/TlCombinator;
.source "pub.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pub/PublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlCombinator<",
        "Lorg/ton/api/pub/PublicKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/api/pub/PublicKey$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/pub/PublicKey$Companion;

    invoke-direct {v0}, Lorg/ton/api/pub/PublicKey$Companion;-><init>()V

    sput-object v0, Lorg/ton/api/pub/PublicKey$Companion;->$$INSTANCE:Lorg/ton/api/pub/PublicKey$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 21
    const-class v0, Lorg/ton/api/pub/PublicKey;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    .line 23
    const-class v2, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/api/pub/PublicKeyEd25519;->Companion:Lorg/ton/api/pub/PublicKeyEd25519$Companion;

    invoke-virtual {v3}, Lorg/ton/api/pub/PublicKeyEd25519$Companion;->tlConstructor()Lorg/ton/tl/TlConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 24
    sget-object v3, Lorg/ton/api/pub/PublicKeyUnencrypted;->Companion:Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 23
    const-class v2, Lorg/ton/api/pub/PublicKeyAes;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 25
    sget-object v3, Lorg/ton/api/pub/PublicKeyAes;->Companion:Lorg/ton/api/pub/PublicKeyAes$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 23
    const-class v2, Lorg/ton/api/pub/PublicKeyOverlay;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 26
    sget-object v3, Lorg/ton/api/pub/PublicKeyOverlay;->Companion:Lorg/ton/api/pub/PublicKeyOverlay$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 21
    invoke-direct {p0, v0, v1}, Lorg/ton/tl/TlCombinator;-><init>(Lkotlin/reflect/KClass;[Lkotlin/Pair;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/pub/PublicKey;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/api/pub/PublicKey;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x4

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/api/pub/PublicKeyAes;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const-class v1, Lorg/ton/api/pub/PublicKeyOverlay;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v3, v7

    const-class v1, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v3, v8

    new-array v9, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    aput-object v0, v9, v4

    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519$$serializer;

    aput-object v0, v9, v5

    sget-object v0, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyOverlay$$serializer;

    aput-object v0, v9, v7

    sget-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    aput-object v0, v9, v8

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v0, Lorg/ton/api/pub/PublicKey$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v1, "@type"

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKey$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.api.pub.PublicKey"

    move-object v0, v6

    move-object v4, v9

    .line 21
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method
