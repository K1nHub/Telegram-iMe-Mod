.class public final Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron$VoteWitnessContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vote"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$VoteWitnessContract$VoteOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOTE_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final VOTE_COUNT_FIELD_NUMBER:I = 0x2


# instance fields
.field private voteAddress_:Ljava/lang/String;

.field private voteCount_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8386
    new-instance v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;-><init>()V

    .line 8389
    sput-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    .line 8390
    const-class v1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 8014
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13400()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
    .locals 1

    .line 8008
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object v0
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;Ljava/lang/String;)V
    .locals 0

    .line 8008
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->setVoteAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 0

    .line 8008
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->clearVoteAddress()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8008
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->setVoteAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;J)V
    .locals 0

    .line 8008
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->setVoteCount(J)V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)V
    .locals 0

    .line 8008
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->clearVoteCount()V

    return-void
.end method

.method private clearVoteAddress()V
    .locals 1

    .line 8066
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->getVoteAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearVoteCount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8118
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteCount_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
    .locals 1

    .line 8395
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1

    .line 8196
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8199
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8173
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8179
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8137
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8144
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8184
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8191
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8161
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8168
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8124
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8131
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8149
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;
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

    .line 8156
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;",
            ">;"
        }
    .end annotation

    .line 8401
    sget-object v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setVoteAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8053
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8055
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    return-void
.end method

.method private setVoteAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8078
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8079
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    return-void
.end method

.method private setVoteCount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8107
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteCount_:J

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

    .line 8336
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8373
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8358
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8360
    const-class p2, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    monitor-enter p2

    .line 8361
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8363
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8366
    sput-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->PARSER:Lcom/google/protobuf/Parser;

    .line 8368
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

    .line 8355
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "voteAddress_"

    aput-object v0, p1, p3

    const-string p3, "voteCount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0002"

    .line 8351
    sget-object p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8341
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 8338
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;-><init>()V

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

.method public getVoteAddress()Ljava/lang/String;
    .locals 1

    .line 8028
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoteAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8041
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVoteCount()J
    .locals 2

    .line 8095
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Vote;->voteCount_:J

    return-wide v0
.end method
