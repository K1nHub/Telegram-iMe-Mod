.class public final Lwallet/core/jni/proto/NEAR$Stake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$StakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$Stake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$Stake;",
        "Lwallet/core/jni/proto/NEAR$Stake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$StakeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$Stake;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x2

.field public static final STAKE_FIELD_NUMBER:I = 0x1


# instance fields
.field private publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

.field private stake_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3494
    new-instance v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$Stake;-><init>()V

    .line 3497
    sput-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    .line 3498
    const-class v1, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3120
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3121
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->stake_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5200()Lwallet/core/jni/proto/NEAR$Stake;
    .locals 1

    .line 3115
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    return-object v0
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/NEAR$Stake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3115
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->setStake(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 0

    .line 3115
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Stake;->clearStake()V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/NEAR$Stake;Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 0

    .line 3115
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/NEAR$Stake;Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 0

    .line 3115
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Stake;->mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 0

    .line 3115
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Stake;->clearPublicKey()V

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    const/4 v0, 0x0

    .line 3224
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    return-void
.end method

.method private clearStake()V
    .locals 1

    .line 3159
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Stake;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$Stake;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$Stake;->getStake()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->stake_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$Stake;
    .locals 1

    .line 3503
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    return-object v0
.end method

.method private mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3208
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-eqz v0, :cond_0

    .line 3209
    invoke-static {}, Lwallet/core/jni/proto/NEAR$PublicKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3210
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    .line 3211
    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->newBuilder(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$PublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey;

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    goto :goto_0

    .line 3213
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1

    .line 3303
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$Stake;)Lwallet/core/jni/proto/NEAR$Stake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3306
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3280
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3286
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3244
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3251
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3291
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3298
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3268
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3275
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3231
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3238
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3256
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Stake;
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

    .line 3263
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$Stake;",
            ">;"
        }
    .end annotation

    .line 3509
    sget-object v0, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3195
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    return-void
.end method

.method private setStake(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3148
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Stake;->stake_:Lcom/google/protobuf/ByteString;

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

    .line 3445
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3487
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3481
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3466
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$Stake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3468
    const-class p2, Lwallet/core/jni/proto/NEAR$Stake;

    monitor-enter p2

    .line 3469
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$Stake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3471
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3474
    sput-object p1, Lwallet/core/jni/proto/NEAR$Stake;->PARSER:Lcom/google/protobuf/Parser;

    .line 3476
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

    .line 3463
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stake_"

    aput-object v0, p1, p3

    const-string p3, "publicKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\t"

    .line 3459
    sget-object p3, Lwallet/core/jni/proto/NEAR$Stake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3450
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$Stake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$Stake$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 3447
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$Stake;-><init>()V

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

.method public getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;
    .locals 1

    .line 3184
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NEAR$PublicKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStake()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3135
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->stake_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3173
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Stake;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
