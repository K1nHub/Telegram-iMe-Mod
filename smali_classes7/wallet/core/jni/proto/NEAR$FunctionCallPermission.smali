.class public final Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$FunctionCallPermissionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FunctionCallPermission"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermission;",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$FunctionCallPermissionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWANCE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

.field public static final METHOD_NAMES_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$FunctionCallPermission;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private allowance_:Lcom/google/protobuf/ByteString;

.field private methodNames_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private receiverId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 967
    new-instance v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;-><init>()V

    .line 970
    sput-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    .line 971
    const-class v1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 445
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 446
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->allowance_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 447
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

    .line 448
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->clearReceiverId()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->setReceiverIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;ILjava/lang/String;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->setMethodNames(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/String;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->addMethodNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/Iterable;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->addAllMethodNames(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->clearMethodNames()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->addMethodNamesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
    .locals 1

    .line 440
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object v0
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->setAllowance(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0

    .line 440
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->clearAllowance()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;Ljava/lang/String;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->setReceiverId(Ljava/lang/String;)V

    return-void
.end method

.method private addAllMethodNames(Ljava/lang/Iterable;)V
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

    .line 608
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->ensureMethodNamesIsMutable()V

    .line 609
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMethodNames(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 598
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 599
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->ensureMethodNamesIsMutable()V

    .line 600
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMethodNamesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 624
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 625
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->ensureMethodNamesIsMutable()V

    .line 626
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAllowance()V
    .locals 1

    .line 486
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getAllowance()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->allowance_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMethodNames()V
    .locals 1

    .line 616
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReceiverId()V
    .locals 1

    .line 523
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getReceiverId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

    return-void
.end method

.method private ensureMethodNamesIsMutable()V
    .locals 2

    .line 575
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 576
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
    .locals 1

    .line 976
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1

    .line 704
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 707
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 681
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 687
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 645
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 652
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 692
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 699
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 669
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 676
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 632
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 639
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 657
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
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

    .line 664
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$FunctionCallPermission;",
            ">;"
        }
    .end annotation

    .line 982
    sget-object v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowance(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->allowance_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMethodNames(ILjava/lang/String;)V
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

    .line 588
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 589
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->ensureMethodNamesIsMutable()V

    .line 590
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReceiverId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 514
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 531
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 532
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

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

    .line 916
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 960
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 954
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 939
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 941
    const-class p2, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    monitor-enter p2

    .line 942
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 944
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 947
    sput-object p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->PARSER:Lcom/google/protobuf/Parser;

    .line 949
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

    .line 936
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "allowance_"

    aput-object v0, p1, p3

    const-string p3, "receiverId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "methodNames_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\u0208\u0003\u021a"

    .line 932
    sget-object p3, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 921
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 918
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;-><init>()V

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

.method public getAllowance()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 462
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->allowance_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMethodNames(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMethodNamesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 572
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 571
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMethodNamesCount()I
    .locals 1

    .line 552
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMethodNamesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->methodNames_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReceiverId()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 506
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->receiverId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
