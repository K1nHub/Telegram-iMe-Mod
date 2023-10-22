.class public final Lio/grpc/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Metadata$AsciiKey;,
        Lio/grpc/Metadata$Key;,
        Lio/grpc/Metadata$AsciiMarshaller;
    }
.end annotation


# static fields
.field public static final ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lio/grpc/Metadata$1;

    invoke-direct {v0}, Lio/grpc/Metadata$1;-><init>()V

    .line 97
    new-instance v0, Lio/grpc/Metadata$2;

    invoke-direct {v0}, Lio/grpc/Metadata$2;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 111
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    return-void
.end method
