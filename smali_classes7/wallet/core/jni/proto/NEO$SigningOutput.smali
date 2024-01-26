.class public final Lwallet/core/jni/proto/NEO$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$SigningOutput;",
        "Lwallet/core/jni/proto/NEO$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$SigningOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoded_:Lcom/google/protobuf/ByteString;

.field private error_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3271
    new-instance v0, Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$SigningOutput;-><init>()V

    .line 3274
    sput-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    .line 3275
    const-class v1, Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2906
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2907
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5100()Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1

    .line 2901
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object v0
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/NEO$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2901
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/NEO$SigningOutput;)V
    .locals 0

    .line 2901
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/NEO$SigningOutput;I)V
    .locals 0

    .line 2901
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/NEO$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 2901
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/NEO$SigningOutput;)V
    .locals 0

    .line 2901
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningOutput;->clearError()V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 2945
    invoke-static {}, Lwallet/core/jni/proto/NEO$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 3007
    iput v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->error_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1

    .line 3280
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$SigningOutput$Builder;
    .locals 1

    .line 3085
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$SigningOutput;)Lwallet/core/jni/proto/NEO$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3088
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3062
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3068
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3026
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3033
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3073
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3080
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3050
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3057
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3013
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3020
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3038
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3045
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 3286
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2934
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2995
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->error_:I

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2984
    iput p1, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->error_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 3222
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3264
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3258
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3243
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3245
    const-class p2, Lwallet/core/jni/proto/NEO$SigningOutput;

    monitor-enter p2

    .line 3246
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3248
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3251
    sput-object p1, Lwallet/core/jni/proto/NEO$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3253
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 3240
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u000c"

    .line 3236
    sget-object p3, Lwallet/core/jni/proto/NEO$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3227
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 3224
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$SigningOutput;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2921
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 2972
    iget v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2973
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 2960
    iget v0, p0, Lwallet/core/jni/proto/NEO$SigningOutput;->error_:I

    return v0
.end method
