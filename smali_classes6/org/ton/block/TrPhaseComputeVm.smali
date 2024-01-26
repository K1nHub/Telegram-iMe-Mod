.class public final Lorg/ton/block/TrPhaseComputeVm;
.super Ljava/lang/Object;
.source "TrPhaseComputeVm.kt"

# interfaces
.implements Lorg/ton/block/TrComputePhase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrPhaseComputeVm$$serializer;,
        Lorg/ton/block/TrPhaseComputeVm$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeVm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrPhaseComputeVm\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,140:1\n86#2,2:141\n82#2,3:143\n88#2:146\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrPhaseComputeVm\n*L\n22#1:141,2\n23#1:143,3\n22#1:146\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TrPhaseComputeVm$Companion;


# instance fields
.field private final accountActivated:Z

.field private final gasFees:Lorg/ton/block/Coins;

.field private final msgStateUsed:Z

.field private final r1:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrComputePhaseAux;",
            ">;"
        }
    .end annotation
.end field

.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/TrPhaseComputeVm$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/TrPhaseComputeVm$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/TrPhaseComputeVm;->Companion:Lorg/ton/block/TrPhaseComputeVm$Companion;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 34
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v3, Lorg/ton/tlb/CellRef;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v1, v3, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/TrPhaseComputeVm;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IZZZLorg/ton/block/Coins;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x1f

    const/16 v0, 0x1f

    if-eq v0, p7, :cond_0

    .line 13
    sget-object p7, Lorg/ton/block/TrPhaseComputeVm$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseComputeVm$$serializer;

    invoke-virtual {p7}, Lorg/ton/block/TrPhaseComputeVm$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p7

    invoke-static {p1, v0, p7}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    iput-boolean p3, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    iput-boolean p4, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    iput-object p5, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    iput-object p6, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(ZZZLorg/ton/block/Coins;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lorg/ton/block/Coins;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrComputePhaseAux;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gasFees"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r1"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p1, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    .line 17
    iput-boolean p2, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    .line 18
    iput-boolean p3, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    .line 19
    iput-object p4, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    .line 20
    iput-object p5, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 13
    sget-object v0, Lorg/ton/block/TrPhaseComputeVm;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrPhaseComputeVm;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 13
    sget-object v0, Lorg/ton/block/TrPhaseComputeVm;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v1, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v2, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

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
    instance-of v1, p1, Lorg/ton/block/TrPhaseComputeVm;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrPhaseComputeVm;

    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    iget-boolean v3, p1, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    iget-boolean v3, p1, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    iget-boolean v3, p1, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAccountActivated()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    return v0
.end method

.method public final getGasFees()Lorg/ton/block/Coins;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getMsgStateUsed()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    return v0
.end method

.method public final getR1()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrComputePhaseAux;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tr_phase_compute_vm"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 24
    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->msgStateUsed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "msg_state_used"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-boolean v1, p0, Lorg/ton/block/TrPhaseComputeVm;->accountActivated:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "account_activated"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 27
    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->gasFees:Lorg/ton/block/Coins;

    const-string v2, "gas_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/TrPhaseComputeVm;->r1:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

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

    .line 32
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
