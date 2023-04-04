.class public final Lcom/iMe/storage/data/utils/extentions/HttpClientExtKt;
.super Ljava/lang/Object;
.source "HttpClientExt.kt"


# direct methods
.method public static final getClonedBodyString(Lokhttp3/ResponseBody;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 9
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->request(J)Z

    .line 10
    invoke-interface {p0}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "UTF-8"

    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(\"UTF-8\")"

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
