.class public final Lwallet/core/jni/proto/Tron$VoteWitnessContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteWitnessContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoteWitnessContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;,
        Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;,
        Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContractOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORT_FIELD_NUMBER:I = 0x3

.field public static final VOTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private ownerAddress_:Ljava/lang/String;

.field private support_:Z

.field private votes_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9041
    new-instance v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;-><init>()V

    .line 9044
    sput-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    .line 9045
    const-class v1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7963
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 7964
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    .line 7965
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$14100()Lwallet/core/jni/proto/Tron$VoteWitnessContract;
    .locals 1

    .line 7958
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object v0
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Ljava/lang/String;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0

    .line 7958
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->setVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->addVotes(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Tron$VoteWitnessContract;ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->addVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Ljava/lang/Iterable;)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->addAllVotes(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0

    .line 7958
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->clearVotes()V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Tron$VoteWitnessContract;I)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->removeVotes(I)V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Tron$VoteWitnessContract;Z)V
    .locals 0

    .line 7958
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->setSupport(Z)V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0

    .line 7958
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->clearSupport()V

    return-void
.end method

.method private addAllVotes(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;)V"
        }
    .end annotation

    .line 8584
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ensureVotesIsMutable()V

    .line 8585
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
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

    .line 8571
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8572
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ensureVotesIsMutable()V

    .line 8573
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVotes(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8558
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8559
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ensureVotesIsMutable()V

    .line 8560
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 8455
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSupport()V
    .locals 1

    const/4 v0, 0x0

    .line 8633
    iput-boolean v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->support_:Z

    return-void
.end method

.method private clearVotes()V
    .locals 1

    .line 8596
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureVotesIsMutable()V
    .locals 2

    .line 8530
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8531
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8533
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract;
    .locals 1

    .line 9050
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1

    .line 8711
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8714
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8688
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8694
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8652
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8659
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8699
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8706
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8676
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8683
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8639
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8646
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8664
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract;
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

    .line 8671
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract;",
            ">;"
        }
    .end annotation

    .line 9056
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeVotes(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8606
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ensureVotesIsMutable()V

    .line 8607
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8442
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8444
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8467
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8468
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSupport(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8626
    iput-boolean p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->support_:Z

    return-void
.end method

.method private setVotes(ILwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
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

    .line 8546
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8547
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ensureVotesIsMutable()V

    .line 8548
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 8989
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9034
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 9028
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9013
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9015
    const-class p2, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    monitor-enter p2

    .line 9016
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9018
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9021
    sput-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 9023
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

    .line 9010
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "votes_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 8997
    const-class p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "support_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u001b\u0003\u0007"

    .line 9006
    sget-object p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8994
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 8991
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;-><init>()V

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

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 8417
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8430
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSupport()Z
    .locals 1

    .line 8618
    iget-boolean v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->support_:Z

    return v0
.end method

.method public getVotes(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8516
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p1
.end method

.method public getVotesCount()I
    .locals 1

    .line 8505
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVotesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation

    .line 8483
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVotesOrBuilder(I)Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8527
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;

    return-object p1
.end method

.method public getVotesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8494
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->votes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
