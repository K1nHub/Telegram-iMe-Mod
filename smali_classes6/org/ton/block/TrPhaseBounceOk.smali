.class public final Lorg/ton/block/TrPhaseBounceOk;
.super Ljava/lang/Object;
.source "TrPhaseBounceOk.kt"

# interfaces
.implements Lorg/ton/block/TrBouncePhase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TrPhaseBounceOk$$serializer;,
        Lorg/ton/block/TrPhaseBounceOk$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseBounceOk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseBounceOk.kt\norg/ton/block/TrPhaseBounceOk\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,56:1\n86#2,2:57\n82#2,3:59\n88#2:62\n*S KotlinDebug\n*F\n+ 1 TrPhaseBounceOk.kt\norg/ton/block/TrPhaseBounceOk\n*L\n21#1:57,2\n22#1:59,3\n21#1:62\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/TrPhaseBounceOk$Companion;


# instance fields
.field private final fwdFees:Lorg/ton/block/Coins;

.field private final msgFees:Lorg/ton/block/Coins;

.field private final msgSize:Lorg/ton/block/StorageUsedShort;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/TrPhaseBounceOk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/TrPhaseBounceOk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/TrPhaseBounceOk;->Companion:Lorg/ton/block/TrPhaseBounceOk$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/StorageUsedShort;Lorg/ton/block/Coins;Lorg/ton/block/Coins;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lorg/ton/block/TrPhaseBounceOk$$serializer;->INSTANCE:Lorg/ton/block/TrPhaseBounceOk$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/TrPhaseBounceOk$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    iput-object p3, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    iput-object p4, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/StorageUsedShort;Lorg/ton/block/Coins;Lorg/ton/block/Coins;)V
    .locals 1

    const-string v0, "msgSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgFees"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fwdFees"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    .line 18
    iput-object p2, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    .line 19
    iput-object p3, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TrPhaseBounceOk;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lorg/ton/block/StorageUsedShort$$serializer;->INSTANCE:Lorg/ton/block/StorageUsedShort$$serializer;

    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/Coins$$serializer;->INSTANCE:Lorg/ton/block/Coins$$serializer;

    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

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
    instance-of v1, p1, Lorg/ton/block/TrPhaseBounceOk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TrPhaseBounceOk;

    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    iget-object v3, p1, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    iget-object v3, p1, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    iget-object p1, p1, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFwdFees()Lorg/ton/block/Coins;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getMsgFees()Lorg/ton/block/Coins;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    return-object v0
.end method

.method public final getMsgSize()Lorg/ton/block/StorageUsedShort;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    invoke-virtual {v0}, Lorg/ton/block/StorageUsedShort;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    invoke-virtual {v1}, Lorg/ton/block/Coins;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tr_phase_bounce_ok"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgSize:Lorg/ton/block/StorageUsedShort;

    const-string v2, "msg_size"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->msgFees:Lorg/ton/block/Coins;

    const-string v2, "msg_fees"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/TrPhaseBounceOk;->fwdFees:Lorg/ton/block/Coins;

    const-string v2, "fwd_fees"

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

    .line 29
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
