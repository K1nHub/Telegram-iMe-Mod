.class Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "NotificationsCustomSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsCustomSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1196
    iput-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1486
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1488
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 1490
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1492
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1494
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 1496
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x5

    return p1

    :cond_7
    :goto_0
    const/4 p1, 0x7

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x4

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1201
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 1252
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_10

    .line 1435
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 1437
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsAddAnException:I

    const-string v0, "NotificationsAddAnException"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    const-string p2, "windowBackgroundWhiteBlueIcon"

    const-string v0, "windowBackgroundWhiteBlueButton"

    .line 1438
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1439
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 1440
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsDeleteAllException:I

    const-string v0, "NotificationsDeleteAllException"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    const-string p2, "windowBackgroundWhiteRedText5"

    .line 1441
    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 1401
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1402
    invoke-virtual {v6, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setDrawLine(Z)V

    .line 1404
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1408
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v5, :cond_2

    .line 1409
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForPrivateChats:I

    const-string v0, "NotificationsForPrivateChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableAll2"

    .line 1410
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    move-object v7, p2

    goto :goto_1

    .line 1411
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_3

    .line 1412
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForGroups:I

    const-string v0, "NotificationsForGroups"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableGroup2"

    .line 1413
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 1415
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForChannels:I

    const-string v0, "NotificationsForChannels"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableChannel2"

    .line 1416
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 1418
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    if-ge p1, p2, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    .line 1422
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string p2, "NotificationsOn"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    const v0, 0x1e13380

    sub-int v0, p1, v0

    if-lt v0, p2, :cond_6

    .line 1425
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string p2, "NotificationsOff"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1428
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsOffUntil:I

    new-array v0, v5, [Ljava/lang/Object;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "NotificationsOffUntil"

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    :goto_4
    const/4 v11, 0x0

    .line 1431
    invoke-virtual/range {v6 .. v11}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZ)V

    goto/16 :goto_10

    .line 1311
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1312
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1313
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_d

    .line 1316
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    const-wide/16 v1, 0x0

    const-string v3, "SoundDefault"

    if-ne p2, v5, :cond_7

    .line 1317
    sget p2, Lorg/telegram/messenger/R$string;->SoundDefault:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "GlobalSound"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "GlobalSoundDocId"

    .line 1318
    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_5

    .line 1319
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_8

    .line 1320
    sget p2, Lorg/telegram/messenger/R$string;->SoundDefault:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "GroupSound"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "GroupSoundDocId"

    .line 1321
    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    goto :goto_5

    .line 1323
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->SoundDefault:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "ChannelSound"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "ChannelDocId"

    .line 1324
    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    :goto_5
    cmp-long v0, v6, v1

    if-eqz v0, :cond_a

    .line 1327
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MediaDataController;->ringtoneDataStore:Lorg/telegram/messenger/ringtone/RingtoneDataStore;

    invoke-virtual {p2, v6, v7}, Lorg/telegram/messenger/ringtone/RingtoneDataStore;->getDocument(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    if-nez p2, :cond_9

    .line 1329
    sget p2, Lorg/telegram/messenger/R$string;->CustomSound:I

    const-string v0, "CustomSound"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 1331
    :cond_9
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/NotificationsSoundActivity;->trimTitle(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_a
    const-string v0, "NoSound"

    .line 1333
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1334
    sget p2, Lorg/telegram/messenger/R$string;->NoSound:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_b
    const-string v0, "Default"

    .line 1335
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1336
    sget p2, Lorg/telegram/messenger/R$string;->SoundDefault:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1338
    :cond_c
    :goto_6
    sget v0, Lorg/telegram/messenger/R$string;->Sound:I

    const-string v1, "Sound"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    .line 1339
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne p2, v1, :cond_14

    .line 1341
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v5, :cond_e

    const-string p2, "vibrate_messages"

    .line 1342
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_7

    .line 1343
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_f

    const-string p2, "vibrate_group"

    .line 1344
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_7

    :cond_f
    const-string p2, "vibrate_channel"

    .line 1346
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_7
    const-string v0, "Vibrate"

    if-nez p2, :cond_10

    .line 1349
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->VibrationDefault:I

    const-string v1, "VibrationDefault"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_10
    if-ne p2, v5, :cond_11

    .line 1351
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Short:I

    const-string v1, "Short"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_11
    if-ne p2, v3, :cond_12

    .line 1353
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->VibrationDisabled:I

    const-string v1, "VibrationDisabled"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_12
    const/4 v1, 0x3

    if-ne p2, v1, :cond_13

    .line 1355
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Long:I

    const-string v1, "Long"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_13
    if-ne p2, v2, :cond_2b

    .line 1357
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->OnlyIfSilent:I

    const-string v1, "OnlyIfSilent"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    .line 1359
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_1b

    .line 1361
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v5, :cond_15

    const-string p2, "priority_messages"

    .line 1362
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_8

    .line 1363
    :cond_15
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_16

    const-string p2, "priority_group"

    .line 1364
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_8

    :cond_16
    const-string p2, "priority_channel"

    .line 1366
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_8
    const-string v0, "NotificationsImportance"

    if-nez p2, :cond_17

    .line 1369
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsPriorityHigh:I

    const-string v1, "NotificationsPriorityHigh"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_17
    if-eq p2, v5, :cond_1a

    if-ne p2, v3, :cond_18

    goto :goto_9

    :cond_18
    if-ne p2, v2, :cond_19

    .line 1373
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsPriorityLow:I

    const-string v1, "NotificationsPriorityLow"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    :cond_19
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2b

    .line 1375
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsPriorityMedium:I

    const-string v1, "NotificationsPriorityMedium"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    .line 1371
    :cond_1a
    :goto_9
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->NotificationsPriorityUrgent:I

    const-string v1, "NotificationsPriorityUrgent"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    .line 1377
    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2b

    .line 1379
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v5, :cond_1c

    const-string p2, "popupAll"

    .line 1380
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_a

    .line 1381
    :cond_1c
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_1d

    const-string p2, "popupGroup"

    .line 1382
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_a

    :cond_1d
    const-string p2, "popupChannel"

    .line 1384
    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_a
    if-nez p2, :cond_1e

    .line 1388
    sget p2, Lorg/telegram/messenger/R$string;->NoPopup:I

    const-string v0, "NoPopup"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_1e
    if-ne p2, v5, :cond_1f

    .line 1390
    sget p2, Lorg/telegram/messenger/R$string;->OnlyWhenScreenOn:I

    const-string v0, "OnlyWhenScreenOn"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_1f
    if-ne p2, v3, :cond_20

    .line 1392
    sget p2, Lorg/telegram/messenger/R$string;->OnlyWhenScreenOff:I

    const-string v0, "OnlyWhenScreenOff"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    .line 1394
    :cond_20
    sget p2, Lorg/telegram/messenger/R$string;->AlwaysShowPopup:I

    const-string v0, "AlwaysShowPopup"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1396
    :goto_b
    sget v0, Lorg/telegram/messenger/R$string;->PopupNotification:I

    const-string v1, "PopupNotification"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_10

    .line 1303
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    const-string v1, "windowBackgroundGrayShadow"

    if-eq p2, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-eq v0, v2, :cond_23

    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_22

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v2, :cond_22

    goto :goto_c

    .line 1306
    :cond_22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 1304
    :cond_23
    :goto_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 1283
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1284
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    const v1, -0xffff01

    if-ne v0, v5, :cond_24

    const-string v0, "MessagesLed"

    .line 1287
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_d

    .line 1288
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "GroupLed"

    .line 1289
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_d

    :cond_25
    const-string v0, "ChannelLed"

    .line 1291
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    :goto_d
    const/16 v0, 0x9

    if-ge v4, v0, :cond_27

    .line 1294
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->colorsToSave:[I

    aget v0, v0, v4

    if-ne v0, p2, :cond_26

    .line 1295
    sget-object p2, Lorg/telegram/ui/Cells/TextColorCell;->colors:[I

    aget p2, p2, v4

    goto :goto_e

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1299
    :cond_27
    :goto_e
    sget v0, Lorg/telegram/messenger/R$string;->LedColor:I

    const-string v1, "LedColor"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_10

    .line 1277
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    .line 1279
    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v2

    sub-int/2addr v2, v5

    if-eq p2, v2, :cond_28

    const/4 v4, 0x1

    :cond_28
    invoke-virtual {p1, v0, v1, v4}, Lorg/telegram/ui/Cells/UserCell;->setException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;Ljava/lang/CharSequence;Z)V

    goto :goto_10

    .line 1261
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1262
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2b

    .line 1265
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v5, :cond_29

    const-string p2, "EnablePreviewAll"

    .line 1266
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_f

    .line 1267
    :cond_29
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_2a

    const-string p2, "EnablePreviewGroup"

    .line 1268
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_f

    :cond_2a
    const-string p2, "EnablePreviewChannel"

    .line 1270
    invoke-interface {v0, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1272
    :goto_f
    sget v0, Lorg/telegram/messenger/R$string;->MessagePreview:I

    const-string v1, "MessagePreview"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_10

    .line 1254
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 1256
    sget p2, Lorg/telegram/messenger/R$string;->SETTINGS:I

    const-string v0, "SETTINGS"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string p1, "windowBackgroundWhite"

    packed-switch p2, :pswitch_data_0

    .line 1243
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1244
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1238
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 1239
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1234
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1235
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1231
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1227
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 1228
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1223
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2, v2}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 1224
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1219
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1220
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1215
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1216
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1247
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1453
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result v0

    .line 1454
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 1475
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1476
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 1470
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1471
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 1465
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1466
    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 1456
    :cond_4
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1457
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 1458
    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 1460
    :cond_5
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    :cond_6
    :goto_0
    return-void
.end method
