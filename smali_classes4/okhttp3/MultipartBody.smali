.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Part;,
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Companion;
    }
.end annotation


# static fields
.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field public static final Companion:Lokhttp3/MultipartBody$Companion;

.field private static final DASHDASH:[B

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;


# instance fields
.field private final boundaryByteString:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lokhttp3/MultipartBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/MultipartBody;->Companion:Lokhttp3/MultipartBody$Companion;

    .line 284
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v1, "multipart/alternative"

    .line 292
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v1, "multipart/digest"

    .line 300
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v1, "multipart/parallel"

    .line 307
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    const-string v1, "multipart/form-data"

    .line 315
    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    .line 317
    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 318
    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    .line 319
    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void
.end method

.method public constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    iput-object p2, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    iput-object p3, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 38
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    const-wide/16 p1, -0x1

    .line 39
    iput-wide p1, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-void
.end method

.method private final writeOrCountBytes(Lokio/BufferedSink;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 112
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 117
    iget-object v6, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/MultipartBody$Part;

    .line 118
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Part;->headers()Lokhttp3/Headers;

    move-result-object v7

    .line 119
    invoke-virtual {v6}, Lokhttp3/MultipartBody$Part;->body()Lokhttp3/RequestBody;

    move-result-object v6

    .line 121
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v8, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 122
    iget-object v8, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 123
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz v7, :cond_1

    .line 126
    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 127
    invoke-virtual {v7, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    .line 128
    sget-object v11, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v10

    .line 129
    invoke-virtual {v7, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v10

    .line 130
    sget-object v11, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v10, v11}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 134
    :cond_1
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 136
    invoke-interface {p1, v8}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v8

    .line 137
    invoke-virtual {v7}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v7

    .line 138
    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v7, v8}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 141
    :cond_2
    invoke-virtual {v6}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 143
    invoke-interface {p1, v9}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v9

    .line 144
    invoke-interface {v9, v7, v8}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v9

    .line 145
    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v10}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 148
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    return-wide v9

    .line 152
    :cond_4
    :goto_3
    sget-object v9, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 157
    :cond_5
    invoke-virtual {v6, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 160
    :goto_4
    invoke-interface {p1, v9}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 163
    :cond_6
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 164
    iget-object v2, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    invoke-interface {p1, v2}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 165
    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 166
    sget-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    if-eqz p2, :cond_7

    .line 169
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p1

    add-long/2addr v3, p1

    .line 170
    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundaryByteString:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    :cond_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 51
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    return-void
.end method
