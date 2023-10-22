.class public final Lorg/ton/block/ShardDescrAux;
.super Ljava/lang/Object;
.source "ShardDescr.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ShardDescrAux$$serializer;,
        Lorg/ton/block/ShardDescrAux$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrAux\n+ 2 TlbPrettyPrinter.kt\norg/ton/tlb/TlbPrettyPrinter\n*L\n1#1,321:1\n86#2,2:322\n82#2,3:324\n88#2:327\n*S KotlinDebug\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrAux\n*L\n85#1:322,2\n86#1:324,3\n85#1:327\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ShardDescrAux$Companion;


# instance fields
.field private final feesCollected:Lorg/ton/block/CurrencyCollection;

.field private final fundsCreated:Lorg/ton/block/CurrencyCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ShardDescrAux$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ShardDescrAux$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ShardDescrAux;->Companion:Lorg/ton/block/ShardDescrAux$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 80
    sget-object p4, Lorg/ton/block/ShardDescrAux$$serializer;->INSTANCE:Lorg/ton/block/ShardDescrAux$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/ShardDescrAux$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    iput-object p3, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V
    .locals 1

    const-string v0, "feesCollected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fundsCreated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    .line 83
    iput-object p2, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ShardDescrAux;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 80
    sget-object v0, Lorg/ton/block/CurrencyCollection$$serializer;->INSTANCE:Lorg/ton/block/CurrencyCollection$$serializer;

    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

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
    instance-of v1, p1, Lorg/ton/block/ShardDescrAux;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ShardDescrAux;

    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    iget-object v3, p1, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    iget-object p1, p1, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFeesCollected()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public final getFundsCreated()Lorg/ton/block/CurrencyCollection;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v0}, Lorg/ton/block/CurrencyCollection;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    invoke-virtual {v1}, Lorg/ton/block/CurrencyCollection;->hashCode()I

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

    .line 87
    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->feesCollected:Lorg/ton/block/CurrencyCollection;

    const-string v2, "fees_collected"

    invoke-virtual {v0, v2, v1}, Lorg/ton/tlb/TlbPrettyPrinter;->field(Ljava/lang/String;Ljava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    .line 88
    iget-object v1, p0, Lorg/ton/block/ShardDescrAux;->fundsCreated:Lorg/ton/block/CurrencyCollection;

    const-string v2, "funds_created"

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

    .line 92
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
