.class public final Lwallet/core/jni/proto/Binance$SendOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SendOrder$Builder;,
        Lwallet/core/jni/proto/Binance$SendOrder$Output;,
        Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;,
        Lwallet/core/jni/proto/Binance$SendOrder$Input;,
        Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;,
        Lwallet/core/jni/proto/Binance$SendOrder$Token;,
        Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SendOrder;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

.field public static final INPUTS_FIELD_NUMBER:I = 0x1

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private inputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;"
        }
    .end annotation
.end field

.field private outputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5630
    new-instance v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SendOrder;-><init>()V

    .line 5633
    sput-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    .line 5634
    const-class v1, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3257
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3258
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$8400()Lwallet/core/jni/proto/Binance$SendOrder;
    .locals 1

    .line 3251
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    return-object v0
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->setInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->addInputs(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->addInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Binance$SendOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->addAllInputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 0

    .line 3251
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->clearInputs()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Binance$SendOrder;I)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->removeInputs(I)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->setOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Binance$SendOrder;Lwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->addOutputs(Lwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Binance$SendOrder;ILwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder;->addOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Binance$SendOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 0

    .line 3251
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->clearOutputs()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Binance$SendOrder;I)V
    .locals 0

    .line 3251
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder;->removeOutputs(I)V

    return-void
.end method

.method private addAllInputs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;)V"
        }
    .end annotation

    .line 5008
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureInputsIsMutable()V

    .line 5009
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;)V"
        }
    .end annotation

    .line 5146
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureOutputsIsMutable()V

    .line 5147
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4995
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4996
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureInputsIsMutable()V

    .line 4997
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInputs(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4982
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4983
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureInputsIsMutable()V

    .line 4984
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 5133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5134
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureOutputsIsMutable()V

    .line 5135
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5121
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureOutputsIsMutable()V

    .line 5122
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInputs()V
    .locals 1

    .line 5020
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 5158
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureInputsIsMutable()V
    .locals 2

    .line 4954
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4955
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4957
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 5092
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5093
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5095
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder;
    .locals 1

    .line 5639
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1

    .line 5247
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SendOrder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5250
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5224
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5230
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5188
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5195
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5235
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5242
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5212
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5219
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5175
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5182
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5200
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder;
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

    .line 5207
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder;",
            ">;"
        }
    .end annotation

    .line 5645
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInputs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5030
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureInputsIsMutable()V

    .line 5031
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOutputs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5168
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureOutputsIsMutable()V

    .line 5169
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInputs(ILwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4970
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4971
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureInputsIsMutable()V

    .line 4972
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 5108
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5109
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder;->ensureOutputsIsMutable()V

    .line 5110
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 5578
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5623
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5617
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5602
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5604
    const-class p2, Lwallet/core/jni/proto/Binance$SendOrder;

    monitor-enter p2

    .line 5605
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5607
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5610
    sput-object p1, Lwallet/core/jni/proto/Binance$SendOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 5612
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

    .line 5599
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "inputs_"

    aput-object v0, p1, p3

    .line 5586
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "outputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b"

    .line 5595
    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5583
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SendOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 5580
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SendOrder;-><init>()V

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

.method public getInputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Input;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4940
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 4929
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;"
        }
    .end annotation

    .line 4907
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputsOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4951
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;

    return-object p1
.end method

.method public getInputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4918
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Binance$SendOrder$Output;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5078
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 5067
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;"
        }
    .end annotation

    .line 5045
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5089
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5056
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
