.class public final Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;
.super Ljava/lang/Object;
.source "ByteArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteArray.kt\ncom/trustwallet/walletconnect/extensions/ByteArrayKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,17:1\n13543#2,2:18\n*S KotlinDebug\n*F\n+ 1 ByteArray.kt\ncom/trustwallet/walletconnect/extensions/ByteArrayKt\n*L\n8#1:18,2\n*E\n"
.end annotation


# static fields
.field private static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789abcdef"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).toCharArray()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->HEX_CHARS:[C

    return-void
.end method

.method public static final toHex([B)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 18
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v3, 0xf

    .line 12
    sget-object v5, Lcom/trustwallet/walletconnect/extensions/ByteArrayKt;->HEX_CHARS:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 13
    aget-char v3, v5, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "result.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
