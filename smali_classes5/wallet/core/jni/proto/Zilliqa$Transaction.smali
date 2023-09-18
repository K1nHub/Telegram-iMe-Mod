.class public final Lwallet/core/jni/proto/Zilliqa$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;,
        Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;,
        Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;,
        Lwallet/core/jni/proto/Zilliqa$Transaction$RawOrBuilder;,
        Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;,
        Lwallet/core/jni/proto/Zilliqa$Transaction$TransferOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction;",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAW_TRANSACTION_FIELD_NUMBER:I = 0x2

.field public static final TRANSFER_FIELD_NUMBER:I = 0x1


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1207
    new-instance v0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;-><init>()V

    .line 1210
    sput-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    .line 1211
    const-class v1, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 798
    iput v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    return-void
.end method

.method static synthetic access$1200()Lwallet/core/jni/proto/Zilliqa$Transaction;
    .locals 1

    .line 46
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object v0
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->setTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->mergeTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->clearTransfer()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->setRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Zilliqa$Transaction;Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;->mergeRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->clearRawTransaction()V

    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 837
    iput v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 838
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearRawTransaction()V
    .locals 2

    .line 935
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 936
    iput v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 937
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 885
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 886
    iput v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 887
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction;
    .locals 1

    .line 1216
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object v0
.end method

.method private mergeRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 922
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    .line 923
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 924
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->newBuilder(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;

    move-result-object v0

    .line 925
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 927
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    .line 929
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 872
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    .line 873
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 874
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->newBuilder(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;

    move-result-object v0

    .line 875
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 877
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    .line 879
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1

    .line 1016
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Zilliqa$Transaction;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1019
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 993
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 999
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 957
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 964
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 1004
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 1011
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 981
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 988
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 944
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 951
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 969
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$Transaction;
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

    .line 976
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$Transaction;",
            ">;"
        }
    .end annotation

    .line 1222
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRawTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 913
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 914
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 915
    iput p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 863
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 865
    iput p1, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

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

    .line 1155
    sget-object p2, Lwallet/core/jni/proto/Zilliqa$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1200
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1194
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1179
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1181
    const-class p2, Lwallet/core/jni/proto/Zilliqa$Transaction;

    monitor-enter p2

    .line 1182
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1184
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1187
    sput-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 1189
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

    .line 1176
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1163
    const-class p3, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    .line 1172
    sget-object p3, Lwallet/core/jni/proto/Zilliqa$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1160
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Zilliqa$1;)V

    return-object p1

    .line 1157
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Zilliqa$Transaction;-><init>()V

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

.method public getMessageOneofCase()Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
    .locals 1

    .line 832
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getRawTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;
    .locals 2

    .line 904
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 905
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    return-object v0

    .line 907
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Raw;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;
    .locals 2

    .line 854
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    return-object v0

    .line 857
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasRawTransaction()Z
    .locals 2

    .line 897
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 847
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction;->messageOneofCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
