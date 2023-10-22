.class public final Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$BondExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BondExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondExtraOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3125
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;-><init>()V

    .line 3128
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    .line 3129
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2889
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2890
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4400()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
    .locals 1

    .line 2884
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object v0
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2884
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)V
    .locals 0

    .line 2884
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 2928
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
    .locals 1

    .line 3134
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
    .locals 1

    .line 3006
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3009
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2983
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2989
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2947
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2954
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2994
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 3001
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2971
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2978
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2934
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2941
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2959
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;
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

    .line 2966
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;",
            ">;"
        }
    .end annotation

    .line 3140
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2915
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2917
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->value_:Lcom/google/protobuf/ByteString;

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

    .line 3077
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3118
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3112
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3097
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3099
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    monitor-enter p2

    .line 3100
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3102
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3105
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 3107
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

    .line 3094
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 3090
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3082
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 3079
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;-><init>()V

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

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2904
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$BondExtra;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
