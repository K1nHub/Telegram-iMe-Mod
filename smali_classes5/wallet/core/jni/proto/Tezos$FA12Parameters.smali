.class public final Lwallet/core/jni/proto/Tezos$FA12Parameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$FA12ParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FA12Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$FA12Parameters;",
        "Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$FA12ParametersOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

.field public static final ENTRYPOINT_FIELD_NUMBER:I = 0x1

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$FA12Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x3

.field public static final VALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private entrypoint_:Ljava/lang/String;

.field private from_:Ljava/lang/String;

.field private to_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3463
    new-instance v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;-><init>()V

    .line 3466
    sput-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    .line 3467
    const-class v1, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2920
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    .line 2921
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    .line 2922
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    .line 2923
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5000()Lwallet/core/jni/proto/Tezos$FA12Parameters;
    .locals 1

    .line 2914
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object v0
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setEntrypoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 2914
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->clearEntrypoint()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setEntrypointBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 2914
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->clearFrom()V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setFromBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 2914
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->clearTo()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Tezos$FA12Parameters;Ljava/lang/String;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Tezos$FA12Parameters;)V
    .locals 0

    .line 2914
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->clearValue()V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Tezos$FA12Parameters;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2914
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->setValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEntrypoint()V
    .locals 1

    .line 2959
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getEntrypoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 3006
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 3053
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 3100
    invoke-static {}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$FA12Parameters;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$FA12Parameters;
    .locals 1

    .line 3472
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1

    .line 3188
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$FA12Parameters;)Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3191
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3165
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3171
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3129
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3136
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3176
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3183
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3153
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3160
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3116
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3123
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3141
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$FA12Parameters;
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

    .line 3148
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$FA12Parameters;",
            ">;"
        }
    .end annotation

    .line 3478
    sget-object v0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEntrypoint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2952
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private setEntrypointBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2967
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2968
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    return-void
.end method

.method private setFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2999
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    return-void
.end method

.method private setFromBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3014
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3015
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3044
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3046
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
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

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    return-void
.end method

.method private setValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3091
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3093
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

    return-void
.end method

.method private setValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3108
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3109
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

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

    .line 3411
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3456
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3450
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3435
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3437
    const-class p2, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    monitor-enter p2

    .line 3438
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3440
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3443
    sput-object p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 3445
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

    .line 3432
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "entrypoint_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208"

    .line 3428
    sget-object p3, Lwallet/core/jni/proto/Tezos$FA12Parameters;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3416
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$FA12Parameters$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 3413
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$FA12Parameters;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$FA12Parameters;-><init>()V

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

.method public getEntrypoint()Ljava/lang/String;
    .locals 1

    .line 2933
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    return-object v0
.end method

.method public getEntrypointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2942
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->entrypoint_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 2980
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2989
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->from_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 3027
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3036
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 3074
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3083
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$FA12Parameters;->value_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
