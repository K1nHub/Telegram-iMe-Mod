.class Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "FiltersSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FiltersSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/FiltersSetupActivity;


# direct methods
.method public static synthetic $r8$lambda$14iPo-E1XKgLxf1KdyLVQyit-nc(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$1(Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5eRgMBIZLwi7q5EtCOpTVi8wl7Q(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$9(Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4-V0ajQF7OvRlD2OW6WxQzFkB8(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ML44rAxJAvQ16GWTJweLgpzFGOg(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OjC9Go8p02s0DLSxotHiwZDuods(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$8(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pd-G1JGcFHMymxi51uPABUF1DrQ(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$6(Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iN9kCch2WimuBHV3KAHtBzYdtSE(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$5(Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nbLCvgf75X7Mi1Xl1eBvN4xs2EA(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vNa1i7nOjGbvh-_Gw1nrkdtU_N8(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$7(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ypUrL3Py4_nqMoy5jiHm4JSSev0(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->lambda$onCreateViewHolder$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 1092
    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1150
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 1151
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$1700(Lorg/telegram/ui/FiltersSetupActivity;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$1600(Lorg/telegram/ui/FiltersSetupActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$1(Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 4

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v0, v1, :cond_0

    .line 1163
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 1165
    :cond_0
    iget-boolean p1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->locked:Z

    if-eqz p1, :cond_1

    .line 1166
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1500(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1168
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance v0, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {v0, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$2(Ljava/lang/Boolean;)V
    .locals 1

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1202
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1205
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1207
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 1208
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1199
    new-instance p3, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1185
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p3}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object p3

    sget-object p4, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne p3, p4, :cond_0

    .line 1186
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1191
    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1192
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p1, p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x0

    .line 1193
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 1194
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1197
    :cond_1
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 1198
    iget p4, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 1199
    iget-object p4, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p4, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$6(Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1172
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    new-instance v0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;)V

    invoke-static {p2, p1, v0}, Lorg/telegram/ui/Components/FolderBottomSheet;->showForDeletion(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;)V

    return-void

    .line 1179
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1180
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v3, "FilterDelete"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1181
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    if-ne v1, v2, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string v2, "FilterDeleteAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1182
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1183
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1211
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1212
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 1213
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 1215
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$7(Lorg/telegram/ui/FiltersSetupActivity$FilterCell;Landroid/view/View;)V
    .locals 5

    .line 1156
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    .line 1157
    invoke-virtual {p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->getCurrentFilter()Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v0

    .line 1158
    invoke-virtual {p1}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->getCurrentTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object p1

    .line 1159
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p2

    .line 1160
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v2, v3, :cond_0

    sget v2, Lorg/telegram/messenger/R$string;->topic_edit:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget v2, Lorg/telegram/messenger/R$string;->FilterEditItem:I

    const-string v4, "FilterEditItem"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1, v0}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lcom/iMe/storage/domain/model/topics/TopicModel;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {p2, v1, v2, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1171
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    if-ne v2, v3, :cond_1

    sget v2, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->FilterDeleteItem:I

    const-string v3, "FilterDeleteItem"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x1

    new-instance v4, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/messenger/MessagesController$DialogFilter;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {p2, v1, v2, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1218
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 1219
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 1221
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$8(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)V
    .locals 2

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->suggestedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1288
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogFiltersUpdated:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$9(Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;Landroid/view/View;)V
    .locals 13

    .line 1237
    invoke-virtual {p1}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->getSuggestedFilter()Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    move-result-object p1

    .line 1238
    new-instance v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {v0}, Lorg/telegram/messenger/MessagesController$DialogFilter;-><init>()V

    .line 1239
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->title:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    const/4 p2, 0x2

    .line 1240
    iput p2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    .line 1241
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersById:Landroid/util/SparseArray;

    iget v2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1242
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    goto :goto_0

    .line 1244
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    const/4 v1, -0x1

    .line 1245
    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pendingUnreadCount:I

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_6

    .line 1247
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    if-nez v2, :cond_1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->include_peers:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_peers:Ljava/util/ArrayList;

    :goto_2
    if-nez v2, :cond_2

    .line 1248
    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    goto :goto_3

    :cond_2
    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    .line 1249
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_5

    .line 1250
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1252
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_3

    goto :goto_5

    .line 1254
    :cond_3
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    cmp-long v10, v8, v10

    if-eqz v10, :cond_4

    neg-long v8, v8

    goto :goto_5

    .line 1257
    :cond_4
    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v8, v7

    .line 1259
    :goto_5
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1262
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;->filter:Lorg/telegram/tgnet/TLRPC$DialogFilter;

    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->groups:Z

    if-eqz v1, :cond_7

    .line 1263
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1265
    :cond_7
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->bots:Z

    if-eqz v1, :cond_8

    .line 1266
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1268
    :cond_8
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->contacts:Z

    if-eqz v1, :cond_9

    .line 1269
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1271
    :cond_9
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->non_contacts:Z

    if-eqz v1, :cond_a

    .line 1272
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1274
    :cond_a
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->broadcasts:Z

    if-eqz v1, :cond_b

    .line 1275
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1277
    :cond_b
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_archived:Z

    if-eqz v1, :cond_c

    .line 1278
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1280
    :cond_c
    iget-boolean v1, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_read:Z

    if-eqz v1, :cond_d

    .line 1281
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1283
    :cond_d
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$DialogFilter;->exclude_muted:Z

    if-eqz p2, :cond_e

    .line 1284
    iget p2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    .line 1286
    :cond_e
    iget v1, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    new-instance v12, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v12, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;)V

    invoke-static/range {v0 .. v12}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1108
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, 0x3

    if-ltz p1, :cond_2

    .line 1410
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1413
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    if-nez p1, :cond_1

    return v0

    .line 1417
    :cond_1
    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 1098
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1102
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public moveElementToStart(I)V
    .locals 3

    .line 1453
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    if-ltz p1, :cond_2

    .line 1454
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 1457
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    if-gt v2, p1, :cond_1

    .line 1459
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iput v2, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1461
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1402(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1462
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 1303
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq p2, v3, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v4

    .line 1305
    :goto_0
    iget v2, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_AUTO_UPDATE:I

    if-ne v2, v5, :cond_3

    .line 1306
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1307
    sget v0, Lorg/telegram/messenger/R$string;->topics_catalog_update_auto:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->isAutoUpdateTopicsCatalogEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1309
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/ForkTopicsController;->getSelectedAutoUpdateTopicsCatalogInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/enums/Interval;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_e

    .line 1311
    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_e

    .line 1313
    :cond_3
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_UPDATE:I

    if-eq v2, v5, :cond_21

    sget v6, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_SORTING:I

    if-ne v2, v6, :cond_4

    goto/16 :goto_d

    .line 1320
    :cond_4
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL:I

    const/4 v6, 0x0

    if-eq v2, v5, :cond_17

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL_AT_BOTTOM:I

    if-eq v2, v7, :cond_17

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_PANEL_AT_BOTTOM:I

    if-eq v2, v7, :cond_17

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_REMEMBER_LAST_TAB:I

    if-eq v2, v7, :cond_17

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_HIDE_FOLDERS:I

    if-eq v2, v7, :cond_17

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_FOLDERS_FIRST:I

    if-ne v2, v7, :cond_5

    goto/16 :goto_8

    .line 1346
    :cond_5
    sget v5, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_NOTIFICATION_MODE:I

    if-eq v2, v5, :cond_e

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_ALL_CHATS_TAB:I

    if-eq v2, v7, :cond_e

    sget v7, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_WIDTH_MODE:I

    if-ne v2, v7, :cond_6

    goto/16 :goto_2

    .line 1369
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    if-eq v1, v3, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto/16 :goto_e

    .line 1401
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    .line 1402
    iget-object v0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->suggested:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->setFilter(Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Z)V

    goto/16 :goto_e

    .line 1389
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    .line 1391
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1392
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1393
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1394
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1395
    new-instance v2, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v2, p2, v1}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v4}, Lorg/telegram/ui/FiltersSetupActivity$TextCell;->setTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_e

    .line 1385
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_a

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_1

    :cond_a
    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_1
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 1376
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    .line 1378
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v1, v2, :cond_c

    .line 1379
    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1100(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V

    goto/16 :goto_e

    .line 1381
    :cond_c
    iget-object v0, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;Z)V

    goto/16 :goto_e

    .line 1371
    :cond_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1372
    iget-object p2, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 1347
    :cond_e
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1348
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1349
    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v0, v5, :cond_10

    .line 1350
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabsNotificationMode:Lcom/iMe/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/FilterTabNotificationMode;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 1351
    sget v2, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1352
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_f

    goto :goto_3

    :cond_f
    move v1, v4

    :goto_3
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_e

    .line 1353
    :cond_10
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_ALL_CHATS_TAB:I

    if-ne v0, v2, :cond_15

    .line 1354
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-le v0, v1, :cond_11

    goto :goto_4

    :cond_11
    move v1, v4

    :cond_12
    :goto_4
    if-eqz v1, :cond_14

    .line 1356
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5

    .line 1359
    :cond_13
    sget v0, Lorg/telegram/messenger/R$string;->common_off:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1357
    :cond_14
    :goto_5
    sget v0, Lorg/telegram/messenger/R$string;->common_on:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 1361
    :goto_6
    sget v2, Lorg/telegram/messenger/R$string;->folder_tabs_all_chats_tab_settings_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1362
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_e

    .line 1364
    :cond_15
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedFilterTabWidthMode:Lcom/iMe/fork/enums/FilterTabWidthMode;

    invoke-virtual {v0}, Lcom/iMe/fork/enums/FilterTabWidthMode;->getTitleResId()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    sget v2, Lorg/telegram/messenger/R$string;->folder_tabs_width_mode_item_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1366
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p2

    if-lez p2, :cond_16

    goto :goto_7

    :cond_16
    move v1, v4

    :goto_7
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto/16 :goto_e

    .line 1327
    :cond_17
    :goto_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1328
    sget v3, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_REMEMBER_LAST_TAB:I

    if-ne v2, v3, :cond_18

    move v2, v1

    goto :goto_9

    :cond_18
    move v2, v4

    :goto_9
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setDrawSwitchDivider(Z)V

    .line 1329
    iget v0, v0, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne v0, v5, :cond_19

    .line 1330
    sget v0, Lorg/telegram/messenger/R$string;->topics_settings_enable:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$700(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_e

    .line 1331
    :cond_19
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL_AT_BOTTOM:I

    if-ne v0, v2, :cond_1a

    .line 1332
    sget v0, Lorg/telegram/messenger/R$string;->topics_settings_topics_bar_at_bottom:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$800(Lorg/telegram/ui/FiltersSetupActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_e

    .line 1333
    :cond_1a
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_PANEL_AT_BOTTOM:I

    if-ne v0, v2, :cond_1c

    .line 1334
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lez v0, :cond_1b

    goto :goto_a

    :cond_1b
    move v1, v4

    :goto_a
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1335
    sget v0, Lorg/telegram/messenger/R$string;->folder_tabs_at_bottom_enable_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_e

    :cond_1c
    if-ne v0, v3, :cond_1e

    .line 1337
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$900(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lez v0, :cond_1d

    goto :goto_b

    :cond_1d
    move v1, v4

    :goto_b
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1338
    sget v0, Lorg/telegram/messenger/R$string;->folder_tabs_remember_last_filter_tab_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isRememberLastFilterTabEnabled:Z

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_e

    .line 1339
    :cond_1e
    sget v2, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_HIDE_FOLDERS:I

    if-ne v0, v2, :cond_1f

    .line 1340
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1341
    sget v0, Lorg/telegram/messenger/R$string;->folder_tabs_settings_hide_folders:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_e

    .line 1343
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1000(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lez v0, :cond_20

    goto :goto_c

    :cond_20
    move v1, v4

    :goto_c
    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    .line 1344
    sget v0, Lorg/telegram/messenger/R$string;->folder_tabs_settings_folders_first:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/FiltersController;->isFoldersFirstEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_e

    .line 1314
    :cond_21
    :goto_d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    if-ne v2, v5, :cond_22

    .line 1316
    sget v0, Lorg/telegram/messenger/R$string;->topics_catalog_update_manually:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto :goto_e

    .line 1318
    :cond_22
    sget v0, Lorg/telegram/messenger/R$string;->folder_tabs_sorting_settings:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    :goto_e
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1115
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL:I

    if-eq p2, p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_PANEL_AT_BOTTOM:I

    if-eq p2, p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_PANEL_AT_BOTTOM:I

    if-eq p2, p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_REMEMBER_LAST_TAB:I

    if-eq p2, p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_HIDE_FOLDERS:I

    if-eq p2, p1, :cond_c

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_FOLDERS_FIRST:I

    if-ne p2, p1, :cond_0

    goto/16 :goto_3

    .line 1123
    :cond_0
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_NOTIFICATION_MODE:I

    const/4 v0, 0x1

    if-eq p2, p1, :cond_b

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_WIDTH_MODE:I

    if-eq p2, p1, :cond_b

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_ALL_CHATS_TAB:I

    if-ne p2, p1, :cond_1

    goto/16 :goto_2

    .line 1130
    :cond_1
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_UPDATE:I

    if-eq p2, p1, :cond_a

    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->FILTERS_SETTINGS_SORTING:I

    if-ne p2, p1, :cond_2

    goto/16 :goto_1

    .line 1133
    :cond_2
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TOPICS_SETTINGS_CATALOG_AUTO_UPDATE:I

    if-ne p2, p1, :cond_3

    .line 1134
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 1135
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_3
    if-eqz p2, :cond_9

    if-eq p2, v0, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_6

    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    .line 1234
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;-><init>(Landroid/content/Context;)V

    .line 1235
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1236
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$SuggestedFilterCell;->setAddOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1229
    :cond_4
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$TextCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FiltersSetupActivity$TextCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    .line 1230
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 1226
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 1147
    :cond_6
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;)V

    .line 1148
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1149
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setOnReorderButtonTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1155
    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/ui/FiltersSetupActivity$FilterCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/FiltersSetupActivity$FilterCell;->setOnOptionsClick(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1143
    :cond_7
    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$raw;->filters:I

    invoke-static {p2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    if-ne v2, v3, :cond_8

    sget v2, Lorg/telegram/messenger/R$string;->topic_new_info:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->CreateNewFilterInfo:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CreateNewFilterInfo"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    :goto_0
    invoke-direct {p1, p2, v0, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$HintInnerCell;-><init>(Lorg/telegram/ui/FiltersSetupActivity;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 1144
    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_top:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 1139
    :cond_9
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1140
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1131
    :cond_a
    :goto_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1132
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 1126
    :cond_b
    :goto_2
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1127
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1128
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    goto :goto_4

    .line 1121
    :cond_c
    :goto_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1122
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1294
    :goto_4
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public swapElements(II)V
    .locals 7

    .line 1421
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v0

    if-ge p2, v0, :cond_0

    goto/16 :goto_2

    .line 1424
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    .line 1425
    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity;->access$600(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;

    .line 1427
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$000(Lorg/telegram/ui/FiltersSetupActivity;)Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1428
    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1100(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1100(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1431
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v2

    invoke-static {v0}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1100(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->access$1100(Lorg/telegram/ui/FiltersSetupActivity$ItemInner;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/iMe/fork/controller/ForkTopicsController;->swapTopics(Lcom/iMe/storage/domain/model/topics/TopicModel;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    .line 1432
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2}, Lorg/telegram/ui/FiltersSetupActivity;->access$1300(Lorg/telegram/ui/FiltersSetupActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    sub-int v3, p1, v3

    iget-object v5, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v5}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v5

    sub-int v5, p2, v5

    invoke-static {v2, v3, v5}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1433
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$1402(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1434
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v2, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 1437
    iget-object v2, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v2, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v3, :cond_4

    goto :goto_2

    .line 1440
    :cond_4
    iget v5, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1441
    iget v6, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    iput v6, v2, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1442
    iput v5, v3, Lorg/telegram/messenger/MessagesController$DialogFilter;->order:I

    .line 1443
    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 1445
    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {v3}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result v3

    sub-int/2addr p1, v3

    iget-object v1, v1, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1}, Lorg/telegram/ui/FiltersSetupActivity;->access$1200(Lorg/telegram/ui/FiltersSetupActivity;)I

    move-result p1

    sub-int/2addr p2, p1

    iget-object p1, v0, Lorg/telegram/ui/FiltersSetupActivity$ItemInner;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1448
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$1402(Lorg/telegram/ui/FiltersSetupActivity;Z)Z

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->this$0:Lorg/telegram/ui/FiltersSetupActivity;

    invoke-static {p1, v4}, Lorg/telegram/ui/FiltersSetupActivity;->access$300(Lorg/telegram/ui/FiltersSetupActivity;Z)V

    :cond_5
    :goto_2
    return-void
.end method
