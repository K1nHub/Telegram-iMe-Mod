.class public final Lorg/ton/block/Certificate;
.super Ljava/lang/Object;
.source "Certificate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/Certificate$$serializer;,
        Lorg/ton/block/Certificate$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/Certificate$Companion;


# instance fields
.field private final temp_key:Lorg/ton/block/SigPubKey;

.field private final valid_since:I

.field private final valid_until:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/Certificate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/Certificate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/Certificate;->Companion:Lorg/ton/block/Certificate$Companion;

    return-void
.end method

.method private constructor <init>(ILorg/ton/block/SigPubKey;Lkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 13
    sget-object p5, Lorg/ton/block/Certificate$$serializer;->INSTANCE:Lorg/ton/block/Certificate$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/Certificate$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/Certificate;->valid_since:I

    invoke-virtual {p4}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/Certificate;->valid_until:I

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/SigPubKey;Lkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/Certificate;-><init>(ILorg/ton/block/SigPubKey;Lkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lorg/ton/block/SigPubKey;II)V
    .locals 1

    const-string v0, "temp_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    .line 17
    iput p2, p0, Lorg/ton/block/Certificate;->valid_since:I

    .line 18
    iput p3, p0, Lorg/ton/block/Certificate;->valid_until:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/block/SigPubKey;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/Certificate;-><init>(Lorg/ton/block/SigPubKey;II)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/Certificate;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    sget-object v0, Lorg/ton/block/SigPubKey$$serializer;->INSTANCE:Lorg/ton/block/SigPubKey$$serializer;

    iget-object v1, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/Certificate;->valid_since:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget p0, p0, Lorg/ton/block/Certificate;->valid_until:I

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

    const/4 v1, 0x2

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
    instance-of v1, p1, Lorg/ton/block/Certificate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/Certificate;

    iget-object v1, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    iget-object v3, p1, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/Certificate;->valid_since:I

    iget v3, p1, Lorg/ton/block/Certificate;->valid_since:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/block/Certificate;->valid_until:I

    iget p1, p1, Lorg/ton/block/Certificate;->valid_until:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getTemp_key()Lorg/ton/block/SigPubKey;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    return-object v0
.end method

.method public final getValid_since-pVg5ArA()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/block/Certificate;->valid_since:I

    return v0
.end method

.method public final getValid_until-pVg5ArA()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/block/Certificate;->valid_until:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    invoke-virtual {v0}, Lorg/ton/block/SigPubKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/Certificate;->valid_since:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/Certificate;->valid_until:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate(temp_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/Certificate;->temp_key:Lorg/ton/block/SigPubKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", valid_since="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/block/Certificate;->valid_since:I

    invoke-static {v1}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", valid_until="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/block/Certificate;->valid_until:I

    invoke-static {v1}, Lkotlin/UInt;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
