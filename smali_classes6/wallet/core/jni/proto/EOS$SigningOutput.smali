.class public final Lwallet/core/jni/proto/EOS$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EOS.java"

# interfaces
.implements Lwallet/core/jni/proto/EOS$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/EOS$SigningOutput;",
        "Lwallet/core/jni/proto/EOS$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/EOS$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final JSON_ENCODED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/EOS$SigningOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error_:I

.field private jsonEncoded_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2604
    new-instance v0, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;-><init>()V

    .line 2607
    sput-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    .line 2608
    const-class v1, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2181
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2182
    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3700()Lwallet/core/jni/proto/EOS$SigningOutput;
    .locals 1

    .line 2176
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object v0
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/EOS$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->setJsonEncoded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/EOS$SigningOutput;)V
    .locals 0

    .line 2176
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningOutput;->clearJsonEncoded()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/EOS$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->setJsonEncodedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/EOS$SigningOutput;I)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/EOS$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/EOS$SigningOutput;)V
    .locals 0

    .line 2176
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningOutput;->clearError()V

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 2310
    iput v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->error_:I

    return-void
.end method

.method private clearJsonEncoded()V
    .locals 1

    .line 2234
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningOutput;->getJsonEncoded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningOutput;
    .locals 1

    .line 2613
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1

    .line 2388
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/EOS$SigningOutput;)Lwallet/core/jni/proto/EOS$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2391
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2365
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2371
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2329
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2336
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2376
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2383
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2353
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2360
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2316
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2323
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2341
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningOutput;
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

    .line 2348
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/EOS$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 2619
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 2298
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->error_:I

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

    .line 2287
    iput p1, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->error_:I

    return-void
.end method

.method private setJsonEncoded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2223
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

    return-void
.end method

.method private setJsonEncodedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2246
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2247
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

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

    .line 2554
    sget-object p2, Lwallet/core/jni/proto/EOS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2597
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2591
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2576
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2578
    const-class p2, Lwallet/core/jni/proto/EOS$SigningOutput;

    monitor-enter p2

    .line 2579
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2581
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2584
    sput-object p1, Lwallet/core/jni/proto/EOS$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2586
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

    .line 2573
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "jsonEncoded_"

    aput-object v0, p1, p3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u000c"

    .line 2569
    sget-object p3, Lwallet/core/jni/proto/EOS$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2559
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/EOS$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/EOS$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/EOS$1;)V

    return-object p1

    .line 2556
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/EOS$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/EOS$SigningOutput;-><init>()V

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

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 2275
    iget v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2276
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 2263
    iget v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->error_:I

    return v0
.end method

.method public getJsonEncoded()Ljava/lang/String;
    .locals 1

    .line 2196
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2209
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningOutput;->jsonEncoded_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
