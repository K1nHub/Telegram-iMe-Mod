.class public final Lwallet/core/jni/proto/Stellar$MemoId;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$MemoIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$MemoId$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$MemoId;",
        "Lwallet/core/jni/proto/Stellar$MemoId$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$MemoIdOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4328
    new-instance v0, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$MemoId;-><init>()V

    .line 4331
    sput-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    .line 4332
    const-class v1, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$6400()Lwallet/core/jni/proto/Stellar$MemoId;
    .locals 1

    .line 4113
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    return-object v0
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Stellar$MemoId;J)V
    .locals 0

    .line 4113
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Stellar$MemoId;->setId(J)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Stellar$MemoId;)V
    .locals 0

    .line 4113
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$MemoId;->clearId()V

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4143
    iput-wide v0, p0, Lwallet/core/jni/proto/Stellar$MemoId;->id_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$MemoId;
    .locals 1

    .line 4337
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$MemoId$Builder;
    .locals 1

    .line 4221
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$MemoId$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$MemoId;)Lwallet/core/jni/proto/Stellar$MemoId$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4224
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4198
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4204
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4162
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4169
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4209
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4216
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4186
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4193
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4149
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4156
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4174
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$MemoId;
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

    .line 4181
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$MemoId;",
            ">;"
        }
    .end annotation

    .line 4343
    sget-object v0, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4136
    iput-wide p1, p0, Lwallet/core/jni/proto/Stellar$MemoId;->id_:J

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

    .line 4280
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4321
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4315
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4300
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoId;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4302
    const-class p2, Lwallet/core/jni/proto/Stellar$MemoId;

    monitor-enter p2

    .line 4303
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoId;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4305
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4308
    sput-object p1, Lwallet/core/jni/proto/Stellar$MemoId;->PARSER:Lcom/google/protobuf/Parser;

    .line 4310
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

    .line 4297
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "id_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0002"

    .line 4293
    sget-object p3, Lwallet/core/jni/proto/Stellar$MemoId;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4285
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoId$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$MemoId$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 4282
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$MemoId;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$MemoId;-><init>()V

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

.method public getId()J
    .locals 2

    .line 4128
    iget-wide v0, p0, Lwallet/core/jni/proto/Stellar$MemoId;->id_:J

    return-wide v0
.end method
