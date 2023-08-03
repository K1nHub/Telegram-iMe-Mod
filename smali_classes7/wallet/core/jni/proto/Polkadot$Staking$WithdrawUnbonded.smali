.class public final Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbondedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithdrawUnbonded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbondedOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLASHING_SPANS_FIELD_NUMBER:I = 0x1


# instance fields
.field private slashingSpans_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3657
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;-><init>()V

    .line 3660
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    .line 3661
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3447
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5200()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
    .locals 1

    .line 3442
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object v0
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;I)V
    .locals 0

    .line 3442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->setSlashingSpans(I)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)V
    .locals 0

    .line 3442
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->clearSlashingSpans()V

    return-void
.end method

.method private clearSlashingSpans()V
    .locals 1

    const/4 v0, 0x0

    .line 3472
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->slashingSpans_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
    .locals 1

    .line 3666
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
    .locals 1

    .line 3550
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3553
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3527
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3533
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3491
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3498
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3538
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3545
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3515
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3522
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3478
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3485
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3503
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;
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

    .line 3510
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;",
            ">;"
        }
    .end annotation

    .line 3672
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSlashingSpans(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3465
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->slashingSpans_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 3609
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3644
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3629
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3631
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    monitor-enter p2

    .line 3632
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3634
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3637
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->PARSER:Lcom/google/protobuf/Parser;

    .line 3639
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

    .line 3626
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "slashingSpans_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    .line 3622
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3614
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 3611
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;-><init>()V

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

.method public getSlashingSpans()I
    .locals 1

    .line 3457
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$WithdrawUnbonded;->slashingSpans_:I

    return v0
.end method
