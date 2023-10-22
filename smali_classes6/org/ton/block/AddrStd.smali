.class public final Lorg/ton/block/AddrStd;
.super Ljava/lang/Object;
.source "AddrStd.kt"

# interfaces
.implements Lorg/ton/block/MsgAddressInt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/AddrStd$$serializer;,
        Lorg/ton/block/AddrStd$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddrStd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStd\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maybe.kt\norg/ton/block/MaybeKt\n+ 4 BitString.kt\norg/ton/bitstring/BitStringKt\n+ 5 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,200:1\n1#2:201\n16#3:202\n16#3:205\n20#4:203\n10#4:204\n86#5,2:206\n82#5,3:208\n88#5:211\n*S KotlinDebug\n*F\n+ 1 AddrStd.kt\norg/ton/block/AddrStd\n*L\n38#1:202\n44#1:205\n40#1:203\n40#1:204\n53#1:206,2\n54#1:208,3\n53#1:211\n*E\n"
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

.field public static final Companion:Lorg/ton/block/AddrStd$Companion;


# instance fields
.field private final address:Lorg/ton/bitstring/BitString;

.field private final anycast:Lorg/ton/block/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Anycast;",
            ">;"
        }
    .end annotation
.end field

.field private final workchainId:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-class v0, Ljava/lang/Object;

    new-instance v1, Lorg/ton/block/AddrStd$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/AddrStd$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/AddrStd;->Companion:Lorg/ton/block/AddrStd$Companion;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 70
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/block/Maybe;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v10, 0x2

    new-array v6, v10, [Lkotlin/reflect/KClass;

    const-class v3, Lorg/ton/block/Just;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v6, v11

    const-class v3, Lorg/ton/block/Nothing;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v6, v12

    new-array v7, v10, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lorg/ton/block/Just;->Companion:Lorg/ton/block/Just$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    new-array v13, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v8, v13}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v4}, Lorg/ton/block/Just$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v7, v11

    sget-object v3, Lorg/ton/block/Nothing;->Companion:Lorg/ton/block/Nothing$Companion;

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v8, v11, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v0, v8}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    invoke-virtual {v3, v4}, Lorg/ton/block/Nothing$Companion;->serializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v7, v12

    new-array v8, v12, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/block/AddrStd$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v3, "@type"

    invoke-direct {v0, v3}, Lorg/ton/block/AddrStd$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v8, v11

    const-string v4, "org.ton.block.Maybe"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v9, v1, v11

    aput-object v2, v1, v12

    aput-object v2, v1, v10

    .line 70
    sput-object v1, Lorg/ton/block/AddrStd;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>(ILorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, v0, p1, p2}, Lorg/ton/block/AddrStd;-><init>(Lorg/ton/block/Anycast;ILorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 23
    sget-object p5, Lorg/ton/block/AddrStd$$serializer;->INSTANCE:Lorg/ton/block/AddrStd$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/AddrStd$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    iput p3, p0, Lorg/ton/block/AddrStd;->workchainId:I

    iput-object p4, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    .line 50
    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected address.size == 256, actual: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(I[B)V
    .locals 1

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, p1, p2}, Lorg/ton/block/AddrStd;-><init>(Lorg/ton/block/Anycast;I[B)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Anycast;ILorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object p1

    .line 46
    invoke-interface {p3}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object p3

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/AddrStd;-><init>(Lorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Anycast;I[B)V
    .locals 2

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/block/Maybe$Companion;->of(Ljava/lang/Object;)Lorg/ton/block/Maybe;

    move-result-object p1

    .line 20
    array-length v0, p3

    mul-int/lit8 v0, v0, 0x8

    .line 10
    sget-object v1, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v1, p3, v0}, Lorg/ton/bitstring/BitString$Companion;->of([BI)Lorg/ton/bitstring/BitString;

    move-result-object p3

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/AddrStd;-><init>(Lorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Anycast;",
            ">;I",
            "Lorg/ton/bitstring/BitString;",
            ")V"
        }
    .end annotation

    const-string v0, "anycast"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    .line 29
    iput p2, p0, Lorg/ton/block/AddrStd;->workchainId:I

    .line 32
    iput-object p3, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    .line 50
    invoke-interface {p3}, Lorg/ton/bitstring/BitString;->getSize()I

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
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "expected address.size == 256, actual: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 23
    sget-object v0, Lorg/ton/block/AddrStd;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/AddrStd;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 23
    sget-object v0, Lorg/ton/block/AddrStd;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    const/4 v1, 0x2

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final address()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final anycast()Lorg/ton/block/Maybe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Anycast;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/AddrStd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/AddrStd;

    iget-object v1, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    iget-object v3, p1, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/AddrStd;->workchainId:I

    iget v3, p1, Lorg/ton/block/AddrStd;->workchainId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/AddrStd;->workchainId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addr_std"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lorg/ton/block/AddrStd;->anycast:Lorg/ton/block/Maybe;

    const-string v2, "anycast"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 56
    invoke-virtual {p0}, Lorg/ton/block/AddrStd;->workchainId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "workchain_id"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 57
    iget-object v1, p0, Lorg/ton/block/AddrStd;->address:Lorg/ton/bitstring/BitString;

    const-string v2, "address"

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

    .line 61
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public workchainId()I
    .locals 1

    .line 30
    iget v0, p0, Lorg/ton/block/AddrStd;->workchainId:I

    return v0
.end method
