.class public final Lorg/ton/block/SimpleLib;
.super Ljava/lang/Object;
.source "SimpleLib.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/SimpleLib$$serializer;,
        Lorg/ton/block/SimpleLib$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLib.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLib.kt\norg/ton/block/SimpleLib\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,52:1\n86#2,2:53\n82#2,3:55\n88#2:58\n*S KotlinDebug\n*F\n+ 1 SimpleLib.kt\norg/ton/block/SimpleLib\n*L\n20#1:53,2\n21#1:55,3\n20#1:58\n*E\n"
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

.field public static final Companion:Lorg/ton/block/SimpleLib$Companion;


# instance fields
.field private final public:Z

.field private final root:Lorg/ton/cell/Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lorg/ton/block/SimpleLib$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/SimpleLib$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/SimpleLib;->Companion:Lorg/ton/block/SimpleLib$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/cell/Cell;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    new-instance v6, Lorg/ton/block/SimpleLib$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v7, "@type"

    invoke-direct {v6, v7}, Lorg/ton/block/SimpleLib$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v2

    invoke-direct {v1, v3, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v0, v4

    sput-object v0, Lorg/ton/block/SimpleLib;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IZLorg/ton/cell/Cell;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 14
    sget-object p4, Lorg/ton/block/SimpleLib$$serializer;->INSTANCE:Lorg/ton/block/SimpleLib$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/SimpleLib$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/SimpleLib;->public:Z

    iput-object p3, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    return-void
.end method

.method public constructor <init>(ZLorg/ton/cell/Cell;)V
    .locals 1

    const-string v0, "root"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/ton/block/SimpleLib;->public:Z

    .line 17
    iput-object p2, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/SimpleLib;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/SimpleLib;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lorg/ton/block/SimpleLib;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-boolean v1, p0, Lorg/ton/block/SimpleLib;->public:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/SimpleLib;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/SimpleLib;

    iget-boolean v1, p0, Lorg/ton/block/SimpleLib;->public:Z

    iget-boolean v3, p1, Lorg/ton/block/SimpleLib;->public:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    iget-object p1, p1, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPublic()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/ton/block/SimpleLib;->public:Z

    return v0
.end method

.method public final getRoot()Lorg/ton/cell/Cell;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/ton/block/SimpleLib;->public:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simple_lib"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 22
    iget-boolean v1, p0, Lorg/ton/block/SimpleLib;->public:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "public"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-object v1, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    const-string v2, "root"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleLib(public="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/ton/block/SimpleLib;->public:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", root="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/SimpleLib;->root:Lorg/ton/cell/Cell;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
