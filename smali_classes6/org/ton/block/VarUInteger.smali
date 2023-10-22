.class public final Lorg/ton/block/VarUInteger;
.super Ljava/lang/Object;
.source "VarUInteger.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/VarUInteger$$serializer;,
        Lorg/ton/block/VarUInteger$Companion;,
        Lorg/ton/block/VarUInteger$VarUIntegerTlbConstructor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVarUInteger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VarUInteger.kt\norg/ton/block/VarUInteger\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,128:1\n82#2,3:129\n*S KotlinDebug\n*F\n+ 1 VarUInteger.kt\norg/ton/block/VarUInteger\n*L\n94#1:129,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/VarUInteger$Companion;


# instance fields
.field private final len:I

.field private final value:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/VarUInteger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/VarUInteger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/VarUInteger;->Companion:Lorg/ton/block/VarUInteger$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 26
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/block/VarUInteger;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/math/BigInteger;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # Ljava/math/BigInteger;
        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lorg/ton/bigint/BigIntSerializer;
        .end annotation
    .end param

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 16
    sget-object p4, Lorg/ton/block/VarUInteger$$serializer;->INSTANCE:Lorg/ton/block/VarUInteger$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/VarUInteger$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/ton/block/VarUInteger;->len:I

    iput-object p3, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lorg/ton/block/VarUInteger;->len:I

    .line 22
    iput-object p2, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 27
    invoke-static {p1, p2}, Lorg/ton/bigint/BigIntJvmKt;->toBigInt(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/block/VarUInteger;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->getBitLength(Ljava/math/BigInteger;)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1}, Lorg/ton/bigint/BigIntJvmKt;->getBitLength(Ljava/math/BigInteger;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-direct {p0, v0, p1}, Lorg/ton/block/VarUInteger;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/VarUInteger;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 16
    iget v0, p0, Lorg/ton/block/VarUInteger;->len:I

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    sget-object v0, Lorg/ton/bigint/BigIntSerializer;->INSTANCE:Lorg/ton/bigint/BigIntSerializer;

    iget-object p0, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

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
    instance-of v1, p1, Lorg/ton/block/VarUInteger;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/VarUInteger;

    iget v1, p0, Lorg/ton/block/VarUInteger;->len:I

    iget v3, p1, Lorg/ton/block/VarUInteger;->len:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/block/VarUInteger;->len:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final len()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/ton/block/VarUInteger;->len:I

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "var_uint"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 95
    iget v1, p0, Lorg/ton/block/VarUInteger;->len:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "len"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 96
    iget-object v1, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, v1, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->close$default(Lorg/ton/tlb/TlbPrettyPrinter;Ljava/lang/String;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final value()Ljava/math/BigInteger;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ton/block/VarUInteger;->value:Ljava/math/BigInteger;

    return-object v0
.end method
