.class public final Lorg/ton/block/TrPhaseComputeSkipped;
.super Ljava/lang/Object;
.source "TrPhaseComputeSkipped.kt"

# interfaces
.implements Lorg/ton/block/TrComputePhase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrPhaseComputeSkipped$$serializer;,
        Lorg/ton/block/TrPhaseComputeSkipped$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeSkipped.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeSkipped.kt\norg/ton/block/TrPhaseComputeSkipped\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,47:1\n86#2,2:48\n82#2,3:50\n88#2:53\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeSkipped.kt\norg/ton/block/TrPhaseComputeSkipped\n*L\n19#1:48,2\n20#1:50,3\n19#1:53\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TrPhaseComputeSkipped$Companion;


# instance fields
.field private final reason:Lorg/ton/block/ComputeSkipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TrPhaseComputeSkipped$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/TrPhaseComputeSkipped$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/TrPhaseComputeSkipped;->Companion:Lorg/ton/block/TrPhaseComputeSkipped$Companion;

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 27
    sget-object v1, Lorg/ton/block/ComputeSkipReason;->Companion:Lorg/ton/block/ComputeSkipReason$Companion;

    invoke-virtual {v1}, Lorg/ton/block/ComputeSkipReason$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/TrPhaseComputeSkipped;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/ComputeSkipReason;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 14
    sget-object p3, Lorg/ton/block/TrPhaseComputeSkipped$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseComputeSkipped$$serializer;

    invoke-virtual {p3}, Lorg/ton/block/TrPhaseComputeSkipped$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/ComputeSkipReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/TrPhaseComputeSkipped;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrPhaseComputeSkipped;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 14
    sget-object v0, Lorg/ton/block/TrPhaseComputeSkipped;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/TrPhaseComputeSkipped;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrPhaseComputeSkipped;

    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    iget-object p1, p1, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getReason()Lorg/ton/block/ComputeSkipReason;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tr_phase_compute_skipped"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeSkipped;->reason:Lorg/ton/block/ComputeSkipReason;

    const-string v2, "reason"

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

    .line 25
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
