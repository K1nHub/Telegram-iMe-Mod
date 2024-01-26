.class public final Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MsgVote"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVote;",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$MsgVoteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

.field public static final OPTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$MsgVote;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPOSAL_ID_FIELD_NUMBER:I = 0x1

.field public static final VOTER_FIELD_NUMBER:I = 0x2


# instance fields
.field private option_:I

.field private proposalId_:J

.field private voter_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16558
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;-><init>()V

    .line 16561
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    .line 16562
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16160
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 16161
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29400()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
    .locals 1

    .line 16155
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object v0
.end method

.method static synthetic access$29500(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;J)V
    .locals 0

    .line 16155
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->setProposalId(J)V

    return-void
.end method

.method static synthetic access$29600(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0

    .line 16155
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->clearProposalId()V

    return-void
.end method

.method static synthetic access$29700(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Ljava/lang/String;)V
    .locals 0

    .line 16155
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->setVoter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29800(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0

    .line 16155
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->clearVoter()V

    return-void
.end method

.method static synthetic access$29900(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16155
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->setVoterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$30000(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;I)V
    .locals 0

    .line 16155
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->setOptionValue(I)V

    return-void
.end method

.method static synthetic access$30100(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;Lwallet/core/jni/proto/Cosmos$Message$VoteOption;)V
    .locals 0

    .line 16155
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->setOption(Lwallet/core/jni/proto/Cosmos$Message$VoteOption;)V

    return-void
.end method

.method static synthetic access$30200(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)V
    .locals 0

    .line 16155
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->clearOption()V

    return-void
.end method

.method private clearOption()V
    .locals 1

    const/4 v0, 0x0

    .line 16275
    iput v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->option_:I

    return-void
.end method

.method private clearProposalId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16186
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->proposalId_:J

    return-void
.end method

.method private clearVoter()V
    .locals 1

    .line 16223
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->getVoter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
    .locals 1

    .line 16567
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1

    .line 16353
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$MsgVote;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 16356
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16330
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16336
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16294
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16301
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16341
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16348
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16318
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16325
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16281
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16288
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16306
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$MsgVote;
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

    .line 16313
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$MsgVote;",
            ">;"
        }
    .end annotation

    .line 16573
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setOption(Lwallet/core/jni/proto/Cosmos$Message$VoteOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16267
    invoke-virtual {p1}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->option_:I

    return-void
.end method

.method private setOptionValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16260
    iput p1, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->option_:I

    return-void
.end method

.method private setProposalId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16179
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->proposalId_:J

    return-void
.end method

.method private setVoter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16214
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16216
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

    return-void
.end method

.method private setVoterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16231
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 16232
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

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

    .line 16507
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 16551
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 16545
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16530
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 16532
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    monitor-enter p2

    .line 16533
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 16535
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 16538
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->PARSER:Lcom/google/protobuf/Parser;

    .line 16540
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

    .line 16527
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "proposalId_"

    aput-object v0, p1, p3

    const-string p3, "voter_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "option_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002\u0208\u0003\u000c"

    .line 16523
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16512
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 16509
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;-><init>()V

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

.method public getOption()Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
    .locals 1

    .line 16252
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->option_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 16253
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    :cond_0
    return-object v0
.end method

.method public getOptionValue()I
    .locals 1

    .line 16244
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->option_:I

    return v0
.end method

.method public getProposalId()J
    .locals 2

    .line 16171
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->proposalId_:J

    return-wide v0
.end method

.method public getVoter()Ljava/lang/String;
    .locals 1

    .line 16197
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16206
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$MsgVote;->voter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
