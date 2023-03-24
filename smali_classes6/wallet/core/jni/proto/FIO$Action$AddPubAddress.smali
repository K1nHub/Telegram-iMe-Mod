.class public final Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddPubAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddress;",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$AddPubAddressOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final FIO_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$AddPubAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_ADDRESSES_FIELD_NUMBER:I = 0x2


# instance fields
.field private fee_:J

.field private fioAddress_:Ljava/lang/String;

.field private publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3066
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;-><init>()V

    .line 3069
    sput-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    .line 3070
    const-class v1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2401
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2402
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    .line 2403
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3800()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
    .locals 1

    .line 2396
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object v0
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Ljava/lang/String;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->setFioAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->clearFioAddress()V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->setFioAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->setPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Lwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->addPublicAddresses(Lwallet/core/jni/proto/FIO$PublicAddress;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;ILwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->addPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;Ljava/lang/Iterable;)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->addAllPublicAddresses(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->clearPublicAddresses()V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;I)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->removePublicAddresses(I)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;J)V
    .locals 0

    .line 2396
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->setFee(J)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)V
    .locals 0

    .line 2396
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->clearFee()V

    return-void
.end method

.method private addAllPublicAddresses(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;)V"
        }
    .end annotation

    .line 2584
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->ensurePublicAddressesIsMutable()V

    .line 2585
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)V
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

    .line 2571
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2572
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->ensurePublicAddressesIsMutable()V

    .line 2573
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPublicAddresses(Lwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2558
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2559
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->ensurePublicAddressesIsMutable()V

    .line 2560
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2645
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fee_:J

    return-void
.end method

.method private clearFioAddress()V
    .locals 1

    .line 2455
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->getFioAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearPublicAddresses()V
    .locals 1

    .line 2596
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePublicAddressesIsMutable()V
    .locals 2

    .line 2530
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2531
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2533
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
    .locals 1

    .line 3075
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1

    .line 2723
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action$AddPubAddress;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2726
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2700
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2706
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2664
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2671
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2711
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2718
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2688
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2695
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2651
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2658
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2676
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$AddPubAddress;
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

    .line 2683
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$AddPubAddress;",
            ">;"
        }
    .end annotation

    .line 3081
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePublicAddresses(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2606
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->ensurePublicAddressesIsMutable()V

    .line 2607
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2634
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fee_:J

    return-void
.end method

.method private setFioAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2444
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFioAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2467
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2468
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    return-void
.end method

.method private setPublicAddresses(ILwallet/core/jni/proto/FIO$PublicAddress;)V
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

    .line 2546
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2547
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->ensurePublicAddressesIsMutable()V

    .line 2548
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3014
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3059
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3053
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3038
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3040
    const-class p2, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    monitor-enter p2

    .line 3041
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3043
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3046
    sput-object p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 3048
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

    .line 3035
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fioAddress_"

    aput-object v0, p1, p3

    const-string p3, "publicAddresses_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 3022
    const-class p3, Lwallet/core/jni/proto/FIO$PublicAddress;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u001b\u0003\u0003"

    .line 3031
    sget-object p3, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3019
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 3016
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;-><init>()V

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

.method public getFee()J
    .locals 2

    .line 2622
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fee_:J

    return-wide v0
.end method

.method public getFioAddress()Ljava/lang/String;
    .locals 1

    .line 2417
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFioAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2430
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->fioAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPublicAddresses(I)Lwallet/core/jni/proto/FIO$PublicAddress;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2516
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p1
.end method

.method public getPublicAddressesCount()I
    .locals 1

    .line 2505
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPublicAddressesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation

    .line 2483
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPublicAddressesOrBuilder(I)Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2527
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;

    return-object p1
.end method

.method public getPublicAddressesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2494
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$AddPubAddress;->publicAddresses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
