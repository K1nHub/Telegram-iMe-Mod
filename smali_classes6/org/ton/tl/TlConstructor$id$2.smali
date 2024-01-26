.class final Lorg/ton/tl/TlConstructor$id$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TlConstructor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlConstructor.kt\norg/ton/tl/TlConstructor$id$2\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,48:1\n7#2,4:49\n*S KotlinDebug\n*F\n+ 1 TlConstructor.kt\norg/ton/tl/TlConstructor$id$2\n*L\n18#1:49,4\n*E\n"
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/ton/tl/TlConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tl/TlConstructor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lorg/ton/tl/TlConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lorg/ton/tl/TlConstructor<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/tl/TlConstructor$id$2;->$id:Ljava/lang/Integer;

    iput-object p2, p0, Lorg/ton/tl/TlConstructor$id$2;->this$0:Lorg/ton/tl/TlConstructor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 4

    .line 18
    iget-object v0, p0, Lorg/ton/tl/TlConstructor$id$2;->$id:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/ton/tl/TlConstructor$id$2;->this$0:Lorg/ton/tl/TlConstructor;

    invoke-virtual {v0}, Lorg/ton/tl/TlConstructor;->getSchema()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-static {v1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    const-string v2, "charset.newEncoder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v0, v3, v2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v3, v3, v1, v2}, Lorg/ton/crypto/Crc32JvmKt;->crc32$default([BIIILjava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor$id$2;->invoke()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
