.class public final Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DaoWithdrawPhase1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1OrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

.field public static final DEPOSIT_CELL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private changeAddress_:Ljava/lang/String;

.field private depositCell_:Lwallet/core/jni/proto/Nervos$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6364
    new-instance v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;-><init>()V

    .line 6367
    sput-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    .line 6368
    const-class v1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5936
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5937
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10100()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
    .locals 1

    .line 5931
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object v0
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 5931
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->setDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lwallet/core/jni/proto/Nervos$Cell;)V
    .locals 0

    .line 5931
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->mergeDepositCell(Lwallet/core/jni/proto/Nervos$Cell;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 0

    .line 5931
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->clearDepositCell()V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Ljava/lang/String;)V
    .locals 0

    .line 5931
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)V
    .locals 0

    .line 5931
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5931
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 6055
    invoke-static {}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearDepositCell()V
    .locals 1

    const/4 v0, 0x0

    .line 6001
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
    .locals 1

    .line 6373
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

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

    .line 5984
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5985
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    .line 5986
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5987
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    .line 5988
    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Cell;->newBuilder(Lwallet/core/jni/proto/Nervos$Cell;)Lwallet/core/jni/proto/Nervos$Cell$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nervos$Cell;

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    goto :goto_0

    .line 5990
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1

    .line 6147
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6150
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6124
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6130
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6088
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6095
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6135
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6142
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6112
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6119
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6075
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6082
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6100
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;
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

    .line 6107
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;",
            ">;"
        }
    .end annotation

    .line 6379
    sget-object v0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChangeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6044
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6067
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6068
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

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

    .line 5971
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5972
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

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

    .line 6314
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6351
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6336
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6338
    const-class p2, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    monitor-enter p2

    .line 6339
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6341
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6344
    sput-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->PARSER:Lcom/google/protobuf/Parser;

    .line 6346
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

    .line 6333
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "depositCell_"

    aput-object v0, p1, p3

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0208"

    .line 6329
    sget-object p3, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6319
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 6316
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;-><init>()V

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

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 6017
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6030
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDepositCell()Lwallet/core/jni/proto/Nervos$Cell;
    .locals 1

    .line 5961
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nervos$Cell;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$Cell;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDepositCell()Z
    .locals 1

    .line 5950
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$DaoWithdrawPhase1;->depositCell_:Lwallet/core/jni/proto/Nervos$Cell;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
