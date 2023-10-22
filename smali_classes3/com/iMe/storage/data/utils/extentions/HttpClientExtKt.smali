.class public final Lcom/iMe/storage/data/utils/extentions/HttpClientExtKt;
.super Ljava/lang/Object;
.source "HttpClientExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpClientExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientExt.kt\ncom/iMe/storage/data/utils/extentions/HttpClientExtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,12:1\n1#2:13\n*E\n"
.end annotation


# direct methods
.method public static final getClonedBodyString(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 8
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 9
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "UTF_8"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method
