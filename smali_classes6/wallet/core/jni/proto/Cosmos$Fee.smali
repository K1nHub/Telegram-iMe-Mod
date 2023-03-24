.class public final Lwallet/core/jni/proto/Cosmos$Fee;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$FeeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fee"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Fee;",
        "Lwallet/core/jni/proto/Cosmos$Fee$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$FeeOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNTS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

.field public static final GAS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Fee;",
            ">;"
        }
    .end annotation
.end field


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

.field private gas_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1331
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Fee;-><init>()V

    .line 1334
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    .line 1335
    const-class v1, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 806
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Cosmos$Fee;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->addAmounts(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->addAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Cosmos$Fee;Ljava/lang/Iterable;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->addAllAmounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 0

    .line 800
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->clearAmounts()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Cosmos$Fee;I)V
    .locals 0

    .line 800
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Fee;->removeAmounts(I)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Cosmos$Fee;J)V
    .locals 0

    .line 800
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->setGas(J)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Cosmos$Fee;)V
    .locals 0

    .line 800
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->clearGas()V

    return-void
.end method

.method static synthetic access$800()Lwallet/core/jni/proto/Cosmos$Fee;
    .locals 1

    .line 800
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    return-object v0
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Cosmos$Fee;ILwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 800
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Fee;->setAmounts(ILwallet/core/jni/proto/Cosmos$Amount;)V

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

    .line 920
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->ensureAmountsIsMutable()V

    .line 921
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 907
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->ensureAmountsIsMutable()V

    .line 909
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 895
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->ensureAmountsIsMutable()V

    .line 896
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmounts()V
    .locals 1

    .line 932
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearGas()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 981
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->gas_:J

    return-void
.end method

.method private ensureAmountsIsMutable()V
    .locals 2

    .line 866
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 867
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Fee;
    .locals 1

    .line 1340
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1

    .line 1059
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Fee$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Fee;)Lwallet/core/jni/proto/Cosmos$Fee$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1062
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1036
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1042
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1000
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1007
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1047
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1054
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1024
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1031
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 987
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 994
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1012
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Fee;
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

    .line 1019
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Fee;",
            ">;"
        }
    .end annotation

    .line 1346
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

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

    .line 942
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->ensureAmountsIsMutable()V

    .line 943
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 882
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Fee;->ensureAmountsIsMutable()V

    .line 884
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setGas(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 970
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Fee;->gas_:J

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

    .line 1280
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1324
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1318
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1303
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Fee;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1305
    const-class p2, Lwallet/core/jni/proto/Cosmos$Fee;

    monitor-enter p2

    .line 1306
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Fee;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1308
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1311
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Fee;->PARSER:Lcom/google/protobuf/Parser;

    .line 1313
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

    .line 1300
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amounts_"

    aput-object v0, p1, p3

    .line 1288
    const-class p3, Lwallet/core/jni/proto/Cosmos$Amount;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "gas_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0003"

    .line 1296
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Fee;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1285
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Fee$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Fee$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 1282
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Fee;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Fee;-><init>()V

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

    .line 852
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    return-object p1
.end method

.method public getAmountsCount()I
    .locals 1

    .line 841
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 819
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 863
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 830
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->amounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getGas()J
    .locals 2

    .line 958
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Fee;->gas_:J

    return-wide v0
.end method
