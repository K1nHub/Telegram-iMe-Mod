.class public final Lcom/iMe/fork/utils/LoginTokenGenerator;
.super Ljava/lang/Object;
.source "LoginTokenGenerator.kt"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginTokenGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginTokenGenerator.kt\ncom/iMe/fork/utils/LoginTokenGenerator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1#2:184\n*E\n"
.end annotation


# instance fields
.field private final autoRefreshRunnable:Ljava/lang/Runnable;

.field private final currentAccount:I

.field private delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

.field private isDestroyed:Z

.field private loginTokenRequestId:I

.field private needAutoRefresh:Z


# direct methods
.method public static synthetic $r8$lambda$2CwW-qLlCTsRCFCJ4X0hZM1wdjM(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->checkLoginToken$lambda$3(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLtxG1n4D2kdsbO75y_9MxkdGJ4(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenResult$lambda$6$lambda$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bjwGB4m4C4i4prUv7KgMc6p7XhA(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenResult$lambda$6(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l7C8flLtJndLaqt0pY-MooaPbtg(Lcom/iMe/fork/utils/LoginTokenGenerator;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->autoRefreshRunnable$lambda$0(Lcom/iMe/fork/utils/LoginTokenGenerator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u78qN8lAUXo1svRlnqQUIpK1yNc(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->checkLoginToken$lambda$3$lambda$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    .line 29
    new-instance p1, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/LoginTokenGenerator;)V

    iput-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->autoRefreshRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final autoRefreshRunnable$lambda$0(Lcom/iMe/fork/utils/LoginTokenGenerator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->checkLoginToken()V

    return-void
.end method

.method private final checkLoginToken()V
    .locals 5

    .line 81
    iget-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;-><init>()V

    .line 85
    sget v1, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_id:I

    .line 86
    sget-object v1, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->api_hash:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 89
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_exportLoginToken;->except_ids:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_2
    iget v1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/utils/LoginTokenGenerator;)V

    const/16 v3, 0x1b

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    return-void
.end method

.method private static final checkLoginToken$lambda$3(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2, p0, p1}, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final checkLoginToken$lambda$3$lambda$2(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 98
    invoke-direct {p1, p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 101
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    invoke-direct {p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V

    return-void
.end method

.method private final handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    .line 163
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "SESSION_PASSWORD_NEEDED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;->onTwoStepVerificationNeeded()V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;->onError()V

    .line 168
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->destroy()V

    return-void
.end method

.method private final handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V
    .locals 4

    .line 109
    iget-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    .line 117
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->expires:I

    iget v2, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 119
    iget-object v1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

    if-eqz v1, :cond_1

    .line 121
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginToken;->token:[B

    const/16 v2, 0xb

    .line 120
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-interface {v1, p1, v0}, Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;->onTokenGenerated(Ljava/lang/String;I)V

    .line 125
    :cond_1
    iget-boolean p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->needAutoRefresh:Z

    if-eqz p1, :cond_5

    .line 127
    iget-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->autoRefreshRunnable:Ljava/lang/Runnable;

    .line 128
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 126
    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 133
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    if-eqz v0, :cond_3

    .line 134
    iget v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->dc_id:I

    invoke-static {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->native_moveToDatacenter(II)V

    .line 135
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;-><init>()V

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenMigrateTo;->token:[B

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_importLoginToken;->token:[B

    .line 136
    iget p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/utils/LoginTokenGenerator;)V

    const/16 v2, 0x1b

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    goto :goto_0

    .line 151
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_loginTokenSuccess;->authorization:Lorg/telegram/tgnet/TLRPC$auth_Authorization;

    const-string v1, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_auth_authorization"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-interface {v0, p1}, Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;->onTokenAuthorized(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->destroy()V

    :cond_5
    :goto_0
    return-void
.end method

.method private static final handleLoginTokenResult$lambda$6(Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p0, p1}, Lcom/iMe/fork/utils/LoginTokenGenerator$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleLoginTokenResult$lambda$6$lambda$5(Lorg/telegram/tgnet/TLRPC$TL_error;Lcom/iMe/fork/utils/LoginTokenGenerator;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 141
    invoke-direct {p1, p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 144
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/TLRPC$auth_LoginToken;

    invoke-direct {p1, p2}, Lcom/iMe/fork/utils/LoginTokenGenerator;->handleLoginTokenResult(Lorg/telegram/tgnet/TLRPC$auth_LoginToken;)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->needAutoRefresh:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->autoRefreshRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_1
    iget v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 58
    sget v1, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 59
    iget v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 60
    iget v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->loginTokenRequestId:I

    .line 63
    :cond_2
    iput-boolean v1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget p2, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    if-ne p1, p2, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->checkLoginToken()V

    :cond_0
    return-void
.end method

.method public final setDelegate(Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->delegate:Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;

    return-void
.end method

.method public final start(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->isDestroyed:Z

    .line 44
    iput-boolean p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->needAutoRefresh:Z

    .line 45
    iget p1, p0, Lcom/iMe/fork/utils/LoginTokenGenerator;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    .line 46
    sget v0, Lorg/telegram/messenger/NotificationCenter;->loginTokenDidAccepted:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->checkLoginToken()V

    return-void
.end method
