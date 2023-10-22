.class public final Lorg/ton/block/TransMergePrepare;
.super Ljava/lang/Object;
.source "TransMergePrepare.kt"

# interfaces
.implements Lorg/ton/block/TransactionDescr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TransMergePrepare$$serializer;,
        Lorg/ton/block/TransMergePrepare$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransMergePrepare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransMergePrepare.kt\norg/ton/block/TransMergePrepare\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,57:1\n86#2,2:58\n82#2,3:60\n88#2:63\n*S KotlinDebug\n*F\n+ 1 TransMergePrepare.kt\norg/ton/block/TransMergePrepare\n*L\n21#1:58,2\n22#1:60,3\n21#1:63\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/TransMergePrepare$Companion;


# instance fields
.field private final aborted:Z

.field private final splitInfo:Lorg/ton/block/SplitMergeInfo;

.field private final storagePh:Lorg/ton/block/TrStoragePhase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/TransMergePrepare$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/TransMergePrepare$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/TransMergePrepare;->Companion:Lorg/ton/block/TransMergePrepare$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/SplitMergeInfo;Lorg/ton/block/TrStoragePhase;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 14
    sget-object p5, Lorg/ton/block/TransMergePrepare$$serializer;->INSTANCE:Lorg/ton/block/TransMergePrepare$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/TransMergePrepare$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iput-object p3, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    iput-boolean p4, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/block/TrStoragePhase;Z)V
    .locals 1

    const-string v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storagePh"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    .line 18
    iput-object p2, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    .line 19
    iput-boolean p3, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TransMergePrepare;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 14
    sget-object v0, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/TrStoragePhase$$serializer;->INSTANCE:Lorg/ton/block/TrStoragePhase$$serializer;

    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

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
    instance-of v1, p1, Lorg/ton/block/TransMergePrepare;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TransMergePrepare;

    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iget-object v3, p1, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    iget-object v3, p1, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

    iget-boolean p1, p1, Lorg/ton/block/TransMergePrepare;->aborted:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAborted()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

    return v0
.end method

.method public final getSplitInfo()Lorg/ton/block/SplitMergeInfo;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    return-object v0
.end method

.method public final getStoragePh()Lorg/ton/block/TrStoragePhase;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-virtual {v0}, Lorg/ton/block/SplitMergeInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    invoke-virtual {v1}, Lorg/ton/block/TrStoragePhase;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

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

    const-string v0, "trans_merge_prepare"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const-string v2, "split_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/TransMergePrepare;->storagePh:Lorg/ton/block/TrStoragePhase;

    const-string v2, "storage_ph"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-boolean v1, p0, Lorg/ton/block/TransMergePrepare;->aborted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "aborted"

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
