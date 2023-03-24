.class public final Lwallet/core/jni/proto/MultiversX$Accounts;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$AccountsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$Accounts;",
        "Lwallet/core/jni/proto/MultiversX$Accounts$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$AccountsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$Accounts;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_FIELD_NUMBER:I = 0x4

.field public static final RECEIVER_USERNAME_FIELD_NUMBER:I = 0x5

.field public static final SENDER_FIELD_NUMBER:I = 0x2

.field public static final SENDER_NONCE_FIELD_NUMBER:I = 0x1

.field public static final SENDER_USERNAME_FIELD_NUMBER:I = 0x3


# instance fields
.field private receiverUsername_:Ljava/lang/String;

.field private receiver_:Ljava/lang/String;

.field private senderNonce_:J

.field private senderUsername_:Ljava/lang/String;

.field private sender_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3635
    new-instance v0, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;-><init>()V

    .line 3638
    sput-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    .line 3639
    const-class v1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2889
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    .line 2890
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

    .line 2891
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    .line 2892
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4700()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 2883
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object v0
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/MultiversX$Accounts;J)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/MultiversX$Accounts;->setSenderNonce(J)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2883
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts;->clearSenderNonce()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2883
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts;->clearSender()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setSenderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setSenderUsername(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2883
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts;->clearSenderUsername()V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setSenderUsernameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setReceiver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2883
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts;->clearReceiver()V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setReceiverBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/MultiversX$Accounts;Ljava/lang/String;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setReceiverUsername(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/MultiversX$Accounts;)V
    .locals 0

    .line 2883
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$Accounts;->clearReceiverUsername()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/MultiversX$Accounts;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2883
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$Accounts;->setReceiverUsernameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearReceiver()V
    .locals 1

    .line 3116
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private clearReceiverUsername()V
    .locals 1

    .line 3167
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getReceiverUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 2982
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2929
    iput-wide v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderNonce_:J

    return-void
.end method

.method private clearSenderUsername()V
    .locals 1

    .line 3049
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$Accounts;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$Accounts;->getSenderUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$Accounts;
    .locals 1

    .line 3644
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1

    .line 3255
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$Accounts;)Lwallet/core/jni/proto/MultiversX$Accounts$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3258
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3232
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3238
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3196
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3203
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3243
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3250
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3220
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3227
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3183
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3190
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3208
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$Accounts;
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

    .line 3215
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$Accounts;",
            ">;"
        }
    .end annotation

    .line 3650
    sget-object v0, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReceiver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3105
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3128
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3129
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverUsername(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3160
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverUsernameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3175
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3176
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    return-void
.end method

.method private setSender(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2969
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2971
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2994
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2995
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2918
    iput-wide p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderNonce_:J

    return-void
.end method

.method private setSenderUsername(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3038
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

    return-void
.end method

.method private setSenderUsernameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3061
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3062
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

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

    .line 3582
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3628
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3622
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3607
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$Accounts;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3609
    const-class p2, Lwallet/core/jni/proto/MultiversX$Accounts;

    monitor-enter p2

    .line 3610
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$Accounts;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3612
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3615
    sput-object p1, Lwallet/core/jni/proto/MultiversX$Accounts;->PARSER:Lcom/google/protobuf/Parser;

    .line 3617
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

    .line 3604
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "senderNonce_"

    aput-object v0, p1, p3

    const-string p3, "sender_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "senderUsername_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "receiver_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "receiverUsername_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0003\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208"

    .line 3600
    sget-object p3, Lwallet/core/jni/proto/MultiversX$Accounts;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3587
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$Accounts$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 3584
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$Accounts;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$Accounts;-><init>()V

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

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3078
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3091
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiver_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverUsername()Ljava/lang/String;
    .locals 1

    .line 3141
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3150
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->receiverUsername_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 2944
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2957
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->sender_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderNonce()J
    .locals 2

    .line 2906
    iget-wide v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderNonce_:J

    return-wide v0
.end method

.method public getSenderUsername()Ljava/lang/String;
    .locals 1

    .line 3011
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderUsernameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3024
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$Accounts;->senderUsername_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
