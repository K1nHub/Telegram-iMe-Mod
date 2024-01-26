.class public final Lwallet/core/jni/proto/Hedera$Timestamp;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TimestampOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timestamp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Hedera$Timestamp;",
        "Lwallet/core/jni/proto/Hedera$Timestamp$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TimestampOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

.field public static final NANOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$Timestamp;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private nanos_:I

.field private seconds_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 363
    new-instance v0, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-direct {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;-><init>()V

    .line 366
    sput-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    .line 367
    const-class v1, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Hedera$Timestamp;
    .locals 1

    .line 43
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Hedera$Timestamp;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Hedera$Timestamp;->setSeconds(J)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$Timestamp;->clearSeconds()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Hedera$Timestamp;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$Timestamp;->setNanos(I)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$Timestamp;->clearNanos()V

    return-void
.end method

.method private clearNanos()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->nanos_:I

    return-void
.end method

.method private clearSeconds()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->seconds_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Hedera$Timestamp;
    .locals 1

    .line 372
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
    .locals 1

    .line 201
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Hedera$Timestamp;)Lwallet/core/jni/proto/Hedera$Timestamp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 204
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 178
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 184
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 142
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 149
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 189
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 196
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 166
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 173
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 129
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 136
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 154
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$Timestamp;
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

    .line 161
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$Timestamp;",
            ">;"
        }
    .end annotation

    .line 378
    sget-object v0, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNanos(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    iput p1, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->nanos_:I

    return-void
.end method

.method private setSeconds(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 74
    iput-wide p1, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->seconds_:J

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

    .line 313
    sget-object p2, Lwallet/core/jni/proto/Hedera$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 356
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 350
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 335
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Hedera$Timestamp;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 337
    const-class p2, Lwallet/core/jni/proto/Hedera$Timestamp;

    monitor-enter p2

    .line 338
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Hedera$Timestamp;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 340
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 343
    sput-object p1, Lwallet/core/jni/proto/Hedera$Timestamp;->PARSER:Lcom/google/protobuf/Parser;

    .line 345
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

    .line 332
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "seconds_"

    aput-object v0, p1, p3

    const-string p3, "nanos_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 328
    sget-object p3, Lwallet/core/jni/proto/Hedera$Timestamp;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 318
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;-><init>(Lwallet/core/jni/proto/Hedera$1;)V

    return-object p1

    .line 315
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Hedera$Timestamp;

    invoke-direct {p1}, Lwallet/core/jni/proto/Hedera$Timestamp;-><init>()V

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

.method public getNanos()I
    .locals 1

    .line 100
    iget v0, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->nanos_:I

    return v0
.end method

.method public getSeconds()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lwallet/core/jni/proto/Hedera$Timestamp;->seconds_:J

    return-wide v0
.end method
