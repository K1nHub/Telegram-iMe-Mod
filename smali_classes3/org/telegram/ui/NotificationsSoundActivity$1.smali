.class Lorg/telegram/ui/NotificationsSoundActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "NotificationsSoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/NotificationsSoundActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/NotificationsSoundActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$D_RjB_QMlUpdu-OCh9PFp2v4iY0(Lorg/telegram/ui/NotificationsSoundActivity$1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NotificationsSoundActivity$1;->lambda$onItemClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFMu1mRjuGqEtWk3nlajFCkpTvA(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$1;->lambda$onItemClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKNgT917hiFjkSBX5jyugAF85wU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/NotificationsSoundActivity$1;->lambda$deleteSelectedMessages$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/NotificationsSoundActivity;Landroid/content/Context;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iput-object p2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private deleteSelectedMessages()V
    .locals 9

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 243
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3

    .line 244
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v3, v3, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 245
    iget-object v5, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    .line 246
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    iget-object v6, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->remove(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 249
    :cond_0
    iget-object v5, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 250
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MediaDataController;->ringtoneUploaderHashMap:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ringtone/RingtoneUploader;

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {v5}, Lorg/telegram/messenger/ringtone/RingtoneUploader;->cancel()V

    .line 255
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v6, v5, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    if-ne v3, v6, :cond_2

    const/4 v6, 0x0

    .line 256
    invoke-static {v5, v6}, Lorg/telegram/ui/NotificationsSoundActivity;->access$602(Lorg/telegram/ui/NotificationsSoundActivity;Lorg/telegram/ui/NotificationsSoundActivity$Tone;)Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 257
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v6, v5, Lorg/telegram/ui/NotificationsSoundActivity;->systemTones:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iput-object v6, v5, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTone:Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    .line 258
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iput-boolean v4, v5, Lorg/telegram/ui/NotificationsSoundActivity;->selectedToneChanged:Z

    .line 260
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity;->serverTones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v4, v4, Lorg/telegram/ui/NotificationsSoundActivity;->uploadingTones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {v2}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->saveTones()V

    const/4 v2, 0x0

    .line 265
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 266
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 267
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_account_saveRingtone;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_account_saveRingtone;-><init>()V

    .line 268
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$TL_account_saveRingtone;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 269
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 270
    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 271
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v3, :cond_4

    new-array v3, v1, [B

    .line 273
    iput-object v3, v6, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 275
    :cond_4
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_account_saveRingtone;->unsave:Z

    .line 276
    iget-object v3, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v6, Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda2;

    invoke-virtual {v3, v5, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSoundActivity;->access$200(Lorg/telegram/ui/NotificationsSoundActivity;)V

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSoundActivity;->access$500(Lorg/telegram/ui/NotificationsSoundActivity;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static synthetic lambda$deleteSelectedMessages$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onItemClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 196
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onItemClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    invoke-direct {p0}, Lorg/telegram/ui/NotificationsSoundActivity$1;->deleteSelectedMessages()V

    .line 200
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 5

    .line 185
    const-class v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity;->access$100(Lorg/telegram/ui/NotificationsSoundActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity;->access$200(Lorg/telegram/ui/NotificationsSoundActivity;)V

    goto/16 :goto_2

    .line 189
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto/16 :goto_2

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    .line 192
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "DeleteTones"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "DeleteTonesMessage"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 195
    sget v0, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 198
    sget v0, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/NotificationsSoundActivity$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/NotificationsSoundActivity$1;)V

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 202
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const-string v1, "dialogTextRed2"

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p1, p1, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const-string v1, "android.intent.extra.STREAM"

    if-ne p1, v2, :cond_3

    .line 209
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.SEND"

    .line 210
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSoundActivity;->access$300(Lorg/telegram/ui/NotificationsSoundActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->getUriForShare(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 218
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    .line 223
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object v2, v2, Lorg/telegram/ui/NotificationsSoundActivity;->selectedTones:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/NotificationsSoundActivity$Tone;

    iget-object v4, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsSoundActivity;->access$400(Lorg/telegram/ui/NotificationsSoundActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/NotificationsSoundActivity$Tone;->getUriForShare(I)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 230
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity;->access$200(Lorg/telegram/ui/NotificationsSoundActivity;)V

    .line 236
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSoundActivity;->access$500(Lorg/telegram/ui/NotificationsSoundActivity;)V

    .line 237
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSoundActivity$1;->this$0:Lorg/telegram/ui/NotificationsSoundActivity;

    iget-object p1, p1, Lorg/telegram/ui/NotificationsSoundActivity;->adapter:Lorg/telegram/ui/NotificationsSoundActivity$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return-void
.end method
