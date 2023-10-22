.class public final Lwallet/core/jni/proto/Tezos$OperationList;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$OperationListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$OperationList;",
        "Lwallet/core/jni/proto/Tezos$OperationList$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$OperationListOrBuilder;"
    }
.end annotation


# static fields
.field public static final BRANCH_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

.field public static final OPERATIONS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$OperationList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private branch_:Ljava/lang/String;

.field private operations_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1475
    new-instance v0, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$OperationList;-><init>()V

    .line 1478
    sput-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    .line 1479
    const-class v1, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 889
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 890
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    .line 891
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1300()Lwallet/core/jni/proto/Tezos$OperationList;
    .locals 1

    .line 884
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    return-object v0
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Tezos$OperationList;Ljava/lang/String;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->setBranch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 0

    .line 884
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->clearBranch()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Tezos$OperationList;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->setBranchBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->setOperations(ILwallet/core/jni/proto/Tezos$Operation;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Tezos$OperationList;Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->addOperations(Lwallet/core/jni/proto/Tezos$Operation;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Tezos$OperationList;ILwallet/core/jni/proto/Tezos$Operation;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$OperationList;->addOperations(ILwallet/core/jni/proto/Tezos$Operation;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Tezos$OperationList;Ljava/lang/Iterable;)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->addAllOperations(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Tezos$OperationList;)V
    .locals 0

    .line 884
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->clearOperations()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Tezos$OperationList;I)V
    .locals 0

    .line 884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$OperationList;->removeOperations(I)V

    return-void
.end method

.method private addAllOperations(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;)V"
        }
    .end annotation

    .line 1072
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->ensureOperationsIsMutable()V

    .line 1073
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addOperations(ILwallet/core/jni/proto/Tezos$Operation;)V
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

    .line 1059
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1060
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->ensureOperationsIsMutable()V

    .line 1061
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOperations(Lwallet/core/jni/proto/Tezos$Operation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->ensureOperationsIsMutable()V

    .line 1048
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBranch()V
    .locals 1

    .line 943
    invoke-static {}, Lwallet/core/jni/proto/Tezos$OperationList;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationList;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$OperationList;->getBranch()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    return-void
.end method

.method private clearOperations()V
    .locals 1

    .line 1084
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureOperationsIsMutable()V
    .locals 2

    .line 1018
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1019
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1021
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$OperationList;
    .locals 1

    .line 1484
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1

    .line 1173
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$OperationList$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$OperationList;)Lwallet/core/jni/proto/Tezos$OperationList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1176
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1150
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1156
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1114
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1121
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1161
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1168
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1138
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1145
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1101
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1108
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1126
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$OperationList;
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

    .line 1133
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$OperationList;",
            ">;"
        }
    .end annotation

    .line 1490
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOperations(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1094
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->ensureOperationsIsMutable()V

    .line 1095
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBranch(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    return-void
.end method

.method private setBranchBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 955
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 956
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    return-void
.end method

.method private setOperations(ILwallet/core/jni/proto/Tezos$Operation;)V
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

    .line 1034
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$OperationList;->ensureOperationsIsMutable()V

    .line 1036
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1424
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1468
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1462
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1447
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1449
    const-class p2, Lwallet/core/jni/proto/Tezos$OperationList;

    monitor-enter p2

    .line 1450
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationList;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1452
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1455
    sput-object p1, Lwallet/core/jni/proto/Tezos$OperationList;->PARSER:Lcom/google/protobuf/Parser;

    .line 1457
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

    .line 1444
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "branch_"

    aput-object v0, p1, p3

    const-string p3, "operations_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1432
    const-class p3, Lwallet/core/jni/proto/Tezos$Operation;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 1440
    sget-object p3, Lwallet/core/jni/proto/Tezos$OperationList;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1429
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$OperationList$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$OperationList$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 1426
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$OperationList;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$OperationList;-><init>()V

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

.method public getBranch()Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    return-object v0
.end method

.method public getBranchBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 918
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->branch_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperations(I)Lwallet/core/jni/proto/Tezos$Operation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1004
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$Operation;

    return-object p1
.end method

.method public getOperationsCount()I
    .locals 1

    .line 993
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$Operation;",
            ">;"
        }
    .end annotation

    .line 971
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOperationsOrBuilder(I)Lwallet/core/jni/proto/Tezos$OperationOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1015
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$OperationOrBuilder;

    return-object p1
.end method

.method public getOperationsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Tezos$OperationOrBuilder;",
            ">;"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$OperationList;->operations_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
