.class public final Lorg/ton/tl/ByteString$Companion;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tl/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/tl/ByteString$Companion;-><init>()V

    return-void
.end method

.method public static synthetic of$default(Lorg/ton/tl/ByteString$Companion;[BIIILjava/lang/Object;)Lorg/ton/tl/ByteString;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 81
    array-length p3, p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/ton/tl/ByteString$Companion;->of([BII)Lorg/ton/tl/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final varargs of([B)Lorg/ton/tl/ByteString;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lorg/ton/tl/ByteString;

    invoke-direct {v0, p1}, Lorg/ton/tl/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final of([BII)Lorg/ton/tl/ByteString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lorg/ton/tl/ByteString;

    invoke-static {p1, p2, p3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/tl/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/tl/ByteString;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    return-object v0
.end method
