.class public final Lwallet/core/jni/proto/Binance$TimeLockOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeLockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeLockOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TimeLockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeLockOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeLockOrder;",
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

.field private lockTime_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14670
    new-instance v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;-><init>()V

    .line 14673
    sput-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    .line 14674
    const-class v1, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13926
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 13927
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

    .line 13928
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$25200()Lwallet/core/jni/proto/Binance$TimeLockOrder;
    .locals 1

    .line 13920
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object v0
.end method

.method static synthetic access$25300(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->setFromAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25400(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 13920
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$25500(Lwallet/core/jni/proto/Binance$TimeLockOrder;Ljava/lang/String;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$25600(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 13920
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->clearDescription()V

    return-void
.end method

.method static synthetic access$25700(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25800(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$25900(Lwallet/core/jni/proto/Binance$TimeLockOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$26000(Lwallet/core/jni/proto/Binance$TimeLockOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$26100(Lwallet/core/jni/proto/Binance$TimeLockOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->addAllAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$26200(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 13920
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->clearAmount()V

    return-void
.end method

.method static synthetic access$26300(Lwallet/core/jni/proto/Binance$TimeLockOrder;I)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->removeAmount(I)V

    return-void
.end method

.method static synthetic access$26400(Lwallet/core/jni/proto/Binance$TimeLockOrder;J)V
    .locals 0

    .line 13920
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->setLockTime(J)V

    return-void
.end method

.method static synthetic access$26500(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 13920
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->clearLockTime()V

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

    .line 14148
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->ensureAmountIsMutable()V

    .line 14149
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14135
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14136
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->ensureAmountIsMutable()V

    .line 14137
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14123
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->ensureAmountIsMutable()V

    .line 14124
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 14160
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 14019
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 13966
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearLockTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14209
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->lockTime_:J

    return-void
.end method

.method private ensureAmountIsMutable()V
    .locals 2

    .line 14094
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 14095
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14097
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeLockOrder;
    .locals 1

    .line 14679
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1

    .line 14287
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 14290
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14264
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14270
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14228
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14235
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14275
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14282
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14252
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14259
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14215
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14222
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14240
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeLockOrder;
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

    .line 14247
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeLockOrder;",
            ">;"
        }
    .end annotation

    .line 14685
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

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

    .line 14170
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->ensureAmountIsMutable()V

    .line 14171
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14111
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->ensureAmountIsMutable()V

    .line 14112
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14008
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

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

    .line 14031
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 14032
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

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

    .line 13953
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13955
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

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

    .line 14198
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->lockTime_:J

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

    .line 14617
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14663
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 14657
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14642
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 14644
    const-class p2, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    monitor-enter p2

    .line 14645
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 14647
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 14650
    sput-object p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 14652
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

    .line 14639
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 14625
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\n\u0002\u0208\u0003\u001b\u0004\u0002"

    .line 14635
    sget-object p3, Lwallet/core/jni/proto/Binance$TimeLockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14622
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 14619
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TimeLockOrder;-><init>()V

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

    .line 14080
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 14069
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14047
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14091
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 14058
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 13981
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13994
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13942
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getLockTime()J
    .locals 2

    .line 14186
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeLockOrder;->lockTime_:J

    return-wide v0
.end method
