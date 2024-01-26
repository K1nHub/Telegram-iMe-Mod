.class public final Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaoWithdrawPhase2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2OrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

.field public static final DEPOSIT_CELL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;",
            ">;"
        }
    .end annotation
.end field

.field public static final WITHDRAWING_CELL_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:J

.field private depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

.field private withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6950
    new-instance v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;-><init>()V

    .line 6953
    sput-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    .line 6954
    const-class v1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$10900()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
    .locals 1

    .line 6438
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object v0
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 6438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->setDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 6438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->mergeDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0

    .line 6438
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->clearDepositCell()V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 6438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->setWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 6438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->mergeWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0

    .line 6438
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->clearWithdrawingCell()V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;J)V
    .locals 0

    .line 6438
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->setAmount(J)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)V
    .locals 0

    .line 6438
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6612
    iput-wide v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->amount_:J

    return-void
.end method

.method private clearDepositCell()V
    .locals 1

    const/4 v0, 0x0

    .line 6507
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    return-void
.end method

.method private clearWithdrawingCell()V
    .locals 1

    const/4 v0, 0x0

    .line 6573
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
    .locals 1

    .line 6959
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object v0
.end method

.method private mergeDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6491
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    .line 6492
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6493
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    .line 6494
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->newBuilder(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$Cell$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    goto :goto_0

    .line 6496
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    :goto_0
    return-void
.end method

.method private mergeWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6557
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    .line 6558
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6559
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    .line 6560
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->newBuilder(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$Cell$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    goto :goto_0

    .line 6562
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1

    .line 6690
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6693
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6667
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6673
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6631
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6638
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6678
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6685
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6655
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6662
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6618
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6625
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6643
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;
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

    .line 6650
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;",
            ">;"
        }
    .end annotation

    .line 6965
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6601
    iput-wide p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->amount_:J

    return-void
.end method

.method private setDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6478
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    return-void
.end method

.method private setWithdrawingCell(Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6544
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

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

    .line 6899
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6943
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6937
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6922
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6924
    const-class p2, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    monitor-enter p2

    .line 6925
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6927
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6930
    sput-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->PARSER:Lcom/google/protobuf/Parser;

    .line 6932
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

    .line 6919
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "depositCell_"

    aput-object v0, p1, p3

    const-string p3, "withdrawingCell_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u0003"

    .line 6915
    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6904
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 6901
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 6589
    iget-wide v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->amount_:J

    return-wide v0
.end method

.method public getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 6467
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWithdrawingCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 6533
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDepositCell()Z
    .locals 1

    .line 6456
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawingCell()Z
    .locals 1

    .line 6522
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase2;->withdrawingCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
