.class public final Lwallet/core/jni/proto/Ripple$OperationTrustSet;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationTrustSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationTrustSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSet;",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationTrustSetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

.field public static final LIMIT_AMOUNT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationTrustSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 988
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;-><init>()V

    .line 991
    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    .line 992
    const-class v1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 739
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Lwallet/core/jni/proto/Ripple$OperationTrustSet;
    .locals 1

    .line 734
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object v0
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Ripple$OperationTrustSet;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->setLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Ripple$OperationTrustSet;Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->mergeLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->clearLimitAmount()V

    return-void
.end method

.method private clearLimitAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 783
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationTrustSet;
    .locals 1

    .line 997
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object v0
.end method

.method private mergeLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    if-eqz v0, :cond_0

    .line 772
    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    .line 774
    invoke-static {v0}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->newBuilder(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    goto :goto_0

    .line 776
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1

    .line 862
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$OperationTrustSet;)Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 865
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 839
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 845
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 803
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 810
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 850
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 857
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 827
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 834
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 790
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 797
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 815
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationTrustSet;
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

    .line 822
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationTrustSet;",
            ">;"
        }
    .end annotation

    .line 1003
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLimitAmount(Lwallet/core/jni/proto/Ripple$CurrencyAmount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 761
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 762
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

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

    .line 940
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 981
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 975
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 960
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 962
    const-class p2, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    monitor-enter p2

    .line 963
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 965
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 968
    sput-object p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->PARSER:Lcom/google/protobuf/Parser;

    .line 970
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

    .line 957
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "limitAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 953
    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 945
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$OperationTrustSet$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 942
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationTrustSet;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$OperationTrustSet;-><init>()V

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

.method public getLimitAmount()Lwallet/core/jni/proto/Ripple$CurrencyAmount;
    .locals 1

    .line 755
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Ripple$CurrencyAmount;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasLimitAmount()Z
    .locals 1

    .line 748
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationTrustSet;->limitAmount_:Lwallet/core/jni/proto/Ripple$CurrencyAmount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
