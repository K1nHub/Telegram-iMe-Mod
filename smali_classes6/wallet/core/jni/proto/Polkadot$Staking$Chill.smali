.class public final Lwallet/core/jni/proto/Polkadot$Staking$Chill;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$ChillOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chill"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Chill;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$ChillOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Chill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4616
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Chill;-><init>()V

    .line 4619
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    .line 4620
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6700()Lwallet/core/jni/proto/Polkadot$Staking$Chill;
    .locals 1

    .line 4458
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object v0
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Chill;
    .locals 1

    .line 4625
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;
    .locals 1

    .line 4540
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Chill;)Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4543
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4517
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4523
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4481
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4488
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4528
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4535
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4505
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4512
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4468
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4475
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4493
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Chill;
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

    .line 4500
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Chill;",
            ">;"
        }
    .end annotation

    .line 4631
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 4571
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4609
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4603
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4588
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4590
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    monitor-enter p2

    .line 4591
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4593
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4596
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->PARSER:Lcom/google/protobuf/Parser;

    .line 4598
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

    .line 4585
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    return-object p1

    :pswitch_4
    const-string p1, "\u0000\u0000"

    .line 4581
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Chill;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-static {p3, p1, p2}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4576
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;

    invoke-direct {p1, p2}, Lwallet/core/jni/proto/Polkadot$Staking$Chill$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 4573
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Chill;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$Chill;-><init>()V

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
