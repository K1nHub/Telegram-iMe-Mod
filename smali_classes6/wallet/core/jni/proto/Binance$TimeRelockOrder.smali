.class public final Lwallet/core/jni/proto/Binance$TimeRelockOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeRelockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRelockOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeRelockOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x3

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeRelockOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Ljava/lang/String;

.field private fromAddress_:Lcom/google/protobuf/ByteString;

.field private id_:J

.field private lockTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15605
    new-instance v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;-><init>()V

    .line 15608
    sput-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    .line 15609
    const-class v1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14781
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 14782
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 14783
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    .line 14784
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$26700()Lwallet/core/jni/proto/Binance$TimeRelockOrder;
    .locals 1

    .line 14776
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object v0
.end method

.method static synthetic access$26800(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setFromAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$26900(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 14776
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$27000(Lwallet/core/jni/proto/Binance$TimeRelockOrder;J)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setId(J)V

    return-void
.end method

.method static synthetic access$27100(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 14776
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->clearId()V

    return-void
.end method

.method static synthetic access$27200(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Ljava/lang/String;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27300(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 14776
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->clearDescription()V

    return-void
.end method

.method static synthetic access$27400(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$27500(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$27600(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$27700(Lwallet/core/jni/proto/Binance$TimeRelockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$27800(Lwallet/core/jni/proto/Binance$TimeRelockOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->addAllAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$27900(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 14776
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->clearAmount()V

    return-void
.end method

.method static synthetic access$28000(Lwallet/core/jni/proto/Binance$TimeRelockOrder;I)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->removeAmount(I)V

    return-void
.end method

.method static synthetic access$28100(Lwallet/core/jni/proto/Binance$TimeRelockOrder;J)V
    .locals 0

    .line 14776
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->setLockTime(J)V

    return-void
.end method

.method static synthetic access$28200(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 14776
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->clearLockTime()V

    return-void
.end method

.method private addAllAmount(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)V"
        }
    .end annotation

    .line 15042
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->ensureAmountIsMutable()V

    .line 15043
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 15029
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15030
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->ensureAmountIsMutable()V

    .line 15031
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15016
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15017
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->ensureAmountIsMutable()V

    .line 15018
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 15054
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 14913
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 14822
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14860
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->id_:J

    return-void
.end method

.method private clearLockTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 15103
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->lockTime_:J

    return-void
.end method

.method private ensureAmountIsMutable()V
    .locals 2

    .line 14988
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14989
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14991
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeRelockOrder;
    .locals 1

    .line 15614
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1

    .line 15181
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 15184
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15158
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15164
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15122
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15129
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15169
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15176
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15146
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15153
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15109
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15116
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15134
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeRelockOrder;
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

    .line 15141
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeRelockOrder;",
            ">;"
        }
    .end annotation

    .line 15620
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 15064
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->ensureAmountIsMutable()V

    .line 15065
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 15004
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15005
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->ensureAmountIsMutable()V

    .line 15006
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14902
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14925
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 14926
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    return-void
.end method

.method private setFromAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14811
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14849
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->id_:J

    return-void
.end method

.method private setLockTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15092
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->lockTime_:J

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

    .line 15551
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15598
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 15592
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15577
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 15579
    const-class p2, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    monitor-enter p2

    .line 15580
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 15582
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 15585
    sput-object p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 15587
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

    .line 15574
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 15559
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\n\u0002\u0002\u0003\u0208\u0004\u001b\u0005\u0002"

    .line 15570
    sget-object p3, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15556
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 15553
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;-><init>()V

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

.method public getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14974
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 14963
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 14941
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAmountOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14985
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;

    return-object p1
.end method

.method public getAmountOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 14952
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 14875
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14888
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14798
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 14837
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->id_:J

    return-wide v0
.end method

.method public getLockTime()J
    .locals 2

    .line 15080
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->lockTime_:J

    return-wide v0
.end method
