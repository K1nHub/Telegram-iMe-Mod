.class public final Lwallet/core/jni/proto/FIO$NewFundsContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$NewFundsContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewFundsContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$NewFundsContent;",
        "Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$NewFundsContentOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final COIN_SYMBOL_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

.field public static final HASH_FIELD_NUMBER:I = 0x5

.field public static final MEMO_FIELD_NUMBER:I = 0x4

.field public static final OFFLINE_URL_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$NewFundsContent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYEE_PUBLIC_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Ljava/lang/String;

.field private coinSymbol_:Ljava/lang/String;

.field private hash_:Ljava/lang/String;

.field private memo_:Ljava/lang/String;

.field private offlineUrl_:Ljava/lang/String;

.field private payeePublicAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1638
    new-instance v0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;-><init>()V

    .line 1641
    sput-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    .line 1642
    const-class v1, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 654
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 655
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

    .line 656
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    .line 657
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    .line 658
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    .line 659
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    .line 660
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearPayeePublicAddress()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setPayeePublicAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearAmount()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setCoinSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearCoinSymbol()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearMemo()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearHash()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setHashBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setOfflineUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/FIO$NewFundsContent;)V
    .locals 0

    .line 649
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->clearOfflineUrl()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/FIO$NewFundsContent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setOfflineUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800()Lwallet/core/jni/proto/FIO$NewFundsContent;
    .locals 1

    .line 649
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object v0
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/FIO$NewFundsContent;Ljava/lang/String;)V
    .locals 0

    .line 649
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;->setPayeePublicAddress(Ljava/lang/String;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 779
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearCoinSymbol()V
    .locals 1

    .line 846
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getCoinSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 980
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getHash()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 913
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearOfflineUrl()V
    .locals 1

    .line 1047
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getOfflineUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearPayeePublicAddress()V
    .locals 1

    .line 712
    invoke-static {}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$NewFundsContent;->getPayeePublicAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$NewFundsContent;
    .locals 1

    .line 1647
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1

    .line 1139
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$NewFundsContent;)Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1142
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1116
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1122
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1080
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1087
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1127
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1134
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1104
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1111
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1067
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1074
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1092
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$NewFundsContent;
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

    .line 1099
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$NewFundsContent;",
            ">;"
        }
    .end annotation

    .line 1653
    sget-object v0, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 768
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 791
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 792
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setCoinSymbol(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    return-void
.end method

.method private setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 858
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 859
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    return-void
.end method

.method private setHash(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 967
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setHashBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 992
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 993
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    return-void
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 900
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 902
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 925
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 926
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setOfflineUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1034
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1036
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    return-void
.end method

.method private setOfflineUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1059
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1060
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPayeePublicAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 701
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

    return-void
.end method

.method private setPayeePublicAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 724
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 725
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

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

    .line 1584
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1631
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1625
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1610
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$NewFundsContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1612
    const-class p2, Lwallet/core/jni/proto/FIO$NewFundsContent;

    monitor-enter p2

    .line 1613
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$NewFundsContent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1615
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1618
    sput-object p1, Lwallet/core/jni/proto/FIO$NewFundsContent;->PARSER:Lcom/google/protobuf/Parser;

    .line 1620
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

    .line 1607
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payeePublicAddress_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "coinSymbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "hash_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "offlineUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208"

    .line 1603
    sget-object p3, Lwallet/core/jni/proto/FIO$NewFundsContent;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1589
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$NewFundsContent$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 1586
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$NewFundsContent;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$NewFundsContent;-><init>()V

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

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 741
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 754
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbol()Ljava/lang/String;
    .locals 1

    .line 808
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getCoinSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 821
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->coinSymbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 942
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 955
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->hash_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 875
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 888
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineUrl()Ljava/lang/String;
    .locals 1

    .line 1009
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1022
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->offlineUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayeePublicAddress()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayeePublicAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 687
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$NewFundsContent;->payeePublicAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
