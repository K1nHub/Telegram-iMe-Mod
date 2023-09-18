.class public final Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithdrawExpireUnfreezeContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContractOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ownerAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4481
    new-instance v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;-><init>()V

    .line 4484
    sput-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    .line 4485
    const-class v1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4188
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4189
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7100()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
    .locals 1

    .line 4183
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object v0
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;Ljava/lang/String;)V
    .locals 0

    .line 4183
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V
    .locals 0

    .line 4183
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4183
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 4241
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
    .locals 1

    .line 4490
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    .locals 1

    .line 4333
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4336
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4310
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4316
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4274
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4281
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4321
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4328
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4298
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4305
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4261
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4268
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4286
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
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

    .line 4293
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;",
            ">;"
        }
    .end annotation

    .line 4496
    sget-object v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4230
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4253
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4254
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

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

    .line 4433
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4474
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4468
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4453
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4455
    const-class p2, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    monitor-enter p2

    .line 4456
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4458
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4461
    sput-object p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 4463
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

    .line 4450
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "ownerAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 4446
    sget-object p3, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4438
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 4435
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;-><init>()V

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

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 4203
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4216
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
