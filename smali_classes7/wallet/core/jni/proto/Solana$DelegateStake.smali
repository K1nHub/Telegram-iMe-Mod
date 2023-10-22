.class public final Lwallet/core/jni/proto/Solana$DelegateStake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$DelegateStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateStake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$DelegateStake;",
        "Lwallet/core/jni/proto/Solana$DelegateStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$DelegateStakeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DelegateStake;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKE_ACCOUNT_FIELD_NUMBER:I = 0x3

.field public static final VALIDATOR_PUBKEY_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private stakeAccount_:Ljava/lang/String;

.field private validatorPubkey_:Ljava/lang/String;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1488
    new-instance v0, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;-><init>()V

    .line 1491
    sput-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    .line 1492
    const-class v1, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 975
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 976
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    .line 977
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1500()Lwallet/core/jni/proto/Solana$DelegateStake;
    .locals 1

    .line 970
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object v0
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Solana$DelegateStake;Ljava/lang/String;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->setValidatorPubkey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0

    .line 970
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DelegateStake;->clearValidatorPubkey()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Solana$DelegateStake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->setValidatorPubkeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Solana$DelegateStake;J)V
    .locals 0

    .line 970
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$DelegateStake;->setValue(J)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0

    .line 970
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DelegateStake;->clearValue()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Solana$DelegateStake;Ljava/lang/String;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->setStakeAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Solana$DelegateStake;)V
    .locals 0

    .line 970
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$DelegateStake;->clearStakeAccount()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Solana$DelegateStake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$DelegateStake;->setStakeAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearStakeAccount()V
    .locals 1

    .line 1134
    invoke-static {}, Lwallet/core/jni/proto/Solana$DelegateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getStakeAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorPubkey()V
    .locals 1

    .line 1029
    invoke-static {}, Lwallet/core/jni/proto/Solana$DelegateStake;->getDefaultInstance()Lwallet/core/jni/proto/Solana$DelegateStake;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$DelegateStake;->getValidatorPubkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1081
    iput-wide v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$DelegateStake;
    .locals 1

    .line 1497
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1

    .line 1226
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$DelegateStake;)Lwallet/core/jni/proto/Solana$DelegateStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1229
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1203
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1209
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1167
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1174
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1214
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1221
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1191
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1198
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1154
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1161
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1179
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$DelegateStake;
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

    .line 1186
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$DelegateStake;",
            ">;"
        }
    .end annotation

    .line 1503
    sget-object v0, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStakeAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method private setStakeAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1146
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1147
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorPubkey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1018
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorPubkeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1041
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1042
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    return-void
.end method

.method private setValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1070
    iput-wide p1, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->value_:J

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

    .line 1437
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1481
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1475
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1460
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$DelegateStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1462
    const-class p2, Lwallet/core/jni/proto/Solana$DelegateStake;

    monitor-enter p2

    .line 1463
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$DelegateStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1465
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1468
    sput-object p1, Lwallet/core/jni/proto/Solana$DelegateStake;->PARSER:Lcom/google/protobuf/Parser;

    .line 1470
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

    .line 1457
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "validatorPubkey_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "stakeAccount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0003\u0003\u0208"

    .line 1453
    sget-object p3, Lwallet/core/jni/proto/Solana$DelegateStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1442
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$DelegateStake$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 1439
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$DelegateStake;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$DelegateStake;-><init>()V

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

.method public getStakeAccount()Ljava/lang/String;
    .locals 1

    .line 1096
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakeAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1109
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->stakeAccount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorPubkey()Ljava/lang/String;
    .locals 1

    .line 991
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorPubkeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1004
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->validatorPubkey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 1058
    iget-wide v0, p0, Lwallet/core/jni/proto/Solana$DelegateStake;->value_:J

    return-wide v0
.end method
