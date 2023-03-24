.class public final Lwallet/core/jni/proto/NEAR$AccessKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$AccessKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$AccessKey$Builder;,
        Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$AccessKey;",
        "Lwallet/core/jni/proto/NEAR$AccessKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$AccessKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

.field public static final FULL_ACCESS_FIELD_NUMBER:I = 0x3

.field public static final FUNCTION_CALL_FIELD_NUMBER:I = 0x2

.field public static final NONCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$AccessKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nonce_:J

.field private permissionCase_:I

.field private permission_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1714
    new-instance v0, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$AccessKey;-><init>()V

    .line 1717
    sput-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    .line 1718
    const-class v1, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1224
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1226
    iput v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    return-void
.end method

.method static synthetic access$2000()Lwallet/core/jni/proto/NEAR$AccessKey;
    .locals 1

    .line 1219
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object v0
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 1219
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AccessKey;->clearPermission()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/NEAR$AccessKey;J)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEAR$AccessKey;->setNonce(J)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 1219
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AccessKey;->clearNonce()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 1219
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AccessKey;->clearFunctionCall()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->setFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/NEAR$AccessKey;Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V
    .locals 0

    .line 1219
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$AccessKey;->mergeFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/NEAR$AccessKey;)V
    .locals 0

    .line 1219
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AccessKey;->clearFullAccess()V

    return-void
.end method

.method private clearFullAccess()V
    .locals 2

    .line 1401
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1402
    iput v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v0, 0x0

    .line 1403
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFunctionCall()V
    .locals 2

    .line 1351
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1352
    iput v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v0, 0x0

    .line 1353
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1304
    iput-wide v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->nonce_:J

    return-void
.end method

.method private clearPermission()V
    .locals 1

    const/4 v0, 0x0

    .line 1265
    iput v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v0, 0x0

    .line 1266
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$AccessKey;
    .locals 1

    .line 1723
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object v0
.end method

.method private mergeFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    .line 1389
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FullAccessPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1390
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FullAccessPermission;->newBuilder(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;

    move-result-object v0

    .line 1391
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FullAccessPermission$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    goto :goto_0

    .line 1393
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    .line 1395
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    return-void
.end method

.method private mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1338
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    .line 1339
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1340
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->newBuilder(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;

    move-result-object v0

    .line 1341
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FunctionCallPermission$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    goto :goto_0

    .line 1343
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    .line 1345
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1

    .line 1482
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$AccessKey;)Lwallet/core/jni/proto/NEAR$AccessKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1485
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1459
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1465
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1423
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1430
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1470
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1477
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1447
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1454
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1410
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1417
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1435
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$AccessKey;
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

    .line 1442
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$AccessKey;",
            ">;"
        }
    .end annotation

    .line 1729
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFullAccess(Lwallet/core/jni/proto/NEAR$FullAccessPermission;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1381
    iput p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    return-void
.end method

.method private setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCallPermission;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1329
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1330
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1331
    iput p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    return-void
.end method

.method private setNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1293
    iput-wide p1, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->nonce_:J

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

    .line 1661
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1707
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1701
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1686
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$AccessKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1688
    const-class p2, Lwallet/core/jni/proto/NEAR$AccessKey;

    monitor-enter p2

    .line 1689
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$AccessKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1691
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1694
    sput-object p1, Lwallet/core/jni/proto/NEAR$AccessKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 1696
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

    .line 1683
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "permission_"

    aput-object v0, p1, p3

    const-string p3, "permissionCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1669
    const-class p3, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002<\u0000\u0003<\u0000"

    .line 1679
    sget-object p3, Lwallet/core/jni/proto/NEAR$AccessKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1666
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$AccessKey$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 1663
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$AccessKey;-><init>()V

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

.method public getFullAccess()Lwallet/core/jni/proto/NEAR$FullAccessPermission;
    .locals 2

    .line 1370
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1371
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    return-object v0

    .line 1373
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FullAccessPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FullAccessPermission;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;
    .locals 2

    .line 1320
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1321
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permission_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    return-object v0

    .line 1323
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCallPermission;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCallPermission;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 1281
    iget-wide v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->nonce_:J

    return-wide v0
.end method

.method public getPermissionCase()Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
    .locals 1

    .line 1260
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->forNumber(I)Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    move-result-object v0

    return-object v0
.end method

.method public hasFullAccess()Z
    .locals 2

    .line 1363
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunctionCall()Z
    .locals 2

    .line 1313
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey;->permissionCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
