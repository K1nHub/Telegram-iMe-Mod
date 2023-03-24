.class public final Lwallet/core/jni/proto/Polkadot$Balance;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$BalanceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Balance"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Balance$Builder;,
        Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;,
        Lwallet/core/jni/proto/Polkadot$Balance$Transfer;,
        Lwallet/core/jni/proto/Polkadot$Balance$TransferOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Balance;",
        "Lwallet/core/jni/proto/Polkadot$Balance$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$BalanceOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Balance;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFER_FIELD_NUMBER:I = 0x1


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1260
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Balance;-><init>()V

    .line 1263
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    .line 1264
    const-class v1, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 953
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    return-void
.end method

.method static synthetic access$1300()Lwallet/core/jni/proto/Polkadot$Balance;
    .locals 1

    .line 506
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    return-object v0
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Balance;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Polkadot$Balance;Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Balance;->setTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Polkadot$Balance;Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Balance;->mergeTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 0

    .line 506
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Balance;->clearTransfer()V

    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 990
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 1038
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1039
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 1040
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Balance;
    .locals 1

    .line 1269
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    return-object v0
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1025
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1027
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->newBuilder(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;

    move-result-object v0

    .line 1028
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Balance$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1030
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    .line 1032
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1

    .line 1119
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Balance;)Lwallet/core/jni/proto/Polkadot$Balance$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1122
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1096
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1102
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1060
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1067
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1107
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1114
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1084
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1091
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1047
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1054
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1072
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Balance;
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

    .line 1079
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Balance;",
            ">;"
        }
    .end annotation

    .line 1275
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTransfer(Lwallet/core/jni/proto/Polkadot$Balance$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1018
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

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

    .line 1210
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1253
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1247
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1232
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Balance;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1234
    const-class p2, Lwallet/core/jni/proto/Polkadot$Balance;

    monitor-enter p2

    .line 1235
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Balance;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1237
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1240
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Balance;->PARSER:Lcom/google/protobuf/Parser;

    .line 1242
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

    .line 1229
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1218
    const-class p3, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001<\u0000"

    .line 1225
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Balance;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1215
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Balance$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Balance$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 1212
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Balance;-><init>()V

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

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;
    .locals 1

    .line 985
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$Balance$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;
    .locals 2

    .line 1007
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1008
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    return-object v0

    .line 1010
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Balance$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 1000
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Balance;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
