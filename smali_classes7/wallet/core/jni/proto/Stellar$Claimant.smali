.class public final Lwallet/core/jni/proto/Stellar$Claimant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Claimant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$Claimant;",
        "Lwallet/core/jni/proto/Stellar$Claimant$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$ClaimantOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICATE_FIELD_NUMBER:I = 0x2


# instance fields
.field private account_:Ljava/lang/String;

.field private predicate_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2554
    new-instance v0, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$Claimant;-><init>()V

    .line 2557
    sput-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    .line 2558
    const-class v1, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2131
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2132
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3200()Lwallet/core/jni/proto/Stellar$Claimant;
    .locals 1

    .line 2126
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    return-object v0
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Stellar$Claimant;Ljava/lang/String;)V
    .locals 0

    .line 2126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->setAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 0

    .line 2126
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Claimant;->clearAccount()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Stellar$Claimant;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->setAccountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Stellar$Claimant;I)V
    .locals 0

    .line 2126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->setPredicateValue(I)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Stellar$Claimant;Lwallet/core/jni/proto/Stellar$ClaimPredicate;)V
    .locals 0

    .line 2126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Claimant;->setPredicate(Lwallet/core/jni/proto/Stellar$ClaimPredicate;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Stellar$Claimant;)V
    .locals 0

    .line 2126
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Claimant;->clearPredicate()V

    return-void
.end method

.method private clearAccount()V
    .locals 1

    .line 2184
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Claimant;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Claimant;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Claimant;->getAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    return-void
.end method

.method private clearPredicate()V
    .locals 1

    const/4 v0, 0x0

    .line 2260
    iput v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->predicate_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$Claimant;
    .locals 1

    .line 2563
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1

    .line 2338
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$Claimant$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$Claimant;)Lwallet/core/jni/proto/Stellar$Claimant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2341
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2315
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2321
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2279
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2286
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2326
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2333
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2303
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2310
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2266
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2273
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2291
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Claimant;
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

    .line 2298
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$Claimant;",
            ">;"
        }
    .end annotation

    .line 2569
    sget-object v0, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2173
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    return-void
.end method

.method private setAccountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2196
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2197
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    return-void
.end method

.method private setPredicate(Lwallet/core/jni/proto/Stellar$ClaimPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2248
    invoke-virtual {p1}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Stellar$Claimant;->predicate_:I

    return-void
.end method

.method private setPredicateValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2237
    iput p1, p0, Lwallet/core/jni/proto/Stellar$Claimant;->predicate_:I

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

    .line 2504
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2547
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2541
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2526
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$Claimant;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2528
    const-class p2, Lwallet/core/jni/proto/Stellar$Claimant;

    monitor-enter p2

    .line 2529
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$Claimant;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2531
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2534
    sput-object p1, Lwallet/core/jni/proto/Stellar$Claimant;->PARSER:Lcom/google/protobuf/Parser;

    .line 2536
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

    .line 2523
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "account_"

    aput-object v0, p1, p3

    const-string p3, "predicate_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u000c"

    .line 2519
    sget-object p3, Lwallet/core/jni/proto/Stellar$Claimant;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2509
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$Claimant$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$Claimant$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 2506
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$Claimant;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$Claimant;-><init>()V

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

.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 2146
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2159
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->account_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPredicate()Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    .locals 1

    .line 2225
    iget v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->predicate_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->forNumber(I)Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2226
    sget-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->UNRECOGNIZED:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    :cond_0
    return-object v0
.end method

.method public getPredicateValue()I
    .locals 1

    .line 2213
    iget v0, p0, Lwallet/core/jni/proto/Stellar$Claimant;->predicate_:I

    return v0
.end method
