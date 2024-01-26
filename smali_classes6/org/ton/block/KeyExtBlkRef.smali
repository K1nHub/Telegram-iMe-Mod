.class public final Lorg/ton/block/KeyExtBlkRef;
.super Ljava/lang/Object;
.source "KeyExtBlkRef.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/KeyExtBlkRef$$serializer;,
        Lorg/ton/block/KeyExtBlkRef$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyExtBlkRef.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyExtBlkRef.kt\norg/ton/block/KeyExtBlkRef\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,47:1\n82#2,3:48\n*S KotlinDebug\n*F\n+ 1 KeyExtBlkRef.kt\norg/ton/block/KeyExtBlkRef\n*L\n17#1:48,3\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/KeyExtBlkRef$Companion;


# instance fields
.field private final blkRef:Lorg/ton/block/ExtBlkRef;

.field private final key:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/KeyExtBlkRef$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/KeyExtBlkRef$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/KeyExtBlkRef;->Companion:Lorg/ton/block/KeyExtBlkRef$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLorg/ton/block/ExtBlkRef;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/KeyExtBlkRef$$serializer;->INSTANCE:Lorg/ton/block/KeyExtBlkRef$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/KeyExtBlkRef$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    iput-object p3, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    return-void
.end method

.method public constructor <init>(ZLorg/ton/block/ExtBlkRef;)V
    .locals 1

    const-string v0, "blkRef"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    .line 14
    iput-object p2, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/KeyExtBlkRef;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 11
    iget-boolean v0, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    sget-object v0, Lorg/ton/block/ExtBlkRef$$serializer;->INSTANCE:Lorg/ton/block/ExtBlkRef$$serializer;

    iget-object p0, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

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
    instance-of v1, p1, Lorg/ton/block/KeyExtBlkRef;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/KeyExtBlkRef;

    iget-boolean v1, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    iget-boolean v3, p1, Lorg/ton/block/KeyExtBlkRef;->key:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    iget-object p1, p1, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBlkRef()Lorg/ton/block/ExtBlkRef;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    return-object v0
.end method

.method public final getKey()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    invoke-virtual {v1}, Lorg/ton/block/ExtBlkRef;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 3

    const-string v0, "printer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 83
    invoke-virtual {p1, v0}, Lorg/ton/tlb/TlbPrettyPrinter;->open(Ljava/lang/String;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    .line 18
    iget-boolean v1, p0, Lorg/ton/block/KeyExtBlkRef;->key:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 19
    iget-object v1, p0, Lorg/ton/block/KeyExtBlkRef;->blkRef:Lorg/ton/block/ExtBlkRef;

    const-string v2, "blk_ref"

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
