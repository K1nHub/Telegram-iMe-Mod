.class Lorg/telegram/ui/LoginActivity$PhoneView$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView$IConfirmDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$6iAGRWjFZriDGxW5s-o2HtXAjK4(Lorg/telegram/ui/LoginActivity$PhoneView$7;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView$7;->lambda$onConfirm$0(Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRX3VBDdOR48iz2N_gWi2pimnSw(Lorg/telegram/ui/LoginActivity$PhoneView$7;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$PhoneView$7;->lambda$onConfirm$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Ljava/lang/String;)V
    .locals 0

    .line 3093
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onConfirm$0(Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 1

    .line 3174
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView;->onNextPressed(Ljava/lang/String;)V

    .line 3175
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$3000(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$6900(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RadialProgressView;->sync(Lorg/telegram/ui/Components/RadialProgressView;)V

    return-void
.end method

.method private synthetic lambda$onConfirm$1(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V
    .locals 1

    .line 3172
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$2100(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    .line 3173
    new-instance v0, Lorg/telegram/ui/LoginActivity$PhoneView$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$7;Ljava/lang/String;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    const-wide/16 p1, 0x96

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 13

    .line 3115
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$2202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    .line 3116
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/LoginActivity;->access$3202(Lorg/telegram/ui/LoginActivity;I)I

    .line 3117
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v2, v2}, Lorg/telegram/ui/LoginActivity;->access$6400(Lorg/telegram/ui/LoginActivity;IZ)V

    .line 3119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_10

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3120
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v3, v3, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3121
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v5, v5, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "android.permission.CALL_PHONE"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const/16 v7, 0x1c

    const-string v8, "android.permission.READ_CALL_LOG"

    if-lt v0, v7, :cond_3

    .line 3122
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v7, v7, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v1

    :goto_3
    const-string v9, "android.permission.READ_PHONE_NUMBERS"

    const/16 v10, 0x1a

    if-lt v0, v10, :cond_5

    .line 3123
    iget-object v11, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v11, v11, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    move v11, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v11, v1

    .line 3124
    :goto_5
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$6500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 3125
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_6

    .line 3127
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v5, :cond_7

    .line 3130
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v12, v12, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-nez v7, :cond_8

    .line 3133
    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez v11, :cond_9

    if-lt v0, v10, :cond_9

    .line 3136
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3138
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3139
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "firstlogin"

    .line 3140
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v6, v6, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v4, v4, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    .line 3161
    :cond_a
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$6600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception p1

    .line 3163
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 3141
    :cond_b
    :goto_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3142
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3144
    sget v0, Lorg/telegram/messenger/R$string;->Continue:I

    const-string v4, "Continue"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez v3, :cond_d

    if-eqz v5, :cond_c

    if-nez v7, :cond_d

    .line 3147
    :cond_c
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCallAndLog:I

    const-string v3, "AllowReadCallAndLog"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3148
    sget v0, Lorg/telegram/messenger/R$raw;->calls_log:I

    goto :goto_8

    :cond_d
    if-eqz v5, :cond_f

    if-nez v7, :cond_e

    goto :goto_7

    .line 3153
    :cond_e
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCall:I

    const-string v3, "AllowReadCall"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3154
    sget v0, Lorg/telegram/messenger/R$raw;->incoming_calls:I

    goto :goto_8

    .line 3150
    :cond_f
    :goto_7
    sget v0, Lorg/telegram/messenger/R$string;->AllowReadCallLog:I

    const-string v3, "AllowReadCallLog"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3151
    sget v0, Lorg/telegram/messenger/R$raw;->calls_log:I

    :goto_8
    const/16 v3, 0x2e

    .line 3156
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTopBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v0, v3, v2, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTopAnimation(IIZI)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 3157
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$6702(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 3158
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity$PhoneView;->access$2202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z

    :goto_9
    return-void

    .line 3171
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->val$code:Ljava/lang/String;

    new-instance v1, Lorg/telegram/ui/LoginActivity$PhoneView$7$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/LoginActivity$PhoneView$7$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView$7;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$6800(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onConfirmPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V
    .locals 0

    .line 3106
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$7;->onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public onDismiss(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V
    .locals 1

    .line 3111
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$7;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object p1, p1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6102(Lorg/telegram/ui/LoginActivity;Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;

    return-void
.end method

.method public onEditPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Landroid/widget/TextView;)V
    .locals 0

    .line 3101
    invoke-static {p1}, Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;->access$2100(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method

.method public onFabPressed(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;Lorg/telegram/ui/Components/TransformableLoginButtonView;)V
    .locals 0

    .line 3096
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$PhoneView$7;->onConfirm(Lorg/telegram/ui/LoginActivity$PhoneNumberConfirmView;)V

    return-void
.end method
