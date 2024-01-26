.class public final Lorg/ton/block/ValidatorInfo;
.super Ljava/lang/Object;
.source "ValidatorInfo.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ValidatorInfo$$serializer;,
        Lorg/ton/block/ValidatorInfo$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValidatorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValidatorInfo.kt\norg/ton/block/ValidatorInfo\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,56:1\n82#2,3:57\n*S KotlinDebug\n*F\n+ 1 ValidatorInfo.kt\norg/ton/block/ValidatorInfo\n*L\n20#1:57,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ValidatorInfo$Companion;


# instance fields
.field private final catchainSeqno:I

.field private final nxCcUpdated:Z

.field private final validatorListHashShort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ValidatorInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ValidatorInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ValidatorInfo;->Companion:Lorg/ton/block/ValidatorInfo$Companion;

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    .line 17
    iput p2, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    .line 18
    iput-boolean p3, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/ValidatorInfo;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(ILkotlin/UInt;Lkotlin/UInt;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 13
    sget-object p5, Lorg/ton/block/ValidatorInfo$$serializer;->INSTANCE:Lorg/ton/block/ValidatorInfo$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/ValidatorInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    iput-boolean p4, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/UInt;Lkotlin/UInt;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/ton/block/ValidatorInfo;-><init>(ILkotlin/UInt;Lkotlin/UInt;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ValidatorInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v1, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/ValidatorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ValidatorInfo;

    iget v1, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    iget v3, p1, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    iget v3, p1, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    iget-boolean p1, p1, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCatchainSeqno-pVg5ArA()I
    .locals 1

    .line 17
    iget v0, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    return v0
.end method

.method public final getNxCcUpdated()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    return v0
.end method

.method public final getValidatorListHashShort-pVg5ArA()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validator_info"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget v1, p0, Lorg/ton/block/ValidatorInfo;->validatorListHashShort:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "validator_list_hash_short"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 22
    iget v1, p0, Lorg/ton/block/ValidatorInfo;->catchainSeqno:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "catchain_seqno"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 23
    iget-boolean v1, p0, Lorg/ton/block/ValidatorInfo;->nxCcUpdated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nx_cc_updated"

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

    .line 26
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
