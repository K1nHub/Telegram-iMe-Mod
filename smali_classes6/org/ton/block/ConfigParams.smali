.class public final Lorg/ton/block/ConfigParams;
.super Ljava/lang/Object;
.source "ConfigParams.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ConfigParams$$serializer;,
        Lorg/ton/block/ConfigParams$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigParams.kt\norg/ton/block/ConfigParams\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,55:1\n82#2,3:56\n*S KotlinDebug\n*F\n+ 1 ConfigParams.kt\norg/ton/block/ConfigParams\n*L\n24#1:56,3\n*E\n"
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

.field public static final Companion:Lorg/ton/block/ConfigParams$Companion;


# instance fields
.field private final config:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field

.field private final configAddr:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/ConfigParams$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ConfigParams$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ConfigParams;->Companion:Lorg/ton/block/ConfigParams$Companion;

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/ConfigParams;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 15
    sget-object p4, Lorg/ton/block/ConfigParams$$serializer;->INSTANCE:Lorg/ton/block/ConfigParams$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/ConfigParams$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    iput-object p3, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    .line 21
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lorg/ton/cell/Cell;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "configAddr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    .line 18
    iput-object p2, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    .line 21
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/16 p2, 0x100

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lorg/ton/block/ConfigParams;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ConfigParams;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 15
    sget-object v0, Lorg/ton/block/ConfigParams;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v2, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

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
    instance-of v1, p1, Lorg/ton/block/ConfigParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ConfigParams;

    iget-object v1, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfig()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getConfigAddr()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lorg/ton/block/ConfigParams;->configAddr:Lorg/ton/bitstring/BitString;

    const-string v2, "config_addr"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-object v1, p0, Lorg/ton/block/ConfigParams;->config:Lorg/ton/tlb/CellRef;

    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
