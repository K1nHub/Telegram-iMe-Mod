.class Lorg/telegram/ui/SessionsActivity$6;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity;->openCameraScanActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field private response:Lorg/telegram/tgnet/TLObject;

.field final synthetic this$0:Lorg/telegram/ui/SessionsActivity;


# direct methods
.method public static synthetic $r8$lambda$5R9gRCxqoD25Yvlx-vPI2-tSdkk(Lorg/telegram/ui/SessionsActivity$6;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity$6;->lambda$processQr$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$6gzFaJH_fEyVK2vM6PF7OYoEJEg(Lorg/telegram/ui/SessionsActivity$6;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity$6;->lambda$processQr$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RerWY2kPuFHYVRP9yC3447jIPJ0(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SessionsActivity$6;->lambda$didFindQr$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S2yaGd-1L8dbWaoGcE7AN-waijs(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SessionsActivity$6;->lambda$processQr$3(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wl0tdZnNYmWPnHPm6ShNrZYkNpM(Lorg/telegram/ui/SessionsActivity$6;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SessionsActivity$6;->lambda$didFindQr$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mXQWAxvD94C05lV1tmRgJmLQPMA(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SessionsActivity$6;->lambda$processQr$5(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/SessionsActivity;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1162
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->response:Lorg/telegram/tgnet/TLObject;

    .line 1163
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method

.method private synthetic lambda$didFindQr$0(Ljava/lang/String;)V
    .locals 0

    .line 1169
    invoke-virtual {p0, p1}, Lorg/telegram/ui/SessionsActivity$6;->didFindQr(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$didFindQr$1()V
    .locals 4

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "AUTH_TOKEN_EXCEPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    sget v0, Lorg/telegram/messenger/R$string;->AccountAlreadyLoggedIn:I

    const-string v1, "AccountAlreadyLoggedIn"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1191
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v2, "ErrorOccurred"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    const-string v3, "AuthAnotherClient"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$processQr$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V
    .locals 0

    .line 1212
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->response:Lorg/telegram/tgnet/TLObject;

    .line 1213
    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1214
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$processQr$3(Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1211
    new-instance v0, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SessionsActivity$6;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processQr$4()V
    .locals 4

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    sget v1, Lorg/telegram/messenger/R$string;->AuthAnotherClient:I

    const-string v2, "AuthAnotherClient"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v3, "ErrorOccurred"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$processQr$5(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const/16 v0, 0x11

    .line 1205
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "_"

    .line 1206
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\+"

    const-string v1, "-"

    .line 1207
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    .line 1208
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 1209
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;-><init>()V

    .line 1210
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_acceptLoginToken;->token:[B

    .line 1211
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to pass qr code auth"

    .line 1217
    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1218
    new-instance p1, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SessionsActivity$6;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1221
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic didFindMrzInfo(Lorg/telegram/messenger/MrzRecognizer$Result;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$didFindMrzInfo(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Lorg/telegram/messenger/MrzRecognizer$Result;)V

    return-void
.end method

.method public didFindQr(Ljava/lang/String;)V
    .locals 4

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->response:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_0

    .line 1169
    new-instance v0, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/SessionsActivity$6;->processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z

    return-void

    .line 1173
    :cond_0
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    if-eqz p1, :cond_2

    .line 1174
    move-object p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 1175
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->password_pending:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1177
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/telegram/ui/SessionsActivity;->access$3702(Lorg/telegram/ui/SessionsActivity;I)I

    .line 1178
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {v0}, Lorg/telegram/ui/SessionsActivity;->access$200(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1182
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->this$0:Lorg/telegram/ui/SessionsActivity;

    invoke-static {p1}, Lorg/telegram/ui/SessionsActivity;->access$3800(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$6;->response:Lorg/telegram/tgnet/TLObject;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    goto :goto_1

    .line 1185
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-eqz p1, :cond_3

    .line 1186
    new-instance p1, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SessionsActivity$6;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic getSubtitleText()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$getSubtitleText(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onDismiss()V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate$-CC;->$default$onDismiss(Lorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;)V

    return-void
.end method

.method public processQr(Ljava/lang/String;Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1201
    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->response:Lorg/telegram/tgnet/TLObject;

    .line 1202
    iput-object v0, p0, Lorg/telegram/ui/SessionsActivity$6;->error:Lorg/telegram/tgnet/TLRPC$TL_error;

    .line 1203
    new-instance v0, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/SessionsActivity$6$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SessionsActivity$6;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x2ee

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    const/4 p1, 0x1

    return p1
.end method
