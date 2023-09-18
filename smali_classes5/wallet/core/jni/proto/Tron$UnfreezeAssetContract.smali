.class public final Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnfreezeAssetContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnfreezeAssetContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnfreezeAssetContractOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ownerAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7105
    new-instance v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;-><init>()V

    .line 7108
    sput-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    .line 7109
    const-class v1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6812
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 6813
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11500()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
    .locals 1

    .line 6807
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object v0
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;Ljava/lang/String;)V
    .locals 0

    .line 6807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V
    .locals 0

    .line 6807
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6807
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 6865
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
    .locals 1

    .line 7114
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    .locals 1

    .line 6957
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6960
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6934
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6940
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6898
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6905
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6945
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6952
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6922
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6929
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6885
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6892
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6910
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
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

    .line 6917
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;",
            ">;"
        }
    .end annotation

    .line 7120
    sget-object v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

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

    .line 6852
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6854
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

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

    .line 6877
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6878
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

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

    .line 7057
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7098
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7092
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7077
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7079
    const-class p2, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    monitor-enter p2

    .line 7080
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7082
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7085
    sput-object p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 7087
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

    .line 7074
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "ownerAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 7070
    sget-object p3, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7062
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 7059
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;-><init>()V

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

    .line 6827
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6840
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
