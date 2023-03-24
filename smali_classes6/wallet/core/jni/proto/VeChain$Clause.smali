.class public final Lwallet/core/jni/proto/VeChain$Clause;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VeChain.java"

# interfaces
.implements Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/VeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Clause"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/VeChain$Clause$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/VeChain$Clause;",
        "Lwallet/core/jni/proto/VeChain$Clause$Builder;",
        ">;",
        "Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private data_:Lcom/google/protobuf/ByteString;

.field private to_:Ljava/lang/String;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 523
    new-instance v0, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-direct {v0}, Lwallet/core/jni/proto/VeChain$Clause;-><init>()V

    .line 526
    sput-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    .line 527
    const-class v1, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->value_:Lcom/google/protobuf/ByteString;

    .line 70
    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/VeChain$Clause;
    .locals 1

    .line 62
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/VeChain$Clause;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$Clause;->clearTo()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$Clause;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/VeChain$Clause;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$Clause;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$Clause;->clearData()V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 214
    invoke-static {}, Lwallet/core/jni/proto/VeChain$Clause;->getDefaultInstance()Lwallet/core/jni/proto/VeChain$Clause;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 122
    invoke-static {}, Lwallet/core/jni/proto/VeChain$Clause;->getDefaultInstance()Lwallet/core/jni/proto/VeChain$Clause;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 175
    invoke-static {}, Lwallet/core/jni/proto/VeChain$Clause;->getDefaultInstance()Lwallet/core/jni/proto/VeChain$Clause;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$Clause;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/VeChain$Clause;
    .locals 1

    .line 532
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1

    .line 292
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/VeChain$Clause$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/VeChain$Clause;)Lwallet/core/jni/proto/VeChain$Clause$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 295
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 269
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 275
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 233
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 240
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 280
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 287
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 257
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 264
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 220
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 227
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 245
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$Clause;
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

    .line 252
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation

    .line 538
    sget-object v0, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$Clause;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$Clause;->value_:Lcom/google/protobuf/ByteString;

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

    .line 472
    sget-object p2, Lwallet/core/jni/proto/VeChain$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 516
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 510
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 495
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/VeChain$Clause;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 497
    const-class p2, Lwallet/core/jni/proto/VeChain$Clause;

    monitor-enter p2

    .line 498
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/VeChain$Clause;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 500
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 503
    sput-object p1, Lwallet/core/jni/proto/VeChain$Clause;->PARSER:Lcom/google/protobuf/Parser;

    .line 505
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

    .line 492
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "to_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "data_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\n"

    .line 488
    sget-object p3, Lwallet/core/jni/proto/VeChain$Clause;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$Clause;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 477
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/VeChain$Clause$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/VeChain$Clause$Builder;-><init>(Lwallet/core/jni/proto/VeChain$1;)V

    return-object p1

    .line 474
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/VeChain$Clause;

    invoke-direct {p1}, Lwallet/core/jni/proto/VeChain$Clause;-><init>()V

    return-object p1

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

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 190
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 97
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 151
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$Clause;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
