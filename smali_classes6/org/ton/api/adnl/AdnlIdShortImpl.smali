.class final Lorg/ton/api/adnl/AdnlIdShortImpl;
.super Ljava/lang/Object;
.source "AdnlIdShort.kt"

# interfaces
.implements Lorg/ton/api/adnl/AdnlIdShort;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlIdShortImpl$$serializer;,
        Lorg/ton/api/adnl/AdnlIdShortImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/AdnlIdShortImpl$Companion;


# instance fields
.field private final _hashCode$delegate:Lkotlin/Lazy;

.field private final _string$delegate:Lkotlin/Lazy;

.field private final id:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/AdnlIdShortImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/AdnlIdShortImpl;->Companion:Lorg/ton/api/adnl/AdnlIdShortImpl$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 34
    sget-object p3, Lorg/ton/api/adnl/AdnlIdShortImpl$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlIdShortImpl$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/adnl/AdnlIdShortImpl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->id:[B

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lorg/ton/api/adnl/AdnlIdShortImpl$1;

    invoke-direct {p2, p0}, Lorg/ton/api/adnl/AdnlIdShortImpl$1;-><init>(Lorg/ton/api/adnl/AdnlIdShortImpl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_hashCode$delegate:Lkotlin/Lazy;

    .line 41
    new-instance p2, Lorg/ton/api/adnl/AdnlIdShortImpl$2;

    invoke-direct {p2, p0}, Lorg/ton/api/adnl/AdnlIdShortImpl$2;-><init>(Lorg/ton/api/adnl/AdnlIdShortImpl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_string$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->id:[B

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortImpl$_hashCode$2;

    invoke-direct {v0, p0}, Lorg/ton/api/adnl/AdnlIdShortImpl$_hashCode$2;-><init>(Lorg/ton/api/adnl/AdnlIdShortImpl;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_hashCode$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lorg/ton/api/adnl/AdnlIdShortImpl$_string$2;

    invoke-direct {v0, p0}, Lorg/ton/api/adnl/AdnlIdShortImpl$_string$2;-><init>(Lorg/ton/api/adnl/AdnlIdShortImpl;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_string$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final get_hashCode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_hashCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final get_string()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->_string$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/AdnlIdShortImpl;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 34
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->getId()[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlIdShortImpl;->compareTo(Lorg/ton/api/adnl/AdnlIdShort;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ton/api/adnl/AdnlIdShort;)I
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 61
    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->getId()[B

    move-result-object v2

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    .line 62
    invoke-interface {p1}, Lorg/ton/api/adnl/AdnlIdShort;->getId()[B

    move-result-object v3

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_0

    sub-int/2addr v2, v3

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/AdnlIdShort;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->getId()[B

    move-result-object v1

    check-cast p1, Lorg/ton/api/adnl/AdnlIdShort;

    invoke-interface {p1}, Lorg/ton/api/adnl/AdnlIdShort;->getId()[B

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getId()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlIdShortImpl;->id:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 70
    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->get_hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlIdShortImpl;->get_string()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
