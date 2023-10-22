.class Lio/grpc/Metadata$AsciiKey;
.super Lio/grpc/Metadata$Key;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsciiKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/Metadata$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final marshaller:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 959
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/Metadata$Key;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lio/grpc/Metadata$1;)V

    const-string p2, "-bin"

    .line 961
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 960
    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo p1, "marshaller"

    .line 965
    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Metadata$AsciiMarshaller;

    iput-object p1, p0, Lio/grpc/Metadata$AsciiKey;->marshaller:Lio/grpc/Metadata$AsciiMarshaller;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;Lio/grpc/Metadata$1;)V
    .locals 0

    .line 954
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/Metadata$AsciiKey;-><init>(Ljava/lang/String;ZLio/grpc/Metadata$AsciiMarshaller;)V

    return-void
.end method
