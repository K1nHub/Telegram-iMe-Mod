.class public final Lwallet/core/jni/proto/Polkadot$Era;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$EraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Era"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Era$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Era;",
        "Lwallet/core/jni/proto/Polkadot$Era$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$EraOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLOCK_NUMBER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Era;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERIOD_FIELD_NUMBER:I = 0x2


# instance fields
.field private blockNumber_:J

.field private period_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 463
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Era;-><init>()V

    .line 466
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    .line 467
    const-class v1, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Polkadot$Era;
    .locals 1

    .line 144
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Polkadot$Era;J)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Era;->setBlockNumber(J)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Era;->clearBlockNumber()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Polkadot$Era;J)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Era;->setPeriod(J)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Era;->clearPeriod()V

    return-void
.end method

.method private clearBlockNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 186
    iput-wide v0, p0, Lwallet/core/jni/proto/Polkadot$Era;->blockNumber_:J

    return-void
.end method

.method private clearPeriod()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 224
    iput-wide v0, p0, Lwallet/core/jni/proto/Polkadot$Era;->period_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Era;
    .locals 1

    .line 472
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1

    .line 302
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Era$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Era;)Lwallet/core/jni/proto/Polkadot$Era$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 305
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 279
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 285
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 243
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 250
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 290
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 297
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 267
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 274
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 230
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 237
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 255
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Era;
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

    .line 262
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Era;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Era;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBlockNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    iput-wide p1, p0, Lwallet/core/jni/proto/Polkadot$Era;->blockNumber_:J

    return-void
.end method

.method private setPeriod(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 213
    iput-wide p1, p0, Lwallet/core/jni/proto/Polkadot$Era;->period_:J

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

    .line 413
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 456
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 450
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 435
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Era;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 437
    const-class p2, Lwallet/core/jni/proto/Polkadot$Era;

    monitor-enter p2

    .line 438
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Era;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 440
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 443
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Era;->PARSER:Lcom/google/protobuf/Parser;

    .line 445
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

    .line 432
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "blockNumber_"

    aput-object v0, p1, p3

    const-string p3, "period_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\u0003"

    .line 428
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Era;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Era;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 418
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Era$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Era$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 415
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Era;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Era;-><init>()V

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

.method public getBlockNumber()J
    .locals 2

    .line 163
    iget-wide v0, p0, Lwallet/core/jni/proto/Polkadot$Era;->blockNumber_:J

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    .line 201
    iget-wide v0, p0, Lwallet/core/jni/proto/Polkadot$Era;->period_:J

    return-wide v0
.end method
