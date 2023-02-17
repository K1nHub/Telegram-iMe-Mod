.class Lorg/telegram/ui/ChangeUsernameActivity$3;
.super Ljava/lang/Object;
.source "ChangeUsernameActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUsernameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUsernameActivity;


# direct methods
.method public static synthetic $r8$lambda$4xIYIkmWysjCNbX-H5B6fzzJcWo(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;ILandroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChangeUsernameActivity$3;->lambda$onItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_username;ILandroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$JgZXFfJO79rJR1e1Uh1z8tK7vEg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$3;->lambda$onItemClick$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bG3eJton8cxtSP7IVgNnlaIgYhk(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChangeUsernameActivity$3;->lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lUX3iAnC_Pypjz-DKZGWWLCtP7M(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChangeUsernameActivity$3;->lambda$onItemClick$2(Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tffPGNAwNStUvMBxkB93XEx6edY(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChangeUsernameActivity$3;->lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_username;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/tgnet/TLRPC$TL_username;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 297
    iget-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    const/4 p4, 0x1

    invoke-virtual {p3, p1, p2, p4}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p2, :cond_0

    .line 289
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;->active:Z

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(IZ)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 290
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p4, "USERNAMES_ACTIVE_TOO_MUCH"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 291
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;->active:Z

    iput-boolean p1, p5, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    .line 292
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(IZ)V

    .line 293
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->UsernameActivateErrorTitle:I

    const-string p3, "UsernameActivateErrorTitle"

    .line 294
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UsernameActivateErrorMessage:I

    const-string p3, "UsernameActivateErrorMessage"

    .line 295
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    .line 296
    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p5, p6}, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 301
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p5, p6, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V

    .line 303
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$800(Lorg/telegram/ui/ChangeUsernameActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$700(Lorg/telegram/ui/ChangeUsernameActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 304
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    iget-boolean p4, p5, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    invoke-virtual {p2, p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->updateUsernameActiveness(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 286
    new-instance v8, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-object v5, p6

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;Lorg/telegram/tgnet/TLObject;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_username;Z)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Lorg/telegram/tgnet/TLRPC$TL_username;ILandroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 7

    .line 281
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;-><init>()V

    .line 282
    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    iput-object p5, p4, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;->username:Ljava/lang/String;

    .line 283
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    xor-int/lit8 p5, v5, 0x1

    .line 284
    iput-boolean p5, p4, Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;->active:Z

    .line 285
    iget-object p5, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance v6, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_account_toggleUsername;ILorg/telegram/tgnet/TLRPC$TL_username;Z)V

    invoke-virtual {p5, p4, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 307
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChangeUsernameActivity;->access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    check-cast p3, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->setLoading(Z)V

    return-void
.end method

.method private static synthetic lambda$onItemClick$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 313
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 266
    instance-of v0, p1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 267
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-object v2, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->currentUsername:Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v2, :cond_5

    .line 268
    iget-boolean v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->loading:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 271
    :cond_0
    iget-boolean v0, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$400(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;Z)V

    return-void

    .line 276
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 277
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->UsernameDeactivateLink:I

    const-string v3, "UsernameDeactivateLink"

    goto :goto_0

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->UsernameActivateLink:I

    const-string v3, "UsernameActivateLink"

    :goto_0
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 278
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$string;->UsernameDeactivateLinkProfileMessage:I

    const-string v3, "UsernameDeactivateLinkProfileMessage"

    goto :goto_1

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->UsernameActivateLinkProfileMessage:I

    const-string v3, "UsernameActivateLinkProfileMessage"

    :goto_1
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 279
    iget-boolean v1, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->Hide:I

    const-string v3, "Hide"

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->Show:I

    const-string v3, "Show"

    :goto_2
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p2, p1}, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChangeUsernameActivity$3;Lorg/telegram/tgnet/TLRPC$TL_username;ILandroid/view/View;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    .line 312
    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/ChangeUsernameActivity$3$$ExternalSyntheticLambda2;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_4

    :cond_5
    :goto_3
    return-void

    .line 316
    :cond_6
    instance-of p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    if-eqz p1, :cond_7

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity$3;->this$0:Lorg/telegram/ui/ChangeUsernameActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChangeUsernameActivity;->access$500(Lorg/telegram/ui/ChangeUsernameActivity;Z)V

    :cond_7
    :goto_4
    return-void
.end method
