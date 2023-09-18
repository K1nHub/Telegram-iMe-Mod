.class public final Lwallet/core/jni/proto/IoTeX$Staking$Create;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$CreateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Create"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Create;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CreateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTOSTAKE_FIELD_NUMBER:I = 0x4

.field public static final CANDIDATENAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Create;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x5

.field public static final STAKEDAMOUNT_FIELD_NUMBER:I = 0x2

.field public static final STAKEDDURATION_FIELD_NUMBER:I = 0x3


# instance fields
.field private autoStake_:Z

.field private candidateName_:Ljava/lang/String;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private stakedAmount_:Ljava/lang/String;

.field private stakedDuration_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1485
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;-><init>()V

    .line 1488
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    .line 1489
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 814
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 815
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    .line 816
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    .line 817
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 1

    .line 809
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object v0
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/IoTeX$Staking$Create;Ljava/lang/String;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setCandidateName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->clearCandidateName()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setCandidateNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/IoTeX$Staking$Create;Ljava/lang/String;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setStakedAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->clearStakedAmount()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setStakedAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/IoTeX$Staking$Create;I)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setStakedDuration(I)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->clearStakedDuration()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/IoTeX$Staking$Create;Z)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setAutoStake(Z)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->clearAutoStake()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/IoTeX$Staking$Create;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 809
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 809
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->clearPayload()V

    return-void
.end method

.method private clearAutoStake()V
    .locals 1

    const/4 v0, 0x0

    .line 1026
    iput-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->autoStake_:Z

    return-void
.end method

.method private clearCandidateName()V
    .locals 1

    .line 869
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getCandidateName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 1065
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakedAmount()V
    .locals 1

    .line 936
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getStakedAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    return-void
.end method

.method private clearStakedDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 988
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedDuration_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 1

    .line 1494
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1

    .line 1143
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1146
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1120
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1126
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1084
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1091
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1131
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1138
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1108
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1115
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1071
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1078
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1096
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Create;
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

    .line 1103
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Create;",
            ">;"
        }
    .end annotation

    .line 1500
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAutoStake(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1015
    iput-boolean p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->autoStake_:Z

    return-void
.end method

.method private setCandidateName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    return-void
.end method

.method private setCandidateNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 881
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 882
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1054
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setStakedAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    return-void
.end method

.method private setStakedAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 948
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 949
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    return-void
.end method

.method private setStakedDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 977
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedDuration_:I

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

    .line 1432
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1478
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1472
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1457
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1459
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    monitor-enter p2

    .line 1460
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1462
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1465
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;->PARSER:Lcom/google/protobuf/Parser;

    .line 1467
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

    .line 1454
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "candidateName_"

    aput-object v0, p1, p3

    const-string p3, "stakedAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "stakedDuration_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "autoStake_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000b\u0004\u0007\u0005\n"

    .line 1450
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Create;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1437
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 1434
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking$Create;-><init>()V

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

.method public getAutoStake()Z
    .locals 1

    .line 1003
    iget-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->autoStake_:Z

    return v0
.end method

.method public getCandidateName()Ljava/lang/String;
    .locals 1

    .line 831
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCandidateNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 844
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->candidateName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1041
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakedAmount()Ljava/lang/String;
    .locals 1

    .line 898
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakedAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 911
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedAmount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 965
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Create;->stakedDuration_:I

    return v0
.end method
