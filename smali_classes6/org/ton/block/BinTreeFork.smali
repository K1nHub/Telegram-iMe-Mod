.class public final Lorg/ton/block/BinTreeFork;
.super Ljava/lang/Object;
.source "BinTreeFork.kt"

# interfaces
.implements Lorg/ton/block/BinTree;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/BinTreeFork$$serializer;,
        Lorg/ton/block/BinTreeFork$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/block/BinTree<",
        "TX;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinTreeFork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinTreeFork.kt\norg/ton/block/BinTreeFork\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,64:1\n86#2,2:65\n82#2,3:67\n88#2:70\n*S KotlinDebug\n*F\n+ 1 BinTreeFork.kt\norg/ton/block/BinTreeFork\n*L\n22#1:65,2\n23#1:67,3\n22#1:70\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

.field public static final Companion:Lorg/ton/block/BinTreeFork$Companion;


# instance fields
.field private final left:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation
.end field

.field private final right:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/BinTreeFork$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/BinTreeFork$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/BinTreeFork;->Companion:Lorg/ton/block/BinTreeFork$Companion;

    const/4 v1, 0x2

    new-array v3, v1, [Lkotlinx/serialization/KSerializer;

    .line 31
    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v5, v7}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v4, v3, v6

    new-instance v4, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v5, v6, [Ljava/lang/annotation/Annotation;

    invoke-direct {v4, v0, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x1

    aput-object v4, v3, v0

    sput-object v3, Lorg/ton/block/BinTreeFork;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    new-instance v0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v3, "bt_fork"

    invoke-direct {v0, v3, v2, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v1, "left"

    invoke-virtual {v0, v1, v6}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v1, "right"

    invoke-virtual {v0, v1, v6}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v0, Lorg/ton/block/BinTreeFork;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/BinTreeFork;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    iput-object p3, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;",
            "Lorg/ton/tlb/CellRef<",
            "+",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;)V"
        }
    .end annotation

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "right"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    .line 15
    iput-object p2, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/BinTreeFork;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/BinTreeFork;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3

    .line 11
    sget-object p3, Lorg/ton/block/BinTreeFork;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v0, 0x0

    aget-object v1, p3, v0

    iget-object v2, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aget-object p3, p3, v0

    iget-object p0, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v0, p3, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/BinTreeFork;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/BinTreeFork;

    iget-object v1, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getLeft()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getRight()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TX;>;"
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lorg/ton/block/BinTree$DefaultImpls;->iterator(Lorg/ton/block/BinTree;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Lkotlin/sequences/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "TX;>;"
        }
    .end annotation

    .line 17
    new-instance v0, Lorg/ton/block/BinTreeFork$nodes$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ton/block/BinTreeFork$nodes$1;-><init>(Lorg/ton/block/BinTreeFork;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequence(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bt_fork"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lorg/ton/block/BinTreeFork;->left:Lorg/ton/tlb/CellRef;

    const-string v2, "left"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 25
    iget-object v1, p0, Lorg/ton/block/BinTreeFork;->right:Lorg/ton/tlb/CellRef;

    const-string v2, "right"

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
