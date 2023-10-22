.class public final Lwallet/core/jni/proto/Cosmos$Height;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$HeightOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Height"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Height$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Height;",
        "Lwallet/core/jni/proto/Cosmos$Height$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$HeightOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Height;",
            ">;"
        }
    .end annotation
.end field

.field public static final REVISION_HEIGHT_FIELD_NUMBER:I = 0x2

.field public static final REVISION_NUMBER_FIELD_NUMBER:I = 0x1


# instance fields
.field private revisionHeight_:J

.field private revisionNumber_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1702
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Height;-><init>()V

    .line 1705
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    .line 1706
    const-class v1, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1387
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1800()Lwallet/core/jni/proto/Cosmos$Height;
    .locals 1

    .line 1382
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    return-object v0
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Cosmos$Height;J)V
    .locals 0

    .line 1382
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Height;->setRevisionNumber(J)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 0

    .line 1382
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Height;->clearRevisionNumber()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Cosmos$Height;J)V
    .locals 0

    .line 1382
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Height;->setRevisionHeight(J)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Cosmos$Height;)V
    .locals 0

    .line 1382
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Height;->clearRevisionHeight()V

    return-void
.end method

.method private clearRevisionHeight()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1462
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionHeight_:J

    return-void
.end method

.method private clearRevisionNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1424
    iput-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionNumber_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Height;
    .locals 1

    .line 1711
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1

    .line 1540
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Height$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Height;)Lwallet/core/jni/proto/Cosmos$Height$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1543
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1517
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1523
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1481
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1488
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1528
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1535
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1505
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1512
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1468
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1475
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1493
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Height;
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

    .line 1500
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Height;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Height;",
            ">;"
        }
    .end annotation

    .line 1717
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRevisionHeight(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1451
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionHeight_:J

    return-void
.end method

.method private setRevisionNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1413
    iput-wide p1, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionNumber_:J

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

    .line 1652
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1695
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1689
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1674
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Height;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1676
    const-class p2, Lwallet/core/jni/proto/Cosmos$Height;

    monitor-enter p2

    .line 1677
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Height;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1679
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1682
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Height;->PARSER:Lcom/google/protobuf/Parser;

    .line 1684
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

    .line 1671
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "revisionNumber_"

    aput-object v0, p1, p3

    const-string p3, "revisionHeight_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\u0003"

    .line 1667
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Height;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Height;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1657
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Height$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Height$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 1654
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Height;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Height;-><init>()V

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

.method public getRevisionHeight()J
    .locals 2

    .line 1439
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionHeight_:J

    return-wide v0
.end method

.method public getRevisionNumber()J
    .locals 2

    .line 1401
    iget-wide v0, p0, Lwallet/core/jni/proto/Cosmos$Height;->revisionNumber_:J

    return-wide v0
.end method
