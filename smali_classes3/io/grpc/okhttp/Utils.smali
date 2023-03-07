.class Lio/grpc/okhttp/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/grpc/okhttp/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0
.end method

.method private static convertHeadersToArray(Ljava/util/List;)[[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)[[B"
        }
    .end annotation

    .line 58
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [[B

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/okhttp/internal/framed/Header;

    add-int/lit8 v3, v1, 0x1

    .line 61
    iget-object v4, v2, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->toByteArray()[B

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 62
    iget-object v2, v2, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->toByteArray()[B

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {v0}, Lio/grpc/internal/TransportFrameUtil;->toRawSerializedHeaders([[B)[[B

    move-result-object p0

    return-object p0
.end method

.method public static convertTrailers(Ljava/util/List;)Lio/grpc/Metadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)",
            "Lio/grpc/Metadata;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lio/grpc/okhttp/Utils;->convertHeadersToArray(Ljava/util/List;)[[B

    move-result-object p0

    invoke-static {p0}, Lio/grpc/InternalMetadata;->newMetadata([[B)Lio/grpc/Metadata;

    move-result-object p0

    return-object p0
.end method
