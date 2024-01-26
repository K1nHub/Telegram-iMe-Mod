.class public final Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$RawJSONOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawJSON"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSON;",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$RawJSONOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$RawJSON;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private type_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13255
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;-><init>()V

    .line 13258
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    .line 13259
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12907
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 12908
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    .line 12909
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23300()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
    .locals 1

    .line 12902
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object v0
.end method

.method static synthetic access$23400(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Ljava/lang/String;)V
    .locals 0

    .line 12902
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->setType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23500(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 0

    .line 12902
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->clearType()V

    return-void
.end method

.method static synthetic access$23600(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12902
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->setTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23700(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Ljava/lang/String;)V
    .locals 0

    .line 12902
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23800(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)V
    .locals 0

    .line 12902
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->clearValue()V

    return-void
.end method

.method static synthetic access$23900(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12902
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearType()V
    .locals 1

    .line 12945
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 12992
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
    .locals 1

    .line 13264
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1

    .line 13080
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$RawJSON;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 13083
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13057
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13063
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13021
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13028
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13068
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13075
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13045
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13052
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13008
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13015
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13033
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$RawJSON;
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

    .line 13040
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$RawJSON;",
            ">;"
        }
    .end annotation

    .line 13270
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12938
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    return-void
.end method

.method private setTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12953
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12954
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12985
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

    return-void
.end method

.method private setValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13000
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 13001
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

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

    .line 13205
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13248
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 13242
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13227
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 13229
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    monitor-enter p2

    .line 13230
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 13232
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13235
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->PARSER:Lcom/google/protobuf/Parser;

    .line 13237
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

    .line 13224
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "type_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 13220
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13210
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 13207
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;-><init>()V

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

.method public getType()Ljava/lang/String;
    .locals 1

    .line 12919
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12928
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->type_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 12966
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12975
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$RawJSON;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
