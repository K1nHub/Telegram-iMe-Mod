.class public final Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CandidateRegister"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTOSTAKE_FIELD_NUMBER:I = 0x4

.field public static final CANDIDATE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

.field public static final OWNERADDRESS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x6

.field public static final STAKEDAMOUNT_FIELD_NUMBER:I = 0x2

.field public static final STAKEDDURATION_FIELD_NUMBER:I = 0x3


# instance fields
.field private autoStake_:Z

.field private candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

.field private ownerAddress_:Ljava/lang/String;

.field private payload_:Lcom/google/protobuf/ByteString;

.field private stakedAmount_:Ljava/lang/String;

.field private stakedDuration_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5262
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;-><init>()V

    .line 5265
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    .line 5266
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4609
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4610
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

    .line 4611
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

    .line 4612
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$7800()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 1

    .line 4604
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object v0
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->mergeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearCandidate()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Ljava/lang/String;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setStakedAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearStakedAmount()V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setStakedAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;I)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setStakedDuration(I)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearStakedDuration()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Z)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setAutoStake(Z)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearAutoStake()V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Ljava/lang/String;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4604
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 4604
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->clearPayload()V

    return-void
.end method

.method private clearAutoStake()V
    .locals 1

    const/4 v0, 0x0

    .line 4756
    iput-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->autoStake_:Z

    return-void
.end method

.method private clearCandidate()V
    .locals 1

    const/4 v0, 0x0

    .line 4656
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 4809
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 4850
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakedAmount()V
    .locals 1

    .line 4694
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getStakedAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

    return-void
.end method

.method private clearStakedDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 4730
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedDuration_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 1

    .line 5271
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object v0
.end method

.method private mergeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4644
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    if-eqz v0, :cond_0

    .line 4645
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4646
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    .line 4647
    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    goto :goto_0

    .line 4649
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1

    .line 4928
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4931
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4905
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4911
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4869
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4876
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4916
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4923
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4893
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4900
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4856
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4863
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4881
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
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

    .line 4888
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;",
            ">;"
        }
    .end annotation

    .line 5277
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

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

    .line 4749
    iput-boolean p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->autoStake_:Z

    return-void
.end method

.method private setCandidate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4635
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

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

    .line 4796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4798
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

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

    .line 4821
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4822
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

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

    .line 4841
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4843
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->payload_:Lcom/google/protobuf/ByteString;

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

    .line 4685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4687
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

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

    .line 4702
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4703
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

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

    .line 4723
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedDuration_:I

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

    .line 5208
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5255
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5249
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5234
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5236
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    monitor-enter p2

    .line 5237
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5239
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5242
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->PARSER:Lcom/google/protobuf/Parser;

    .line 5244
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

    .line 5231
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "candidate_"

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

    const-string p3, "ownerAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u000b\u0004\u0007\u0005\u0208\u0006\n"

    .line 5227
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5213
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 5210
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;-><init>()V

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

.method public getAutoStake()Z
    .locals 1

    .line 4741
    iget-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->autoStake_:Z

    return v0
.end method

.method public getCandidate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 1

    .line 4628
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 4771
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4784
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4834
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakedAmount()Ljava/lang/String;
    .locals 1

    .line 4668
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakedAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4677
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedAmount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 4715
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->stakedDuration_:I

    return v0
.end method

.method public hasCandidate()Z
    .locals 1

    .line 4621
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->candidate_:Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
