.class public final Lwallet/core/jni/proto/Tezos$OperationParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;,
        Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$OperationParameters;",
        "Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationParametersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

.field public static final FA12_PARAMETERS_FIELD_NUMBER:I = 0x1

.field public static final FA2_PARAMETERS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$OperationParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parametersCase_:I

.field private parameters_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5458
    new-instance v0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters;-><init>()V

    .line 5461
    sput-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    .line 5462
    const-class v1, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5047
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5049
    iput v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->mergeFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->clearFa12Parameters()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->setFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->mergeFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->clearFa2Parameters()V

    return-void
.end method

.method static synthetic access$9700()Lwallet/core/jni/proto/Tezos$OperationParameters;
    .locals 1

    .line 5042
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object v0
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Tezos$OperationParameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationParameters;->clearParameters()V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Tezos$OperationParameters;Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 5042
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;->setFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V

    return-void
.end method

.method private clearFa12Parameters()V
    .locals 2

    .line 5136
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5137
    iput v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v0, 0x0

    .line 5138
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFa2Parameters()V
    .locals 2

    .line 5186
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5187
    iput v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v0, 0x0

    .line 5188
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 5088
    iput v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v0, 0x0

    .line 5089
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationParameters;
    .locals 1

    .line 5467
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object v0
.end method

.method private mergeFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5123
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    .line 5124
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5125
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->newBuilder(Lwallet/core/jni/proto/Tezos$FA12Parameters;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;

    move-result-object v0

    .line 5126
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    goto :goto_0

    .line 5128
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    .line 5130
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    return-void
.end method

.method private mergeFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5173
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    .line 5174
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA2Parameters;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5175
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->newBuilder(Lwallet/core/jni/proto/Tezos$FA2Parameters;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;

    move-result-object v0

    .line 5176
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    goto :goto_0

    .line 5178
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    .line 5180
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1

    .line 5267
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$OperationParameters;)Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5270
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5244
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5250
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5208
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5215
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5255
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5262
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5232
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5239
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5195
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5202
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5220
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationParameters;
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

    .line 5227
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$OperationParameters;",
            ">;"
        }
    .end annotation

    .line 5473
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFa12Parameters(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5115
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5116
    iput p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    return-void
.end method

.method private setFa2Parameters(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5164
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5165
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 5166
    iput p1, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

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

    .line 5406
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5451
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5445
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5430
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationParameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5432
    const-class p2, Lwallet/core/jni/proto/Tezos$OperationParameters;

    monitor-enter p2

    .line 5433
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationParameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5435
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5438
    sput-object p1, Lwallet/core/jni/proto/Tezos$OperationParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 5440
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

    .line 5427
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "parameters_"

    aput-object v0, p1, p3

    const-string p3, "parametersCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 5414
    const-class p3, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    .line 5423
    sget-object p3, Lwallet/core/jni/proto/Tezos$OperationParameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5411
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$OperationParameters$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 5408
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$OperationParameters;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$OperationParameters;-><init>()V

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

.method public getFa12Parameters()Lwallet/core/jni/proto/Tezos$FA12Parameters;
    .locals 2

    .line 5105
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5106
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object v0

    .line 5108
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getFa2Parameters()Lwallet/core/jni/proto/Tezos$FA2Parameters;
    .locals 2

    .line 5155
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5156
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parameters_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object v0

    .line 5158
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA2Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParametersCase()Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
    .locals 1

    .line 5083
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->forNumber(I)Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFa12Parameters()Z
    .locals 2

    .line 5098
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFa2Parameters()Z
    .locals 2

    .line 5148
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters;->parametersCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
