.class public final Lwallet/core/jni/proto/NEAR$DeleteAccount;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$DeleteAccountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeleteAccount"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$DeleteAccount;",
        "Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$DeleteAccountOrBuilder;"
    }
.end annotation


# static fields
.field public static final BENEFICIARY_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$DeleteAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private beneficiaryId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4489
    new-instance v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;-><init>()V

    .line 4492
    sput-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    .line 4493
    const-class v1, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4236
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4237
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7200()Lwallet/core/jni/proto/NEAR$DeleteAccount;
    .locals 1

    .line 4231
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object v0
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/NEAR$DeleteAccount;Ljava/lang/String;)V
    .locals 0

    .line 4231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->setBeneficiaryId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V
    .locals 0

    .line 4231
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->clearBeneficiaryId()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/NEAR$DeleteAccount;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4231
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->setBeneficiaryIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearBeneficiaryId()V
    .locals 1

    .line 4273
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteAccount;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getBeneficiaryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteAccount;
    .locals 1

    .line 4498
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    .locals 1

    .line 4361
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$DeleteAccount;)Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4364
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4338
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4344
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4302
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4309
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4349
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4356
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4326
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4333
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4289
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4296
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4314
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$DeleteAccount;
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

    .line 4321
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$DeleteAccount;",
            ">;"
        }
    .end annotation

    .line 4504
    sget-object v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBeneficiaryId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4266
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

    return-void
.end method

.method private setBeneficiaryIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4281
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4282
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

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

    .line 4441
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4482
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4476
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4461
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4463
    const-class p2, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    monitor-enter p2

    .line 4464
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4466
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4469
    sput-object p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;->PARSER:Lcom/google/protobuf/Parser;

    .line 4471
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

    .line 4458
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "beneficiaryId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 4454
    sget-object p3, Lwallet/core/jni/proto/NEAR$DeleteAccount;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4446
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 4443
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$DeleteAccount;-><init>()V

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

.method public getBeneficiaryId()Ljava/lang/String;
    .locals 1

    .line 4247
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

    return-object v0
.end method

.method public getBeneficiaryIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4256
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$DeleteAccount;->beneficiaryId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method