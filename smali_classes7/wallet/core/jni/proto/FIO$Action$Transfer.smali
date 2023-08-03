.class public final Lwallet/core/jni/proto/FIO$Action$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$Action$Transfer;",
        "Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$Action$TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYEE_PUBLIC_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private fee_:J

.field private payeePublicKey_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3595
    new-instance v0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;-><init>()V

    .line 3598
    sput-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    .line 3599
    const-class v1, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3142
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3143
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5100()Lwallet/core/jni/proto/FIO$Action$Transfer;
    .locals 1

    .line 3137
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object v0
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/FIO$Action$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 3137
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$Transfer;->setPayeePublicKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0

    .line 3137
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->clearPayeePublicKey()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/FIO$Action$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3137
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$Action$Transfer;->setPayeePublicKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/FIO$Action$Transfer;J)V
    .locals 0

    .line 3137
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$Transfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0

    .line 3137
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/FIO$Action$Transfer;J)V
    .locals 0

    .line 3137
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/FIO$Action$Transfer;->setFee(J)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/FIO$Action$Transfer;)V
    .locals 0

    .line 3137
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->clearFee()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3247
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->amount_:J

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3285
    iput-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->fee_:J

    return-void
.end method

.method private clearPayeePublicKey()V
    .locals 1

    .line 3195
    invoke-static {}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$Action$Transfer;->getPayeePublicKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$Action$Transfer;
    .locals 1

    .line 3604
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1

    .line 3363
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$Action$Transfer;)Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3366
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3340
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3346
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3304
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3311
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3351
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3358
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3328
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3335
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3291
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3298
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3316
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$Action$Transfer;
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

    .line 3323
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$Action$Transfer;",
            ">;"
        }
    .end annotation

    .line 3610
    sget-object v0, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3236
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->amount_:J

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3274
    iput-wide p1, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->fee_:J

    return-void
.end method

.method private setPayeePublicKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3184
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

    return-void
.end method

.method private setPayeePublicKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3207
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3208
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

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

    .line 3544
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3588
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3582
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3567
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3569
    const-class p2, Lwallet/core/jni/proto/FIO$Action$Transfer;

    monitor-enter p2

    .line 3570
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3572
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3575
    sput-object p1, Lwallet/core/jni/proto/FIO$Action$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 3577
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

    .line 3564
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payeePublicKey_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0003\u0003\u0003"

    .line 3560
    sget-object p3, Lwallet/core/jni/proto/FIO$Action$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3549
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$Action$Transfer$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 3546
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$Action$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$Action$Transfer;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 3224
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->amount_:J

    return-wide v0
.end method

.method public getFee()J
    .locals 2

    .line 3262
    iget-wide v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->fee_:J

    return-wide v0
.end method

.method public getPayeePublicKey()Ljava/lang/String;
    .locals 1

    .line 3157
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayeePublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3170
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$Action$Transfer;->payeePublicKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
