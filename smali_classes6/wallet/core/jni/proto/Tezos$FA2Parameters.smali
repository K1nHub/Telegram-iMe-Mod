.class public final Lwallet/core/jni/proto/Tezos$FA2Parameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$FA2ParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FA2Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$FA2Parameters;",
        "Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$FA2ParametersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

.field public static final ENTRYPOINT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$FA2Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final TXS_OBJECT_FIELD_NUMBER:I = 0x2


# instance fields
.field private entrypoint_:Ljava/lang/String;

.field private txsObject_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4988
    new-instance v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;-><init>()V

    .line 4991
    sput-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    .line 4992
    const-class v1, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4539
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4540
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    .line 4541
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$8600()Lwallet/core/jni/proto/Tezos$FA2Parameters;
    .locals 1

    .line 4534
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object v0
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Tezos$FA2Parameters;Ljava/lang/String;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->setEntrypoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 0

    .line 4534
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->clearEntrypoint()V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Tezos$FA2Parameters;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->setEntrypointBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->setTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Tezos$FA2Parameters;Lwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->addTxsObject(Lwallet/core/jni/proto/Tezos$TxObject;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Tezos$FA2Parameters;ILwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->addTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Tezos$FA2Parameters;Ljava/lang/Iterable;)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->addAllTxsObject(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Tezos$FA2Parameters;)V
    .locals 0

    .line 4534
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->clearTxsObject()V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Tezos$FA2Parameters;I)V
    .locals 0

    .line 4534
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->removeTxsObject(I)V

    return-void
.end method

.method private addAllTxsObject(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;)V"
        }
    .end annotation

    .line 4666
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->ensureTxsObjectIsMutable()V

    .line 4667
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)V
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

    .line 4657
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4658
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->ensureTxsObjectIsMutable()V

    .line 4659
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTxsObject(Lwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4649
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->ensureTxsObjectIsMutable()V

    .line 4650
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearEntrypoint()V
    .locals 1

    .line 4577
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA2Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->getEntrypoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private clearTxsObject()V
    .locals 1

    .line 4674
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTxsObjectIsMutable()V
    .locals 2

    .line 4628
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4629
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4631
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA2Parameters;
    .locals 1

    .line 4997
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1

    .line 4759
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$FA2Parameters;)Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4762
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4736
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4742
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4700
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4707
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4747
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4754
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4724
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4731
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4687
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4694
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4712
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA2Parameters;
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

    .line 4719
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$FA2Parameters;",
            ">;"
        }
    .end annotation

    .line 5003
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTxsObject(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4680
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->ensureTxsObjectIsMutable()V

    .line 4681
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEntrypoint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4570
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private setEntrypointBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4585
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4586
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private setTxsObject(ILwallet/core/jni/proto/Tezos$TxObject;)V
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

    .line 4640
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4641
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA2Parameters;->ensureTxsObjectIsMutable()V

    .line 4642
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4937
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4981
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4975
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4960
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4962
    const-class p2, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    monitor-enter p2

    .line 4963
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4965
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4968
    sput-object p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 4970
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

    .line 4957
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "entrypoint_"

    aput-object v0, p1, p3

    const-string p3, "txsObject_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 4945
    const-class p3, Lwallet/core/jni/proto/Tezos$TxObject;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 4953
    sget-object p3, Lwallet/core/jni/proto/Tezos$FA2Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4942
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$FA2Parameters$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 4939
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$FA2Parameters;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$FA2Parameters;-><init>()V

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

.method public getEntrypoint()Ljava/lang/String;
    .locals 1

    .line 4551
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrypointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4560
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->entrypoint_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTxsObject(I)Lwallet/core/jni/proto/Tezos$TxObject;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4618
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p1
.end method

.method public getTxsObjectCount()I
    .locals 1

    .line 4611
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTxsObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation

    .line 4597
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTxsObjectOrBuilder(I)Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4625
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;

    return-object p1
.end method

.method public getTxsObjectOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4604
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA2Parameters;->txsObject_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
