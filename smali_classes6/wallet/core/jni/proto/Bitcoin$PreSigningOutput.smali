.class public final Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreSigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$PreSigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x3

.field public static final HASH_PUBLIC_KEYS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorMessage_:Ljava/lang/String;

.field private error_:I

.field private hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8339
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;-><init>()V

    .line 8342
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    .line 8343
    const-class v1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7625
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7626
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 7627
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13100()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
    .locals 1

    .line 7620
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object v0
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->setHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->addHashPublicKeys(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->addHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Ljava/lang/Iterable;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->addAllHashPublicKeys(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V
    .locals 0

    .line 7620
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->clearHashPublicKeys()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;I)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->removeHashPublicKeys(I)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;I)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V
    .locals 0

    .line 7620
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)V
    .locals 0

    .line 7620
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->clearErrorMessage()V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7620
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllHashPublicKeys(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;)V"
        }
    .end annotation

    .line 7741
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->ensureHashPublicKeysIsMutable()V

    .line 7742
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
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

    .line 7728
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7729
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->ensureHashPublicKeysIsMutable()V

    .line 7730
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addHashPublicKeys(Lwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7716
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->ensureHashPublicKeysIsMutable()V

    .line 7717
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 7826
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->error_:I

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 7879
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private clearHashPublicKeys()V
    .locals 1

    .line 7753
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureHashPublicKeysIsMutable()V
    .locals 2

    .line 7687
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 7688
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7690
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
    .locals 1

    .line 8348
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1

    .line 7971
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7974
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7948
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7954
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7912
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7919
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7959
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7966
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7936
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7943
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7899
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7906
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7924
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;
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

    .line 7931
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;",
            ">;"
        }
    .end annotation

    .line 8354
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeHashPublicKeys(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7763
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->ensureHashPublicKeysIsMutable()V

    .line 7764
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7814
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->error_:I

    return-void
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7868
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7891
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7892
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7803
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->error_:I

    return-void
.end method

.method private setHashPublicKeys(ILwallet/core/jni/proto/Bitcoin$HashPublicKey;)V
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

    .line 7703
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7704
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->ensureHashPublicKeysIsMutable()V

    .line 7705
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 8287
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8332
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8326
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8311
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8313
    const-class p2, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    monitor-enter p2

    .line 8314
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8316
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8319
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 8321
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

    .line 8308
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "hashPublicKeys_"

    aput-object v0, p1, p3

    .line 8295
    const-class p3, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002\u000c\u0003\u0208"

    .line 8304
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8292
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 8289
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;-><init>()V

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

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 7791
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7792
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 7841
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7854
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 7779
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->error_:I

    return v0
.end method

.method public getHashPublicKeys(I)Lwallet/core/jni/proto/Bitcoin$HashPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7673
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$HashPublicKey;

    return-object p1
.end method

.method public getHashPublicKeysCount()I
    .locals 1

    .line 7662
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHashPublicKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKey;",
            ">;"
        }
    .end annotation

    .line 7640
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHashPublicKeysOrBuilder(I)Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7684
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;

    return-object p1
.end method

.method public getHashPublicKeysOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$HashPublicKeyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7651
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$PreSigningOutput;->hashPublicKeys_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
