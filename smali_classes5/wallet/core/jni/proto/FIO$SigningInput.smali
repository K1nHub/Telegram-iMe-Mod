.class public final Lwallet/core/jni/proto/FIO$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$SigningInput;",
        "Lwallet/core/jni/proto/FIO$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x5

.field public static final CHAIN_PARAMS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

.field public static final EXPIRY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x3

.field public static final TPID_FIELD_NUMBER:I = 0x4


# instance fields
.field private action_:Lwallet/core/jni/proto/FIO$Action;

.field private chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

.field private expiry_:I

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private tpid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7140
    new-instance v0, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$SigningInput;-><init>()V

    .line 7143
    sput-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    .line 7144
    const-class v1, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6410
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6411
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 6412
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11200()Lwallet/core/jni/proto/FIO$SigningInput;
    .locals 1

    .line 6405
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    return-object v0
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/FIO$SigningInput;I)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setExpiry(I)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/FIO$SigningInput;)V
    .locals 0

    .line 6405
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput;->clearExpiry()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->mergeChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/FIO$SigningInput;)V
    .locals 0

    .line 6405
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput;->clearChainParams()V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/FIO$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/FIO$SigningInput;)V
    .locals 0

    .line 6405
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/FIO$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setTpid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/FIO$SigningInput;)V
    .locals 0

    .line 6405
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput;->clearTpid()V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/FIO$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setTpidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->setAction(Lwallet/core/jni/proto/FIO$Action;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/FIO$SigningInput;Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0

    .line 6405
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$SigningInput;->mergeAction(Lwallet/core/jni/proto/FIO$Action;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/FIO$SigningInput;)V
    .locals 0

    .line 6405
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$SigningInput;->clearAction()V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 6686
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    return-void
.end method

.method private clearChainParams()V
    .locals 1

    const/4 v0, 0x0

    .line 6514
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    return-void
.end method

.method private clearExpiry()V
    .locals 1

    const/4 v0, 0x0

    .line 6449
    iput v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->expiry_:I

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 6554
    invoke-static {}, Lwallet/core/jni/proto/FIO$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/FIO$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTpid()V
    .locals 1

    .line 6607
    invoke-static {}, Lwallet/core/jni/proto/FIO$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/FIO$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$SigningInput;->getTpid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$SigningInput;
    .locals 1

    .line 7149
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    return-object v0
.end method

.method private mergeAction(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6669
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6670
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    if-eqz v0, :cond_0

    .line 6671
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6672
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    .line 6673
    invoke-static {v0}, Lwallet/core/jni/proto/FIO$Action;->newBuilder(Lwallet/core/jni/proto/FIO$Action;)Lwallet/core/jni/proto/FIO$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$Action;

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    goto :goto_0

    .line 6675
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    :goto_0
    return-void
.end method

.method private mergeChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6498
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    if-eqz v0, :cond_0

    .line 6499
    invoke-static {}, Lwallet/core/jni/proto/FIO$ChainParams;->getDefaultInstance()Lwallet/core/jni/proto/FIO$ChainParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6500
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    .line 6501
    invoke-static {v0}, Lwallet/core/jni/proto/FIO$ChainParams;->newBuilder(Lwallet/core/jni/proto/FIO$ChainParams;)Lwallet/core/jni/proto/FIO$ChainParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$ChainParams$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/FIO$ChainParams;

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    goto :goto_0

    .line 6503
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1

    .line 6765
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$SigningInput;)Lwallet/core/jni/proto/FIO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6768
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6742
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6748
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6706
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6713
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6753
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6760
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6730
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6737
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6693
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6700
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6718
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$SigningInput;
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

    .line 6725
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$SigningInput;",
            ">;"
        }
    .end annotation

    .line 7155
    sget-object v0, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAction(Lwallet/core/jni/proto/FIO$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6657
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    return-void
.end method

.method private setChainParams(Lwallet/core/jni/proto/FIO$ChainParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6485
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    return-void
.end method

.method private setExpiry(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6438
    iput p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->expiry_:I

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6541
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6543
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTpid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6594
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6596
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

    return-void
.end method

.method private setTpidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6619
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6620
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

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

    .line 7087
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7133
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7127
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7112
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7114
    const-class p2, Lwallet/core/jni/proto/FIO$SigningInput;

    monitor-enter p2

    .line 7115
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7117
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7120
    sput-object p1, Lwallet/core/jni/proto/FIO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 7122
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

    .line 7109
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "expiry_"

    aput-object v0, p1, p3

    const-string p3, "chainParams_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "tpid_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "action_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\u0208\u0005\t"

    .line 7105
    sget-object p3, Lwallet/core/jni/proto/FIO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7092
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 7089
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$SigningInput;-><init>()V

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

.method public getAction()Lwallet/core/jni/proto/FIO$Action;
    .locals 1

    .line 6646
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/FIO$Action;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChainParams()Lwallet/core/jni/proto/FIO$ChainParams;
    .locals 1

    .line 6474
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/FIO$ChainParams;->getDefaultInstance()Lwallet/core/jni/proto/FIO$ChainParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExpiry()I
    .locals 1

    .line 6426
    iget v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->expiry_:I

    return v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6530
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTpid()Ljava/lang/String;
    .locals 1

    .line 6569
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

    return-object v0
.end method

.method public getTpidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6582
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->tpid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 6635
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->action_:Lwallet/core/jni/proto/FIO$Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChainParams()Z
    .locals 1

    .line 6463
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$SigningInput;->chainParams_:Lwallet/core/jni/proto/FIO$ChainParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
