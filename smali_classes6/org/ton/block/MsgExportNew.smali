.class public final Lorg/ton/block/MsgExportNew;
.super Ljava/lang/Object;
.source "MsgExportNew.kt"

# interfaces
.implements Lorg/ton/block/OutMsg;
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgExportNew$$serializer;,
        Lorg/ton/block/MsgExportNew$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMsgExportNew.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MsgExportNew.kt\norg/ton/block/MsgExportNew\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,48:1\n86#2,2:49\n82#2,3:51\n88#2:54\n*S KotlinDebug\n*F\n+ 1 MsgExportNew.kt\norg/ton/block/MsgExportNew\n*L\n17#1:49,2\n18#1:51,3\n17#1:54\n*E\n"
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

.field public static final Companion:Lorg/ton/block/MsgExportNew$Companion;


# instance fields
.field private final outMsg:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation
.end field

.field private final transaction:Lorg/ton/tlb/CellRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lorg/ton/tlb/CellRef;

    new-instance v1, Lorg/ton/block/MsgExportNew$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/ton/block/MsgExportNew$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lorg/ton/block/MsgExportNew;->Companion:Lorg/ton/block/MsgExportNew$Companion;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    .line 26
    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v3, v5}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    aput-object v2, v1, v4

    new-instance v2, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/annotation/Annotation;

    invoke-direct {v2, v0, v3}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;[Ljava/lang/annotation/Annotation;)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lorg/ton/block/MsgExportNew;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/MsgExportNew$$serializer;->INSTANCE:Lorg/ton/block/MsgExportNew$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/MsgExportNew$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    iput-object p3, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/Transaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    .line 15
    iput-object p2, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 11
    sget-object v0, Lorg/ton/block/MsgExportNew;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/MsgExportNew;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 11
    sget-object v0, Lorg/ton/block/MsgExportNew;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object v3, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

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
    instance-of v1, p1, Lorg/ton/block/MsgExportNew;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/MsgExportNew;

    iget-object v1, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    iget-object v3, p1, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    iget-object p1, p1, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getOutMsg()Lorg/ton/tlb/CellRef;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/MsgEnvelope;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public final getTransaction()Lorg/ton/tlb/CellRef;
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
    iget-object v0, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg_export_new"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lorg/ton/block/MsgExportNew;->outMsg:Lorg/ton/tlb/CellRef;

    const-string v2, "out_msg"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 20
    iget-object v1, p0, Lorg/ton/block/MsgExportNew;->transaction:Lorg/ton/tlb/CellRef;

    const-string v2, "transaction"

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

    .line 24
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
