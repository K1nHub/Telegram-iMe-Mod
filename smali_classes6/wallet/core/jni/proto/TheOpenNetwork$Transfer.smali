.class public final Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TheOpenNetwork.java"

# interfaces
.implements Lwallet/core/jni/proto/TheOpenNetwork$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/TheOpenNetwork$Transfer;",
        "Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TheOpenNetwork$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final COMMENT_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

.field public static final DEST_FIELD_NUMBER:I = 0x2

.field public static final EXPIRE_AT_FIELD_NUMBER:I = 0x6

.field public static final MODE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field public static final WALLET_VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private comment_:Ljava/lang/String;

.field private dest_:Ljava/lang/String;

.field private expireAt_:I

.field private mode_:I

.field private sequenceNumber_:I

.field private walletVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1239
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;-><init>()V

    .line 1242
    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    .line 1243
    const-class v1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 349
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    .line 350
    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
    .locals 1

    .line 343
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setWalletVersionValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearSequenceNumber()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setMode(I)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearMode()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setExpireAt(I)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearExpireAt()V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearComment()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setCommentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setWalletVersion(Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearWalletVersion()V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setDest(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearDest()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setDestBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;J)V
    .locals 0

    .line 343
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)V
    .locals 0

    .line 343
    invoke-direct {p0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;I)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->setSequenceNumber(I)V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 516
    iput-wide v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->amount_:J

    return-void
.end method

.method private clearComment()V
    .locals 1

    .line 692
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    return-void
.end method

.method private clearDest()V
    .locals 1

    .line 464
    invoke-static {}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->getDest()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    return-void
.end method

.method private clearExpireAt()V
    .locals 1

    const/4 v0, 0x0

    .line 639
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->expireAt_:I

    return-void
.end method

.method private clearMode()V
    .locals 1

    const/4 v0, 0x0

    .line 601
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->mode_:I

    return-void
.end method

.method private clearSequenceNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 560
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->sequenceNumber_:I

    return-void
.end method

.method private clearWalletVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 411
    iput v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->walletVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
    .locals 1

    .line 1248
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1

    .line 784
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/TheOpenNetwork$Transfer;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 787
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 761
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 767
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 725
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 732
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 772
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 779
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 749
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 756
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 712
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 719
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 737
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TheOpenNetwork$Transfer;
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

    .line 744
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TheOpenNetwork$Transfer;",
            ">;"
        }
    .end annotation

    .line 1254
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

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

    .line 505
    iput-wide p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->amount_:J

    return-void
.end method

.method private setComment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    return-void
.end method

.method private setCommentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 704
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 705
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    return-void
.end method

.method private setDest(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 451
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    return-void
.end method

.method private setDestBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 477
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    return-void
.end method

.method private setExpireAt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 628
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->expireAt_:I

    return-void
.end method

.method private setMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 589
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->mode_:I

    return-void
.end method

.method private setSequenceNumber(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 547
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->sequenceNumber_:I

    return-void
.end method

.method private setWalletVersion(Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 399
    invoke-virtual {p1}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->walletVersion_:I

    return-void
.end method

.method private setWalletVersionValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 388
    iput p1, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->walletVersion_:I

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

    .line 1184
    sget-object p2, Lwallet/core/jni/proto/TheOpenNetwork$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1232
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1226
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1211
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1213
    const-class p2, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    monitor-enter p2

    .line 1214
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1216
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1219
    sput-object p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 1221
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

    .line 1208
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "walletVersion_"

    aput-object v0, p1, p3

    const-string p3, "dest_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "sequenceNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "mode_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "expireAt_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "comment_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\u0003\u0004\u000b\u0005\u000b\u0006\u000b\u0007\u0208"

    .line 1204
    sget-object p3, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1189
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer$Builder;-><init>(Lwallet/core/jni/proto/TheOpenNetwork$1;)V

    return-object p1

    .line 1186
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 493
    iget-wide v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->amount_:J

    return-wide v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 654
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 667
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->comment_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    .line 426
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 439
    iget-object v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->dest_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpireAt()I
    .locals 1

    .line 616
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->expireAt_:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 576
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->mode_:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 533
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->sequenceNumber_:I

    return v0
.end method

.method public getWalletVersion()Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;
    .locals 1

    .line 376
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->walletVersion_:I

    invoke-static {v0}, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    sget-object v0, Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;->UNRECOGNIZED:Lwallet/core/jni/proto/TheOpenNetwork$WalletVersion;

    :cond_0
    return-object v0
.end method

.method public getWalletVersionValue()I
    .locals 1

    .line 364
    iget v0, p0, Lwallet/core/jni/proto/TheOpenNetwork$Transfer;->walletVersion_:I

    return v0
.end method
