.class public final Lorg/ton/hashmap/HmlLong;
.super Ljava/lang/Object;
.source "HmlLong.kt"

# interfaces
.implements Lorg/ton/hashmap/HmLabel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmlLong$$serializer;,
        Lorg/ton/hashmap/HmlLong$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmlLong.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmlLong.kt\norg/ton/hashmap/HmlLong\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,61:1\n82#2,3:62\n*S KotlinDebug\n*F\n+ 1 HmlLong.kt\norg/ton/hashmap/HmlLong\n*L\n22#1:62,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/hashmap/HmlLong$Companion;


# instance fields
.field private final n:I

.field private final s:Lorg/ton/bitstring/BitString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/hashmap/HmlLong$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/hashmap/HmlLong$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/hashmap/HmlLong;->Companion:Lorg/ton/hashmap/HmlLong$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILorg/ton/bitstring/BitString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 12
    sget-object p4, Lorg/ton/hashmap/HmlLong$$serializer;->INSTANCE:Lorg/ton/hashmap/HmlLong$$serializer;

    invoke-virtual {p4}, Lorg/ton/hashmap/HmlLong$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/hashmap/HmlLong;->n:I

    iput-object p3, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public constructor <init>(ILorg/ton/bitstring/BitString;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/ton/hashmap/HmlLong;->n:I

    .line 16
    iput-object p2, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/hashmap/HmlLong;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 12
    iget v0, p0, Lorg/ton/hashmap/HmlLong;->n:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object p0, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

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
    instance-of v1, p1, Lorg/ton/hashmap/HmlLong;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/HmlLong;

    iget v1, p0, Lorg/ton/hashmap/HmlLong;->n:I

    iget v3, p1, Lorg/ton/hashmap/HmlLong;->n:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    iget-object p1, p1, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getN()I
    .locals 1

    .line 15
    iget v0, p0, Lorg/ton/hashmap/HmlLong;->n:I

    return v0
.end method

.method public final getS()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/hashmap/HmlLong;->n:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hml_long"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget v1, p0, Lorg/ton/hashmap/HmlLong;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

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

    .line 20
    iget-object v0, p0, Lorg/ton/hashmap/HmlLong;->s:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 27
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
