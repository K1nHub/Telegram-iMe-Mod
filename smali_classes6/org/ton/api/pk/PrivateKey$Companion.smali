.class public final Lorg/ton/api/pk/PrivateKey$Companion;
.super Lorg/ton/tl/TlCombinator;
.source "pk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/pk/PrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlCombinator<",
        "Lorg/ton/api/pk/PrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/api/pk/PrivateKey$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/pk/PrivateKey$Companion;

    invoke-direct {v0}, Lorg/ton/api/pk/PrivateKey$Companion;-><init>()V

    sput-object v0, Lorg/ton/api/pk/PrivateKey$Companion;->$$INSTANCE:Lorg/ton/api/pk/PrivateKey$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 16
    const-class v0, Lorg/ton/api/pk/PrivateKey;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/Pair;

    .line 18
    const-class v2, Lorg/ton/api/pk/PrivateKeyUnencrypted;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lorg/ton/api/pk/PrivateKeyUnencrypted;->Companion:Lorg/ton/api/pk/PrivateKeyUnencrypted$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/ton/api/pk/PrivateKeyEd25519;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 19
    sget-object v3, Lorg/ton/api/pk/PrivateKeyEd25519;->Companion:Lorg/ton/api/pk/PrivateKeyEd25519$Companion;

    invoke-virtual {v3}, Lorg/ton/api/pk/PrivateKeyEd25519$Companion;->tlConstructor()Lorg/ton/tl/TlConstructor;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 18
    const-class v2, Lorg/ton/api/pk/PrivateKeyAes;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 20
    sget-object v3, Lorg/ton/api/pk/PrivateKeyAes;->Companion:Lorg/ton/api/pk/PrivateKeyAes$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 18
    const-class v2, Lorg/ton/api/pk/PrivateKeyOverlay;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 21
    sget-object v3, Lorg/ton/api/pk/PrivateKeyOverlay;->Companion:Lorg/ton/api/pk/PrivateKeyOverlay$Companion;

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 16
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
            "Lorg/ton/api/pk/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 16
    const-class v0, Lorg/ton/api/pk/PrivateKeyEd25519;

    new-instance v7, Lkotlinx/serialization/SealedClassSerializer;

    const-class v1, Lorg/ton/api/pk/PrivateKey;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v1, 0x4

    new-array v4, v1, [Lkotlin/reflect/KClass;

    const-class v2, Lorg/ton/api/pk/PrivateKeyAes;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v4, v6

    const-class v2, Lorg/ton/api/pk/PrivateKeyOverlay;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v4, v8

    const-class v2, Lorg/ton/api/pk/PrivateKeyUnencrypted;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v9, 0x3

    aput-object v2, v4, v9

    new-array v10, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/api/pk/PrivateKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyAes$$serializer;

    aput-object v1, v10, v5

    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v0, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v10, v6

    sget-object v0, Lorg/ton/api/pk/PrivateKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyOverlay$$serializer;

    aput-object v0, v10, v8

    sget-object v0, Lorg/ton/api/pk/PrivateKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyUnencrypted$$serializer;

    aput-object v0, v10, v9

    new-array v6, v5, [Ljava/lang/annotation/Annotation;

    const-string v2, "org.ton.api.pk.PrivateKey"

    move-object v1, v7

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v7
.end method
