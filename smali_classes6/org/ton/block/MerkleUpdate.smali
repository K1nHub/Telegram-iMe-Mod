.class public final Lorg/ton/block/MerkleUpdate;
.super Ljava/lang/Object;
.source "MerkleUpdate.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MerkleUpdate$$serializer;,
        Lorg/ton/block/MerkleUpdate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tlb/TlbObject;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerkleUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdate\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,78:1\n82#2,3:79\n*S KotlinDebug\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdate\n*L\n28#1:79,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

.field public static final Companion:Lorg/ton/block/MerkleUpdate$Companion;


# instance fields
.field private final new:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "TX;>;"
        }
    .end annotation
.end field

.field private final newDepth:S

.field private final newHash:Lorg/ton/bitstring/BitString;

.field private final old:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "TX;>;"
        }
    .end annotation
.end field

.field private final oldDepth:S

.field private final oldHash:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/MerkleUpdate$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/MerkleUpdate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/MerkleUpdate;->Companion:Lorg/ton/block/MerkleUpdate$Companion;

    const/4 v1, 0x6

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v5, 0x3

    aput-object v2, v3, v5

    .line 38
    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v6, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v6, 0x4

    aput-object v5, v3, v6

    new-instance v5, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v5, v0, v6}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x5

    aput-object v5, v3, v0

    sput-object v3, Lorg/ton/block/MerkleUpdate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v3, "!merkle_update"

    invoke-direct {v0, v3, v2, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "old_hash"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "new_hash"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "old_depth"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "new_depth"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "old"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "new"

    invoke-virtual {v0, v1, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v0, Lorg/ton/block/MerkleUpdate;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>(ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/UShort;Lkotlin/UShort;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/bitstring/BitString;",
            "Lkotlin/UShort;",
            "Lkotlin/UShort;",
            "Lorg/ton/tlb/CellRef<",
            "+TX;>;",
            "Lorg/ton/tlb/CellRef<",
            "+TX;>;",
            "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
            ")V"
        }
    .end annotation

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-eq v0, p8, :cond_0

    .line 12
    sget-object p8, Lorg/ton/block/MerkleUpdate;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p8}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    iput-object p3, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {p4}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    iput-short p1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    invoke-virtual {p5}, Lkotlin/UShort;->unbox-impl()S

    move-result p1

    iput-short p1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    iput-object p6, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    iput-object p7, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    .line 23
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    const/16 p5, 0x100

    if-ne p1, p5, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p4

    :goto_0
    const-string p6, "Failed requirement."

    if-eqz p1, :cond_4

    .line 24
    invoke-interface {p3}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    if-ne p1, p5, :cond_2

    goto :goto_1

    :cond_2
    move p2, p4

    :goto_1
    if-eqz p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/UShort;Lkotlin/UShort;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/ton/block/MerkleUpdate;-><init>(ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/UShort;Lkotlin/UShort;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;SSLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/bitstring/BitString;",
            "SS",
            "Lorg/ton/tlb/CellRef<",
            "+TX;>;",
            "Lorg/ton/tlb/CellRef<",
            "+TX;>;)V"
        }
    .end annotation

    const-string v0, "oldHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "new"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    .line 16
    iput-object p2, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    .line 17
    iput-short p3, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    .line 18
    iput-short p4, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    .line 19
    iput-object p5, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    .line 20
    iput-object p6, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    .line 23
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/16 p5, 0x100

    if-ne p1, p5, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    const-string p6, "Failed requirement."

    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    if-ne p1, p5, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-eqz p3, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;SSLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/ton/block/MerkleUpdate;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;SSLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lorg/ton/block/MerkleUpdate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MerkleUpdate;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 12
    sget-object p3, Lorg/ton/block/MerkleUpdate;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    invoke-static {v1}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    invoke-static {v1}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x4

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aget-object p3, p3, v0

    iget-object p0, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v0, p3, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/MerkleUpdate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MerkleUpdate;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    iget-short v3, p1, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    iget-short v3, p1, Lorg/ton/block/MerkleUpdate;->newDepth:S

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getNew()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getNewDepth-Mh2AYeg()S
    .locals 1

    .line 18
    iget-short v0, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    return v0
.end method

.method public final getNewHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getOld()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getOldDepth-Mh2AYeg()S
    .locals 1

    .line 17
    iget-short v0, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    return v0
.end method

.method public final getOldHash()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    invoke-static {v1}, Lkotlin/UShort;->hashCode-impl(S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    invoke-static {v1}, Lkotlin/UShort;->hashCode-impl(S)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 5

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "!merkle_update"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    const-string v2, "old_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 30
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    const-string v2, "new_hash"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    invoke-static {v1}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v1

    const-string v2, "old_depth"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 32
    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    invoke-static {v1}, Lkotlin/UShort;->box-impl(S)Lkotlin/UShort;

    move-result-object v1

    const-string v2, "new_depth"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 33
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lorg/ton/tlb/CellRef$DefaultImpls;->toCell$default(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;ILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object v1

    const-string v4, "old"

    invoke-virtual {v0, v4, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 34
    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v2, v3, v2}, Lorg/ton/tlb/CellRef$DefaultImpls;->toCell$default(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/TlbCodec;ILjava/lang/Object;)Lorg/ton/cell/Cell;

    move-result-object v1

    const-string v4, "new"

    invoke-virtual {v0, v4, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 83
    invoke-static {v0, v2, v3, v2}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MerkleUpdate(oldHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->oldHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->newHash:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->oldDepth:S

    invoke-static {v1}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lorg/ton/block/MerkleUpdate;->newDepth:S

    invoke-static {v1}, Lkotlin/UShort;->toString-impl(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->old:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/MerkleUpdate;->new:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
