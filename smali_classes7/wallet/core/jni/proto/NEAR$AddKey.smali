.class public final Lwallet/core/jni/proto/NEAR$AddKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$AddKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$AddKey;",
        "Lwallet/core/jni/proto/NEAR$AddKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$AddKeyOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCESS_KEY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$AddKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

.field private publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3894
    new-instance v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$AddKey;-><init>()V

    .line 3897
    sput-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    .line 3898
    const-class v1, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3551
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5900()Lwallet/core/jni/proto/NEAR$AddKey;
    .locals 1

    .line 3546
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    return-object v0
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AddKey;->clearPublicKey()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->setAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->mergeAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 0

    .line 3546
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AddKey;->clearAccessKey()V

    return-void
.end method

.method private clearAccessKey()V
    .locals 1

    const/4 v0, 0x0

    .line 3641
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    const/4 v0, 0x0

    .line 3595
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$AddKey;
    .locals 1

    .line 3903
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    return-object v0
.end method

.method private mergeAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3628
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3629
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    if-eqz v0, :cond_0

    .line 3630
    invoke-static {}, Lwallet/core/jni/proto/NEAR$AccessKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$AccessKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3631
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    .line 3632
    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;->newBuilder(Lwallet/core/jni/proto/NEAR$AccessKey;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$AccessKey;

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    goto :goto_0

    .line 3634
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    :goto_0
    return-void
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

    .line 3582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3583
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-eqz v0, :cond_0

    .line 3584
    invoke-static {}, Lwallet/core/jni/proto/NEAR$PublicKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3585
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    .line 3586
    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$PublicKey;->newBuilder(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$PublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey;

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    goto :goto_0

    .line 3588
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1

    .line 3720
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$AddKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3723
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3697
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3703
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3661
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3668
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3708
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3715
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3685
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3692
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3648
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3655
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3673
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AddKey;
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

    .line 3680
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$AddKey;",
            ">;"
        }
    .end annotation

    .line 3909
    sget-object v0, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3620
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    return-void
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

    .line 3573
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3574
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

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

    .line 3845
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3887
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3881
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3866
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$AddKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3868
    const-class p2, Lwallet/core/jni/proto/NEAR$AddKey;

    monitor-enter p2

    .line 3869
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$AddKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3871
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3874
    sput-object p1, Lwallet/core/jni/proto/NEAR$AddKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 3876
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

    .line 3863
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "publicKey_"

    aput-object v0, p1, p3

    const-string p3, "accessKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 3859
    sget-object p3, Lwallet/core/jni/proto/NEAR$AddKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3850
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$AddKey$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$AddKey$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 3847
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$AddKey;-><init>()V

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

.method public getAccessKey()Lwallet/core/jni/proto/NEAR$AccessKey;
    .locals 1

    .line 3613
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NEAR$AccessKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$AccessKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;
    .locals 1

    .line 3567
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NEAR$PublicKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAccessKey()Z
    .locals 1

    .line 3606
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->accessKey_:Lwallet/core/jni/proto/NEAR$AccessKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3560
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AddKey;->publicKey_:Lwallet/core/jni/proto/NEAR$PublicKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
