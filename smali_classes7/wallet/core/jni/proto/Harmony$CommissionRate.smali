.class public final Lwallet/core/jni/proto/Harmony$CommissionRate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$CommissionRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommissionRate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$CommissionRate;",
        "Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$CommissionRateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

.field public static final MAX_CHANGE_RATE_FIELD_NUMBER:I = 0x3

.field public static final MAX_RATE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$CommissionRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

.field private maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

.field private rate_:Lwallet/core/jni/proto/Harmony$Decimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4983
    new-instance v0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$CommissionRate;-><init>()V

    .line 4986
    sput-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    .line 4987
    const-class v1, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$8900()Lwallet/core/jni/proto/Harmony$CommissionRate;
    .locals 1

    .line 4408
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object v0
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->setRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->mergeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0

    .line 4408
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->clearRate()V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->setMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->mergeMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0

    .line 4408
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->clearMaxRate()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->setMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Harmony$CommissionRate;Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0

    .line 4408
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;->mergeMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Harmony$CommissionRate;)V
    .locals 0

    .line 4408
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$CommissionRate;->clearMaxChangeRate()V

    return-void
.end method

.method private clearMaxChangeRate()V
    .locals 1

    const/4 v0, 0x0

    .line 4609
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method private clearMaxRate()V
    .locals 1

    const/4 v0, 0x0

    .line 4543
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method private clearRate()V
    .locals 1

    const/4 v0, 0x0

    .line 4477
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$CommissionRate;
    .locals 1

    .line 4992
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object v0
.end method

.method private mergeMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4592
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4593
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    .line 4594
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4595
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    .line 4596
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->newBuilder(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    goto :goto_0

    .line 4598
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    :goto_0
    return-void
.end method

.method private mergeMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4527
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    .line 4528
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4529
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    .line 4530
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->newBuilder(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    goto :goto_0

    .line 4532
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    :goto_0
    return-void
.end method

.method private mergeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4461
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    .line 4462
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4463
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    .line 4464
    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->newBuilder(Lwallet/core/jni/proto/Harmony$Decimal;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$Decimal;

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    goto :goto_0

    .line 4466
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1

    .line 4688
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$CommissionRate;)Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4691
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4665
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4671
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4629
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4636
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4676
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4683
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4653
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4660
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4616
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4623
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4641
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$CommissionRate;
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

    .line 4648
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$CommissionRate;",
            ">;"
        }
    .end annotation

    .line 4998
    sget-object v0, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMaxChangeRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4580
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method private setMaxRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4514
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    return-void
.end method

.method private setRate(Lwallet/core/jni/proto/Harmony$Decimal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4448
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

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

    .line 4932
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4976
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4970
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4955
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$CommissionRate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4957
    const-class p2, Lwallet/core/jni/proto/Harmony$CommissionRate;

    monitor-enter p2

    .line 4958
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$CommissionRate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4960
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4963
    sput-object p1, Lwallet/core/jni/proto/Harmony$CommissionRate;->PARSER:Lcom/google/protobuf/Parser;

    .line 4965
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

    .line 4952
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "rate_"

    aput-object v0, p1, p3

    const-string p3, "maxRate_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "maxChangeRate_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\t"

    .line 4948
    sget-object p3, Lwallet/core/jni/proto/Harmony$CommissionRate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4937
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$CommissionRate$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 4934
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$CommissionRate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$CommissionRate;-><init>()V

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

.method public getMaxChangeRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4569
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4503
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRate()Lwallet/core/jni/proto/Harmony$Decimal;
    .locals 1

    .line 4437
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasMaxChangeRate()Z
    .locals 1

    .line 4558
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxChangeRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRate()Z
    .locals 1

    .line 4492
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->maxRate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRate()Z
    .locals 1

    .line 4426
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$CommissionRate;->rate_:Lwallet/core/jni/proto/Harmony$Decimal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
