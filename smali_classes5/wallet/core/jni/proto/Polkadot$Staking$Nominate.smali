.class public final Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$NominateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Nominate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Nominate;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$NominateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

.field public static final NOMINATORS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Nominate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nominators_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4147
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;-><init>()V

    .line 4150
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    .line 4151
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3734
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$5600()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
    .locals 1

    .line 3728
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object v0
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;ILjava/lang/String;)V
    .locals 0

    .line 3728
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->setNominators(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Ljava/lang/String;)V
    .locals 0

    .line 3728
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->addNominators(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Ljava/lang/Iterable;)V
    .locals 0

    .line 3728
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->addAllNominators(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V
    .locals 0

    .line 3728
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->clearNominators()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3728
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->addNominatorsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllNominators(Ljava/lang/Iterable;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3836
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->ensureNominatorsIsMutable()V

    .line 3837
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addNominators(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3823
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->ensureNominatorsIsMutable()V

    .line 3824
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNominatorsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3860
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3861
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->ensureNominatorsIsMutable()V

    .line 3862
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNominators()V
    .locals 1

    .line 3848
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureNominatorsIsMutable()V
    .locals 2

    .line 3791
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3792
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3794
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
    .locals 1

    .line 4156
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    .locals 1

    .line 3940
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3943
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3917
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3923
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3881
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3888
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3928
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3935
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3905
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3912
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3868
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3875
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3893
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
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

    .line 3900
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Nominate;",
            ">;"
        }
    .end annotation

    .line 4162
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNominators(ILjava/lang/String;)V
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

    .line 3808
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3809
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->ensureNominatorsIsMutable()V

    .line 3810
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 4099
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4134
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4119
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4121
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    monitor-enter p2

    .line 4122
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4124
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4127
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->PARSER:Lcom/google/protobuf/Parser;

    .line 4129
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

    .line 4116
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "nominators_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u021a"

    .line 4112
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4104
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 4101
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;-><init>()V

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

.method public getNominators(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3773
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNominatorsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3787
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3788
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3787
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getNominatorsCount()I
    .locals 1

    .line 3760
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNominatorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3748
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->nominators_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
