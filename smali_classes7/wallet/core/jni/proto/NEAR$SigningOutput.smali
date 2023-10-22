.class public final Lwallet/core/jni/proto/NEAR$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$SigningOutput;",
        "Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

.field public static final HASH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNED_TRANSACTION_FIELD_NUMBER:I = 0x1


# instance fields
.field private hash_:Lcom/google/protobuf/ByteString;

.field private signedTransaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7098
    new-instance v0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;-><init>()V

    .line 7101
    sput-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    .line 7102
    const-class v1, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6781
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6782
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->signedTransaction_:Lcom/google/protobuf/ByteString;

    .line 6783
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$12400()Lwallet/core/jni/proto/NEAR$SigningOutput;
    .locals 1

    .line 6776
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object v0
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/NEAR$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningOutput;->setSignedTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/NEAR$SigningOutput;)V
    .locals 0

    .line 6776
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->clearSignedTransaction()V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/NEAR$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$SigningOutput;->setHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/NEAR$SigningOutput;)V
    .locals 0

    .line 6776
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->clearHash()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 6860
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSignedTransaction()V
    .locals 1

    .line 6821
    invoke-static {}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$SigningOutput;->getSignedTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->signedTransaction_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$SigningOutput;
    .locals 1

    .line 7107
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1

    .line 6938
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$SigningOutput;)Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6941
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6915
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6921
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6879
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6886
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6926
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6933
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6903
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6910
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6866
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6873
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6891
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$SigningOutput;
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

    .line 6898
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 7113
    sget-object v0, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6849
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSignedTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6810
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->signedTransaction_:Lcom/google/protobuf/ByteString;

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

    .line 7049
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7091
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7085
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7070
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7072
    const-class p2, Lwallet/core/jni/proto/NEAR$SigningOutput;

    monitor-enter p2

    .line 7073
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7075
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7078
    sput-object p1, Lwallet/core/jni/proto/NEAR$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 7080
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

    .line 7067
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signedTransaction_"

    aput-object v0, p1, p3

    const-string p3, "hash_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\n"

    .line 7063
    sget-object p3, Lwallet/core/jni/proto/NEAR$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7054
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 7051
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$SigningOutput;-><init>()V

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

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6836
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignedTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6797
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$SigningOutput;->signedTransaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
