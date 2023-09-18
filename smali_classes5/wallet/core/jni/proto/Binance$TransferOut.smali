.class public final Lwallet/core/jni/proto/Binance$TransferOut;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TransferOutOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferOut"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TransferOut;",
        "Lwallet/core/jni/proto/Binance$TransferOut$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TransferOutOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

.field public static final EXPIRE_TIME_FIELD_NUMBER:I = 0x4

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TransferOut;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

.field private expireTime_:J

.field private from_:Lcom/google/protobuf/ByteString;

.field private to_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12189
    new-instance v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TransferOut;-><init>()V

    .line 12192
    sput-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    .line 12193
    const-class v1, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11654
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 11655
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->from_:Lcom/google/protobuf/ByteString;

    .line 11656
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->to_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$20300()Lwallet/core/jni/proto/Binance$TransferOut;
    .locals 1

    .line 11649
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    return-object v0
.end method

.method static synthetic access$20400(Lwallet/core/jni/proto/Binance$TransferOut;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 11649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20500(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 11649
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TransferOut;->clearFrom()V

    return-void
.end method

.method static synthetic access$20600(Lwallet/core/jni/proto/Binance$TransferOut;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 11649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->setTo(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20700(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 11649
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TransferOut;->clearTo()V

    return-void
.end method

.method static synthetic access$20800(Lwallet/core/jni/proto/Binance$TransferOut;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 11649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$20900(Lwallet/core/jni/proto/Binance$TransferOut;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 11649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TransferOut;->mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$21000(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 11649
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TransferOut;->clearAmount()V

    return-void
.end method

.method static synthetic access$21100(Lwallet/core/jni/proto/Binance$TransferOut;J)V
    .locals 0

    .line 11649
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TransferOut;->setExpireTime(J)V

    return-void
.end method

.method static synthetic access$21200(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 11649
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TransferOut;->clearExpireTime()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 11798
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private clearExpireTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11837
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->expireTime_:J

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 11694
    invoke-static {}, Lwallet/core/jni/proto/Binance$TransferOut;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 11733
    invoke-static {}, Lwallet/core/jni/proto/Binance$TransferOut;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->to_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TransferOut;
    .locals 1

    .line 12198
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    return-object v0
.end method

.method private mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11782
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    .line 11783
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11784
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 11785
    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    goto :goto_0

    .line 11787
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1

    .line 11915
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TransferOut;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 11918
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11892
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11898
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11856
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11863
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11903
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11910
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11880
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11887
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11843
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11850
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11868
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TransferOut;
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

    .line 11875
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TransferOut;",
            ">;"
        }
    .end annotation

    .line 12204
    sget-object v0, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11769
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private setExpireTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11826
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->expireTime_:J

    return-void
.end method

.method private setFrom(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11681
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11683
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTo(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11720
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11722
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TransferOut;->to_:Lcom/google/protobuf/ByteString;

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

    .line 12137
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 12176
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12161
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TransferOut;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 12163
    const-class p2, Lwallet/core/jni/proto/Binance$TransferOut;

    monitor-enter p2

    .line 12164
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TransferOut;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 12166
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12169
    sput-object p1, Lwallet/core/jni/proto/Binance$TransferOut;->PARSER:Lcom/google/protobuf/Parser;

    .line 12171
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

    .line 12158
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "expireTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004\u0002"

    .line 12154
    sget-object p3, Lwallet/core/jni/proto/Binance$TransferOut;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12142
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TransferOut$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TransferOut$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 12139
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TransferOut;-><init>()V

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

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 11758
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 11814
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->expireTime_:J

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11670
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11709
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->to_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 11747
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TransferOut;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
