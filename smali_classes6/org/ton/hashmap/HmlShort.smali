.class public final Lorg/ton/hashmap/HmlShort;
.super Ljava/lang/Object;
.source "HmlShort.kt"

# interfaces
.implements Lorg/ton/hashmap/HmLabel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmlShort$$serializer;,
        Lorg/ton/hashmap/HmlShort$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlShort.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlShort.kt\norg/ton/hashmap/HmlShort\n+ 2 Unary.kt\norg/ton/hashmap/UnaryKt\n+ 3 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,62:1\n12#2:63\n82#3,3:64\n*S KotlinDebug\n*F\n+ 1 HmlShort.kt\norg/ton/hashmap/HmlShort\n*L\n17#1:63\n22#1:64,3\n*E\n"
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

.field public static final Companion:Lorg/ton/hashmap/HmlShort$Companion;


# instance fields
.field private final len:Lorg/ton/hashmap/Unary;

.field private final s:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/hashmap/HmlShort$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HmlShort$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/hashmap/HmlShort;->Companion:Lorg/ton/hashmap/HmlShort$Companion;

    .line 31
    new-instance v0, Lorg/ton/hashmap/HmlShort;

    sget-object v2, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v2}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/ton/hashmap/HmlShort;-><init>(Lorg/ton/bitstring/BitString;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 30
    sget-object v2, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    invoke-virtual {v2}, Lorg/ton/hashmap/Unary$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/hashmap/HmlShort;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/hashmap/Unary;Lorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/hashmap/HmlShort$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlShort$$serializer;

    invoke-virtual {p4}, Lorg/ton/hashmap/HmlShort$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    iput-object p3, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    .line 12
    sget-object v1, Lorg/ton/hashmap/Unary;->Companion:Lorg/ton/hashmap/Unary$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/hashmap/Unary$Companion;->of(I)Lorg/ton/hashmap/Unary;

    move-result-object v0

    .line 17
    invoke-direct {p0, v0, p1}, Lorg/ton/hashmap/HmlShort;-><init>(Lorg/ton/hashmap/Unary;Lorg/ton/bitstring/BitString;)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/hashmap/Unary;Lorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "len"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    .line 15
    iput-object p2, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/hashmap/HmlShort;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/hashmap/HmlShort;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/hashmap/HmlShort;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/hashmap/HmlShort;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/HmlShort;

    iget-object v1, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    iget-object v3, p1, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLen()Lorg/ton/hashmap/Unary;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    return-object v0
.end method

.method public final getS()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hml_short"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/hashmap/HmlShort;->len:Lorg/ton/hashmap/Unary;

    const-string v2, "len"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    const-string v2, "s"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toBitString()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/hashmap/HmlShort;->s:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 28
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
