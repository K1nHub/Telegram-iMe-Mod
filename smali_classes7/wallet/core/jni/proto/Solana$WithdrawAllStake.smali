.class public final Lwallet/core/jni/proto/Solana$WithdrawAllStake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$WithdrawAllStakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithdrawAllStake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStake;",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$WithdrawAllStakeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$WithdrawAllStake;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKE_ACCOUNTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3605
    new-instance v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;-><init>()V

    .line 3608
    sput-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    .line 3609
    const-class v1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3252
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$5100()Lwallet/core/jni/proto/Solana$WithdrawAllStake;
    .locals 1

    .line 3246
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object v0
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->setStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Solana$WithdrawAllStake;Lwallet/core/jni/proto/Solana$StakeAccountValue;)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->addStakeAccounts(Lwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Solana$WithdrawAllStake;ILwallet/core/jni/proto/Solana$StakeAccountValue;)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->addStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Solana$WithdrawAllStake;Ljava/lang/Iterable;)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->addAllStakeAccounts(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)V
    .locals 0

    .line 3246
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->clearStakeAccounts()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Solana$WithdrawAllStake;I)V
    .locals 0

    .line 3246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->removeStakeAccounts(I)V

    return-void
.end method

.method private addAllStakeAccounts(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
            ">;)V"
        }
    .end annotation

    .line 3330
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->ensureStakeAccountsIsMutable()V

    .line 3331
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)V
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

    .line 3321
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3322
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->ensureStakeAccountsIsMutable()V

    .line 3323
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addStakeAccounts(Lwallet/core/jni/proto/Solana$StakeAccountValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3313
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->ensureStakeAccountsIsMutable()V

    .line 3314
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearStakeAccounts()V
    .locals 1

    .line 3338
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureStakeAccountsIsMutable()V
    .locals 2

    .line 3292
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3293
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3295
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$WithdrawAllStake;
    .locals 1

    .line 3614
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1

    .line 3423
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$WithdrawAllStake;)Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3426
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3400
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3406
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3364
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3371
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3411
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3418
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3388
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3395
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3351
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3358
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3376
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$WithdrawAllStake;
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

    .line 3383
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$WithdrawAllStake;",
            ">;"
        }
    .end annotation

    .line 3620
    sget-object v0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeStakeAccounts(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3344
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->ensureStakeAccountsIsMutable()V

    .line 3345
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setStakeAccounts(ILwallet/core/jni/proto/Solana$StakeAccountValue;)V
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

    .line 3304
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3305
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->ensureStakeAccountsIsMutable()V

    .line 3306
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3556
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3598
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3592
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3577
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3579
    const-class p2, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    monitor-enter p2

    .line 3580
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3582
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3585
    sput-object p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->PARSER:Lcom/google/protobuf/Parser;

    .line 3587
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

    .line 3574
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stakeAccounts_"

    aput-object v0, p1, p3

    .line 3564
    const-class p3, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 3570
    sget-object p3, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3561
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$WithdrawAllStake$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 3558
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$WithdrawAllStake;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$WithdrawAllStake;-><init>()V

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

.method public getStakeAccounts(I)Lwallet/core/jni/proto/Solana$StakeAccountValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3282
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$StakeAccountValue;

    return-object p1
.end method

.method public getStakeAccountsCount()I
    .locals 1

    .line 3275
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStakeAccountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Solana$StakeAccountValue;",
            ">;"
        }
    .end annotation

    .line 3261
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getStakeAccountsOrBuilder(I)Lwallet/core/jni/proto/Solana$StakeAccountValueOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3289
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Solana$StakeAccountValueOrBuilder;

    return-object p1
.end method

.method public getStakeAccountsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Solana$StakeAccountValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3268
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$WithdrawAllStake;->stakeAccounts_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
