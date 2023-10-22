.class public final Lorg/ton/block/KeyMaxLt;
.super Ljava/lang/Object;
.source "KeyMaxLt.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/KeyMaxLt$$serializer;,
        Lorg/ton/block/KeyMaxLt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyMaxLt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyMaxLt.kt\norg/ton/block/KeyMaxLt\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,47:1\n82#2,3:48\n*S KotlinDebug\n*F\n+ 1 KeyMaxLt.kt\norg/ton/block/KeyMaxLt\n*L\n18#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/KeyMaxLt$Companion;


# instance fields
.field private final key:Z

.field private final maxEndLt:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/KeyMaxLt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/KeyMaxLt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/KeyMaxLt;->Companion:Lorg/ton/block/KeyMaxLt$Companion;

    return-void
.end method

.method private constructor <init>(IZLkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 13
    sget-object p4, Lorg/ton/block/KeyMaxLt$$serializer;->INSTANCE:Lorg/ton/block/KeyMaxLt$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/KeyMaxLt$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    invoke-virtual {p3}, Lkotlin/ULong;->unbox-impl()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/block/KeyMaxLt;-><init>(IZLkotlin/ULong;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(ZJ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    .line 16
    iput-wide p2, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    return-void
.end method

.method public synthetic constructor <init>(ZJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/ton/block/KeyMaxLt;-><init>(ZJ)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/KeyMaxLt;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 13
    iget-boolean v0, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    iget-wide v1, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/block/KeyMaxLt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/KeyMaxLt;

    iget-boolean v1, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    iget-boolean v3, p1, Lorg/ton/block/KeyMaxLt;->key:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    iget-wide v5, p1, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getKey()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    return v0
.end method

.method public final getMaxEndLt-s-VKNKU()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_max_lt"

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 19
    iget-boolean v1, p0, Lorg/ton/block/KeyMaxLt;->key:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 20
    iget-wide v1, p0, Lorg/ton/block/KeyMaxLt;->maxEndLt:J

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    const-string v2, "max_end_lt"

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

    .line 23
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
