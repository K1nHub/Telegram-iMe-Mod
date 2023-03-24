.class public final Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$THORChainSendOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "THORChainSend"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$THORChainSendOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNTS_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private amounts_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation
.end field

.field private fromAddress_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8962
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;-><init>()V

    .line 8965
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    .line 8966
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8494
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->fromAddress_:Lcom/google/protobuf/ByteString;

    .line 8495
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->toAddress_:Lcom/google/protobuf/ByteString;

    .line 8496
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$15300()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
    .locals 1

    .line 8488
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object v0
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->setFromAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15500(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0

    .line 8488
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$15600(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->setToAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0

    .line 8488
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->clearToAddress()V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;Ljava/lang/Iterable;)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->addAllAmounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)V
    .locals 0

    .line 8488
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->clearAmounts()V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;I)V
    .locals 0

    .line 8488
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->removeAmounts(I)V

    return-void
.end method

.method private addAllAmounts(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;)V"
        }
    .end annotation

    .line 8628
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->ensureAmountsIsMutable()V

    .line 8629
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 8619
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8620
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->ensureAmountsIsMutable()V

    .line 8621
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8611
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->ensureAmountsIsMutable()V

    .line 8612
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmounts()V
    .locals 1

    .line 8636
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 8522
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 8549
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->getToAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->toAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureAmountsIsMutable()V
    .locals 2

    .line 8590
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8591
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8593
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
    .locals 1

    .line 8971
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1

    .line 8721
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8724
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8698
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8704
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8662
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8669
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8709
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8716
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8686
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8693
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8649
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8656
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8674
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;
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

    .line 8681
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;",
            ">;"
        }
    .end annotation

    .line 8977
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAmounts(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8642
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->ensureAmountsIsMutable()V

    .line 8643
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V
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

    .line 8602
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8603
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->ensureAmountsIsMutable()V

    .line 8604
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFromAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8515
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setToAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8542
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->toAddress_:Lcom/google/protobuf/ByteString;

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

    .line 8910
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8955
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8949
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8934
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8936
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    monitor-enter p2

    .line 8937
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8939
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8942
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->PARSER:Lcom/google/protobuf/Parser;

    .line 8944
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

    .line 8931
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amounts_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 8918
    const-class p3, Lwallet/core/jni/proto/Cosmos$Amount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\n\u0003\u001b"

    .line 8927
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8915
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 8912
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;-><init>()V

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

.method public getAmounts(I)Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8580
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 8573
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAmountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cosmos$Amount;",
            ">;"
        }
    .end annotation

    .line 8559
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAmountsOrBuilder(I)Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8587
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;

    return-object p1
.end method

.method public getAmountsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cosmos$AmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8566
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8506
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8533
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$THORChainSend;->toAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
