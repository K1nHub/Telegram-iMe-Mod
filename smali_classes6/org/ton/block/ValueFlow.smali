.class public final Lorg/ton/block/ValueFlow;
.super Ljava/lang/Object;
.source "ValueFlow.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ValueFlow$$serializer;,
        Lorg/ton/block/ValueFlow$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValueFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlow\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,94:1\n82#2,3:95\n*S KotlinDebug\n*F\n+ 1 ValueFlow.kt\norg/ton/block/ValueFlow\n*L\n22#1:95,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ValueFlow$Companion;


# instance fields
.field private final created:Lorg/ton/block/CurrencyCollection;

.field private final exported:Lorg/ton/block/CurrencyCollection;

.field private final feesCollected:Lorg/ton/block/CurrencyCollection;

.field private final feesImported:Lorg/ton/block/CurrencyCollection;

.field private final fromPrevBlk:Lorg/ton/block/CurrencyCollection;

.field private final imported:Lorg/ton/block/CurrencyCollection;

.field private final minted:Lorg/ton/block/CurrencyCollection;

.field private final recovered:Lorg/ton/block/CurrencyCollection;

.field private final toNextBlk:Lorg/ton/block/CurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ValueFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ValueFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ValueFlow;->Companion:Lorg/ton/block/ValueFlow$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit16 p11, p1, 0x1ff

    const/16 v0, 0x1ff

    if-eq v0, p11, :cond_0

    .line 8
    sget-object p11, Lorg/ton/block/ValueFlow$$serializer;->INSTANCE:Lorg/ton/block/ValueFlow$$serializer;

    invoke-virtual {p11}, Lorg/ton/block/ValueFlow$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    iput-object p3, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    iput-object p4, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    iput-object p5, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    iput-object p6, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    iput-object p7, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    iput-object p8, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    iput-object p9, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    iput-object p10, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V
    .locals 1

    const-string v0, "fromPrevBlk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toNextBlk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imported"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exported"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feesCollected"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feesImported"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recovered"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "created"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minted"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    .line 12
    iput-object p2, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    .line 13
    iput-object p3, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    .line 14
    iput-object p4, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    .line 15
    iput-object p5, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    .line 16
    iput-object p6, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    .line 17
    iput-object p7, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    .line 18
    iput-object p8, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    .line 19
    iput-object p9, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ValueFlow;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 8
    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x2

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x3

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x4

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x7

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    const/16 v1, 0x8

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
    instance-of v1, p1, Lorg/ton/block/ValueFlow;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ValueFlow;

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCreated()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getExported()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getFeesCollected()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getFeesImported()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getFromPrevBlk()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getImported()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getMinted()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getRecovered()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getToNextBlk()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v0}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value_flow"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->fromPrevBlk:Lorg/ton/block/CurrencyCollection;

    const-string v2, "from_prev_blk"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->toNextBlk:Lorg/ton/block/CurrencyCollection;

    const-string v2, "to_next_blk"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->imported:Lorg/ton/block/CurrencyCollection;

    const-string v2, "imported"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 26
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->exported:Lorg/ton/block/CurrencyCollection;

    const-string v2, "exported"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 27
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const-string v2, "fees_collected"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 28
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->feesImported:Lorg/ton/block/CurrencyCollection;

    const-string v2, "fees_imported"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 29
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->recovered:Lorg/ton/block/CurrencyCollection;

    const-string v2, "recovered"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 30
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->created:Lorg/ton/block/CurrencyCollection;

    const-string v2, "created"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 31
    iget-object v1, p0, Lorg/ton/block/ValueFlow;->minted:Lorg/ton/block/CurrencyCollection;

    const-string v2, "minted"

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

    .line 35
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
