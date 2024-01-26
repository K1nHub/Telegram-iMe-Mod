.class public final Lorg/ton/block/TransSplitInstall;
.super Ljava/lang/Object;
.source "TransSplitInstall.kt"

# interfaces
.implements Lorg/ton/block/TransactionDescr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/TransSplitInstall$$serializer;,
        Lorg/ton/block/TransSplitInstall$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransSplitInstall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransSplitInstall.kt\norg/ton/block/TransSplitInstall\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,56:1\n86#2,2:57\n82#2,3:59\n88#2:62\n*S KotlinDebug\n*F\n+ 1 TransSplitInstall.kt\norg/ton/block/TransSplitInstall\n*L\n21#1:57,2\n22#1:59,3\n21#1:62\n*E\n"
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

.field public static final Companion:Lorg/ton/block/TransSplitInstall$Companion;


# instance fields
.field private final installed:Z

.field private final prepareTransaction:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final splitInfo:Lorg/ton/block/SplitMergeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/ton/block/TransSplitInstall$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/TransSplitInstall$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/TransSplitInstall;->Companion:Lorg/ton/block/TransSplitInstall$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 18
    new-instance v3, Lkotlinx/serialization/PolymorphicSerializer;

    const-class v4, Lorg/ton/tlb/CellRef;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {v3, v4, v2}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/block/TransSplitInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 11
    sget-object p5, Lorg/ton/block/TransSplitInstall$$serializer;->INSTANCE:Lorg/ton/block/TransSplitInstall$$serializer;

    invoke-virtual {p5}, Lorg/ton/block/TransSplitInstall$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iput-object p3, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    iput-boolean p4, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/block/SplitMergeInfo;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "splitInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepareTransaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    .line 15
    iput-object p2, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    .line 16
    iput-boolean p3, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/TransSplitInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/TransSplitInstall;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 11
    sget-object v0, Lorg/ton/block/TransSplitInstall;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/block/SplitMergeInfo$$serializer;->INSTANCE:Lorg/ton/block/SplitMergeInfo$$serializer;

    iget-object v2, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-boolean p0, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

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
    instance-of v1, p1, Lorg/ton/block/TransSplitInstall;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/TransSplitInstall;

    iget-object v1, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    iget-object v3, p1, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

    iget-boolean p1, p1, Lorg/ton/block/TransSplitInstall;->installed:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getInstalled()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

    return v0
.end method

.method public final getPrepareTransaction()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getSplitInfo()Lorg/ton/block/SplitMergeInfo;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    invoke-virtual {v0}, Lorg/ton/block/SplitMergeInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

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

    const-string v0, "trans_split_install"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lorg/ton/block/TransSplitInstall;->splitInfo:Lorg/ton/block/SplitMergeInfo;

    const-string v2, "split_info"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 24
    iget-object v1, p0, Lorg/ton/block/TransSplitInstall;->prepareTransaction:Lorg/ton/tlb/CellRef;

    const-string v2, "prepare_transaction"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-boolean v1, p0, Lorg/ton/block/TransSplitInstall;->installed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "installed"

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

    .line 30
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
