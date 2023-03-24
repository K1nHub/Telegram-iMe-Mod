.class public final Lwallet/core/jni/proto/Everscale$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Everscale.java"

# interfaces
.implements Lwallet/core/jni/proto/Everscale$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Everscale$Transfer$Builder;,
        Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Everscale$Transfer;",
        "Lwallet/core/jni/proto/Everscale$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Everscale$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final BEHAVIOR_FIELD_NUMBER:I = 0x2

.field public static final BOUNCE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

.field public static final ENCODED_CONTRACT_DATA_FIELD_NUMBER:I = 0x6

.field public static final EXPIRED_AT_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Everscale$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x5


# instance fields
.field private accountStateOneofCase_:I

.field private accountStateOneof_:Ljava/lang/Object;

.field private amount_:J

.field private behavior_:I

.field private bounce_:Z

.field private expiredAt_:I

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1120
    new-instance v0, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Everscale$Transfer;-><init>()V

    .line 1123
    sput-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    .line 1124
    const-class v1, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 239
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const-string v0, ""

    .line 237
    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Everscale$Transfer;
    .locals 1

    .line 231
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearAccountStateOneof()V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearExpiredAt()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Everscale$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearTo()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Everscale$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Everscale$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setEncodedContractData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearEncodedContractData()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Everscale$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setEncodedContractDataBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Everscale$Transfer;Z)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setBounce(Z)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearBounce()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Everscale$Transfer;I)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setBehaviorValue(I)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Everscale$Transfer;Lwallet/core/jni/proto/Everscale$MessageBehavior;)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setBehavior(Lwallet/core/jni/proto/Everscale$MessageBehavior;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearBehavior()V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Everscale$Transfer;J)V
    .locals 0

    .line 231
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Everscale$Transfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Everscale$Transfer;)V
    .locals 0

    .line 231
    invoke-direct {p0}, Lwallet/core/jni/proto/Everscale$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Everscale$Transfer;I)V
    .locals 0

    .line 231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Everscale$Transfer;->setExpiredAt(I)V

    return-void
.end method

.method private clearAccountStateOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 415
    iput-wide v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->amount_:J

    return-void
.end method

.method private clearBehavior()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->behavior_:I

    return-void
.end method

.method private clearBounce()V
    .locals 1

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->bounce_:Z

    return-void
.end method

.method private clearEncodedContractData()V
    .locals 2

    .line 591
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 592
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v0, 0x0

    .line 593
    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearExpiredAt()V
    .locals 1

    const/4 v0, 0x0

    .line 453
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->expiredAt_:I

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 506
    invoke-static {}, Lwallet/core/jni/proto/Everscale$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Everscale$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Everscale$Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Everscale$Transfer;
    .locals 1

    .line 1129
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1

    .line 686
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Everscale$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Everscale$Transfer;)Lwallet/core/jni/proto/Everscale$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 689
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 663
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 669
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 627
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 634
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 674
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 681
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 651
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 658
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 614
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 621
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 639
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Everscale$Transfer;
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

    .line 646
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Everscale$Transfer;",
            ">;"
        }
    .end annotation

    .line 1135
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 404
    iput-wide p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->amount_:J

    return-void
.end method

.method private setBehavior(Lwallet/core/jni/proto/Everscale$MessageBehavior;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 365
    invoke-virtual {p1}, Lwallet/core/jni/proto/Everscale$MessageBehavior;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->behavior_:I

    return-void
.end method

.method private setBehaviorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 354
    iput p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->behavior_:I

    return-void
.end method

.method private setBounce(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    iput-boolean p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->bounce_:Z

    return-void
.end method

.method private setEncodedContractData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    .line 580
    iput v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    .line 581
    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    return-void
.end method

.method private setEncodedContractDataBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 606
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 607
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 608
    iput p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    return-void
.end method

.method private setExpiredAt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 442
    iput p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->expiredAt_:I

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 518
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 519
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

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

    .line 1065
    sget-object p2, Lwallet/core/jni/proto/Everscale$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1107
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1092
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Everscale$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1094
    const-class p2, Lwallet/core/jni/proto/Everscale$Transfer;

    monitor-enter p2

    .line 1095
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Everscale$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1097
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1100
    sput-object p1, Lwallet/core/jni/proto/Everscale$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1102
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

    .line 1089
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "accountStateOneof_"

    aput-object v0, p1, p3

    const-string p3, "accountStateOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "bounce_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "behavior_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "expiredAt_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "to_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0007\u0002\u000c\u0003\u0003\u0004\u000b\u0005\u0208\u0006\u023b\u0000"

    .line 1085
    sget-object p3, Lwallet/core/jni/proto/Everscale$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1070
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Everscale$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Everscale$Transfer$Builder;-><init>(Lwallet/core/jni/proto/Everscale$1;)V

    return-object p1

    .line 1067
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Everscale$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Everscale$Transfer;-><init>()V

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

.method public getAccountStateOneofCase()Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
    .locals 1

    .line 271
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->forNumber(I)Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->amount_:J

    return-wide v0
.end method

.method public getBehavior()Lwallet/core/jni/proto/Everscale$MessageBehavior;
    .locals 1

    .line 342
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->behavior_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Everscale$MessageBehavior;->forNumber(I)Lwallet/core/jni/proto/Everscale$MessageBehavior;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    sget-object v0, Lwallet/core/jni/proto/Everscale$MessageBehavior;->UNRECOGNIZED:Lwallet/core/jni/proto/Everscale$MessageBehavior;

    :cond_0
    return-object v0
.end method

.method public getBehaviorValue()I
    .locals 1

    .line 330
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->behavior_:I

    return v0
.end method

.method public getBounce()Z
    .locals 1

    .line 292
    iget-boolean v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->bounce_:Z

    return v0
.end method

.method public getEncodedContractData()Ljava/lang/String;
    .locals 2

    .line 547
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 548
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getEncodedContractDataBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 564
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneof_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 567
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpiredAt()I
    .locals 1

    .line 430
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->expiredAt_:I

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 481
    iget-object v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasEncodedContractData()Z
    .locals 2

    .line 534
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer;->accountStateOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
