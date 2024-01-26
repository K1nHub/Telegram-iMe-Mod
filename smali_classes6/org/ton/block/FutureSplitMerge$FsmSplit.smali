.class public final Lorg/ton/block/FutureSplitMerge$FsmSplit;
.super Ljava/lang/Object;
.source "FutureSplitMerge.kt"

# interfaces
.implements Lorg/ton/block/FutureSplitMerge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/block/FutureSplitMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FsmSplit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;,
        Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFutureSplitMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FutureSplitMerge$FsmSplit\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,123:1\n86#2,2:124\n82#2,3:126\n88#2:129\n*S KotlinDebug\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FutureSplitMerge$FsmSplit\n*L\n54#1:124,2\n55#1:126,3\n54#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;


# instance fields
.field private final interval:I

.field private final splitUtime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->Companion:Lorg/ton/block/FutureSplitMerge$FsmSplit$Companion;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    .line 52
    iput p2, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/ton/block/FutureSplitMerge$FsmSplit;-><init>(II)V

    return-void
.end method

.method private constructor <init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 48
    sget-object p4, Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/FutureSplitMerge$FsmSplit$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    invoke-virtual {p3}, Lkotlin/UInt;->unbox-impl()I

    move-result p1

    iput p1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/FutureSplitMerge$FsmSplit;-><init>(ILkotlin/UInt;Lkotlin/UInt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/FutureSplitMerge$FsmSplit;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 48
    sget-object v0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget p0, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    invoke-static {p0}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object p0

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
    instance-of v1, p1, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    iget v3, p1, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    iget p1, p1, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getInterval-pVg5ArA()I
    .locals 1

    .line 52
    iget v0, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    return v0
.end method

.method public final getSplitUtime-pVg5ArA()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    invoke-static {v0}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    invoke-static {v1}, Lkotlin/UInt;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fsm_split"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 56
    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->splitUtime:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "split_utime"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 57
    iget v1, p0, Lorg/ton/block/FutureSplitMerge$FsmSplit;->interval:I

    invoke-static {v1}, Lkotlin/UInt;->box-impl(I)Lkotlin/UInt;

    move-result-object v1

    const-string v2, "interval"

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
