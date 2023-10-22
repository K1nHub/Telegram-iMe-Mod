.class final Lorg/ton/hashmap/Unary$Companion$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Unary.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/Unary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlinx/serialization/KSerializer<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/hashmap/Unary$Companion$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/hashmap/Unary$Companion$1;

    invoke-direct {v0}, Lorg/ton/hashmap/Unary$Companion$1;-><init>()V

    sput-object v0, Lorg/ton/hashmap/Unary$Companion$1;->INSTANCE:Lorg/ton/hashmap/Unary$Companion$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/ton/hashmap/Unary$Companion$1;->invoke()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlinx/serialization/KSerializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v6, Lkotlinx/serialization/SealedClassSerializer;

    const-class v0, Lorg/ton/hashmap/Unary;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Lkotlin/reflect/KClass;

    const-class v1, Lorg/ton/hashmap/UnarySuccess;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-class v1, Lorg/ton/hashmap/UnaryZero;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    new-array v7, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/hashmap/UnarySuccess$$serializer;->INSTANCE:Lorg/ton/hashmap/UnarySuccess$$serializer;

    aput-object v0, v7, v4

    new-instance v0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lorg/ton/hashmap/UnaryZero;->INSTANCE:Lorg/ton/hashmap/UnaryZero;

    new-array v8, v5, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v9, Lorg/ton/hashmap/Unary$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v10, "@type"

    invoke-direct {v9, v10}, Lorg/ton/hashmap/Unary$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v9, v8, v4

    const-string v9, "unary_zero"

    .line 17
    invoke-direct {v0, v9, v1, v8}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    aput-object v0, v7, v5

    new-array v5, v5, [Ljava/lang/annotation/Annotation;

    .line 15
    new-instance v0, Lorg/ton/hashmap/Unary$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    invoke-direct {v0, v10}, Lorg/ton/hashmap/Unary$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v5, v4

    const-string v1, "org.ton.hashmap.Unary"

    move-object v0, v6

    move-object v4, v7

    .line 17
    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v6
.end method
