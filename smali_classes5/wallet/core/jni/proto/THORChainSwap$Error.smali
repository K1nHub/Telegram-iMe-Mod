.class public final Lwallet/core/jni/proto/THORChainSwap$Error;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/THORChainSwap$Error;",
        "Lwallet/core/jni/proto/THORChainSwap$Error$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$ErrorOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$Error;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code_:I

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 764
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-direct {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;-><init>()V

    .line 767
    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    .line 768
    const-class v1, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 341
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 342
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/THORChainSwap$Error;
    .locals 1

    .line 336
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/THORChainSwap$Error;I)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->setCodeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/THORChainSwap$Error;Lwallet/core/jni/proto/THORChainSwap$ErrorCode;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->setCode(Lwallet/core/jni/proto/THORChainSwap$ErrorCode;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Error;->clearCode()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/THORChainSwap$Error;Ljava/lang/String;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 0

    .line 336
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Error;->clearMessage()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/THORChainSwap$Error;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Error;->setMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearCode()V
    .locals 1

    const/4 v0, 0x0

    .line 403
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->code_:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 456
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Error;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Error;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Error;
    .locals 1

    .line 773
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1

    .line 548
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/THORChainSwap$Error;)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 551
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 525
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 531
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 489
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 496
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 536
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 543
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 513
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 520
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 476
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 483
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 501
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Error;
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

    .line 508
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$Error;",
            ">;"
        }
    .end annotation

    .line 779
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(Lwallet/core/jni/proto/THORChainSwap$ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 391
    invoke-virtual {p1}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->code_:I

    return-void
.end method

.method private setCodeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 380
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->code_:I

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 445
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 468
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 469
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

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

    .line 714
    sget-object p2, Lwallet/core/jni/proto/THORChainSwap$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 757
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 751
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 736
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 738
    const-class p2, Lwallet/core/jni/proto/THORChainSwap$Error;

    monitor-enter p2

    .line 739
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Error;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 741
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 744
    sput-object p1, Lwallet/core/jni/proto/THORChainSwap$Error;->PARSER:Lcom/google/protobuf/Parser;

    .line 746
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

    .line 733
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "code_"

    aput-object v0, p1, p3

    const-string p3, "message_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002\u0208"

    .line 729
    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$Error;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 719
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;-><init>(Lwallet/core/jni/proto/THORChainSwap$1;)V

    return-object p1

    .line 716
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$Error;

    invoke-direct {p1}, Lwallet/core/jni/proto/THORChainSwap$Error;-><init>()V

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

.method public getCode()Lwallet/core/jni/proto/THORChainSwap$ErrorCode;
    .locals 1

    .line 368
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->code_:I

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 369
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$ErrorCode;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$ErrorCode;

    :cond_0
    return-object v0
.end method

.method public getCodeValue()I
    .locals 1

    .line 356
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->code_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 431
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Error;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
