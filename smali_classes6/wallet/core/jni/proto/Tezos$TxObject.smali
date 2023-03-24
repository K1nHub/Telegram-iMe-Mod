.class public final Lwallet/core/jni/proto/Tezos$TxObject;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TxObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$TxObject;",
        "Lwallet/core/jni/proto/Tezos$TxObject$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TxObjectOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final TXS_FIELD_NUMBER:I = 0x2


# instance fields
.field private from_:Ljava/lang/String;

.field private txs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4482
    new-instance v0, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$TxObject;-><init>()V

    .line 4485
    sput-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    .line 4486
    const-class v1, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4033
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4034
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    .line 4035
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7500()Lwallet/core/jni/proto/Tezos$TxObject;
    .locals 1

    .line 4028
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    return-object v0
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Tezos$TxObject;Ljava/lang/String;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 0

    .line 4028
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->clearFrom()V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Tezos$TxObject;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->setFromBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->setTxs(ILwallet/core/jni/proto/Tezos$Txs;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Tezos$TxObject;Lwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->addTxs(Lwallet/core/jni/proto/Tezos$Txs;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Tezos$TxObject;ILwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tezos$TxObject;->addTxs(ILwallet/core/jni/proto/Tezos$Txs;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Tezos$TxObject;Ljava/lang/Iterable;)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->addAllTxs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Tezos$TxObject;)V
    .locals 0

    .line 4028
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->clearTxs()V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Tezos$TxObject;I)V
    .locals 0

    .line 4028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$TxObject;->removeTxs(I)V

    return-void
.end method

.method private addAllTxs(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;)V"
        }
    .end annotation

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->ensureTxsIsMutable()V

    .line 4161
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTxs(ILwallet/core/jni/proto/Tezos$Txs;)V
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

    .line 4151
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4152
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->ensureTxsIsMutable()V

    .line 4153
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTxs(Lwallet/core/jni/proto/Tezos$Txs;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4143
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->ensureTxsIsMutable()V

    .line 4144
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 4071
    invoke-static {}, Lwallet/core/jni/proto/Tezos$TxObject;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$TxObject;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$TxObject;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    return-void
.end method

.method private clearTxs()V
    .locals 1

    .line 4168
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTxsIsMutable()V
    .locals 2

    .line 4122
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4123
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4125
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$TxObject;
    .locals 1

    .line 4491
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1

    .line 4253
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$TxObject$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$TxObject;)Lwallet/core/jni/proto/Tezos$TxObject$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4256
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4230
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4236
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4194
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4201
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4241
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4248
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4218
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4225
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4181
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4188
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4206
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$TxObject;
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

    .line 4213
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$TxObject;",
            ">;"
        }
    .end annotation

    .line 4497
    sget-object v0, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTxs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4174
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->ensureTxsIsMutable()V

    .line 4175
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4064
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    return-void
.end method

.method private setFromBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4079
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4080
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    return-void
.end method

.method private setTxs(ILwallet/core/jni/proto/Tezos$Txs;)V
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

    .line 4134
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4135
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$TxObject;->ensureTxsIsMutable()V

    .line 4136
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4431
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4475
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4469
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4454
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$TxObject;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4456
    const-class p2, Lwallet/core/jni/proto/Tezos$TxObject;

    monitor-enter p2

    .line 4457
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$TxObject;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4459
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4462
    sput-object p1, Lwallet/core/jni/proto/Tezos$TxObject;->PARSER:Lcom/google/protobuf/Parser;

    .line 4464
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

    .line 4451
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "txs_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 4439
    const-class p3, Lwallet/core/jni/proto/Tezos$Txs;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u0208\u0002\u001b"

    .line 4447
    sget-object p3, Lwallet/core/jni/proto/Tezos$TxObject;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4436
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$TxObject$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$TxObject$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 4433
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$TxObject;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$TxObject;-><init>()V

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

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 4045
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4054
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->from_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTxs(I)Lwallet/core/jni/proto/Tezos$Txs;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4112
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p1
.end method

.method public getTxsCount()I
    .locals 1

    .line 4105
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTxsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation

    .line 4091
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTxsOrBuilder(I)Lwallet/core/jni/proto/Tezos$TxsOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4119
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tezos$TxsOrBuilder;

    return-object p1
.end method

.method public getTxsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Tezos$TxsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4098
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$TxObject;->txs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
