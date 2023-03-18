.class public Lorg/telegram/ui/Adapters/ContactsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "ContactsAdapter.java"


# instance fields
.field private actionModeIsOn:Z

.field private checkedMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private currentAccount:I

.field private disableSections:Z

.field private filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

.field private filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

.field private hasGps:Z

.field private ignoreUsers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private isAdmin:Z

.field private isChannel:Z

.field private isChooseWalletTransferRecipient:Z

.field private isEmpty:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

.field private networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private onlineContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field private onlineContactsDelegate:Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;

.field private onlyUsers:I

.field private qrCodeAction:Lorg/fork/utils/Callbacks$Callback;

.field private recipientValue:Ljava/lang/String;

.field private scrolling:Z

.field private sortType:I


# direct methods
.method public static synthetic $r8$lambda$3g4KRNGHjbJjjF3kzwSgB7fpfN8(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/ContactsAdapter;->lambda$sortOnlineContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R27FhpOyiYuxAM0JJmrX_MEdP48(Lorg/telegram/ui/Adapters/ContactsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->lambda$onBindViewHolder$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$vANPG7OSex5d0jrjYwO3FmRhe-c(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->lambda$bindFilterModel$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLandroidx/collection/LongSparseArray;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;IZ)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 75
    sget-object v0, Lcom/smedialink/model/contacts/ContactsFilter;->ALL:Lcom/smedialink/model/contacts/ContactsFilter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    const-string v0, ""

    .line 78
    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    .line 211
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 227
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 228
    iput p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 229
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 230
    iput-object p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 231
    :goto_0
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    const/4 p3, 0x2

    if-ne p5, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 232
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    .line 233
    iput-boolean p6, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->reCreateDelegates()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/ContactsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/ContactsAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    return p0
.end method

.method private bindFilterModel(Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;Lcom/smedialink/model/contacts/ContactsFilter;)V
    .locals 3

    .line 156
    invoke-virtual {p2}, Lcom/smedialink/model/contacts/ContactsFilter;->getTitle()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/smedialink/model/contacts/ContactsFilter;->getIcon()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 157
    invoke-virtual {p2}, Lcom/smedialink/model/contacts/ContactsFilter;->getNeedShowDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->actionModeIsOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;->setRightIconVisible(Z)V

    .line 158
    sget-object v0, Lcom/smedialink/model/contacts/ContactsFilter;->BLOCKED:Lcom/smedialink/model/contacts/ContactsFilter;

    if-ne p2, v0, :cond_1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    :goto_0
    const-string v0, "windowBackgroundWhiteGrayIcon"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;->setRightIcon(II)V

    .line 159
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;)V

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;->setRightActionClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;
    .locals 3

    .line 167
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 168
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$smedialink$model$contacts$ContactsFilter:[I

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 191
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 192
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    .line 185
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsers()Ljava/util/HashMap;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsersArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 180
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 175
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 170
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 197
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 198
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    :cond_8
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 201
    :goto_2
    new-instance v2, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    invoke-direct {v2, v0, v1}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method private getHintByType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;
    .locals 3

    .line 148
    sget v0, Lorg/telegram/messenger/R$string;->wallet_recipient_address_hint:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getShortName()I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isFilterRow(I)Z
    .locals 3

    .line 152
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    :cond_0
    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private synthetic lambda$bindFilterModel$0(Landroid/view/View;)V
    .locals 4

    .line 159
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 1

    .line 662
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->qrCodeAction:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {v0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static synthetic lambda$sortOnlineContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 277
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 278
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 282
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 284
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 285
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 289
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 291
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 292
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const/4 p0, -0x1

    const/4 p2, 0x1

    if-lez p3, :cond_6

    if-lez p1, :cond_6

    if-le p3, p1, :cond_4

    return p2

    :cond_4
    if-ge p3, p1, :cond_5

    return p0

    :cond_5
    return v0

    :cond_6
    if-gez p3, :cond_9

    if-gez p1, :cond_9

    if-le p3, p1, :cond_7

    return p2

    :cond_7
    if-ge p3, p1, :cond_8

    return p0

    :cond_8
    return v0

    :cond_9
    if-gez p3, :cond_a

    if-gtz p1, :cond_b

    :cond_a
    if-nez p3, :cond_c

    if-eqz p1, :cond_c

    :cond_b
    return p0

    :cond_c
    if-gez p1, :cond_d

    if-gtz p3, :cond_e

    :cond_d
    if-nez p1, :cond_f

    if-eqz p3, :cond_f

    :cond_e
    return p2

    :cond_f
    return v0
.end method


# virtual methods
.method public changeActionMode(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->actionModeIsOn:Z

    .line 101
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCountForSection(I)I
    .locals 7

    .line 460
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 461
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 464
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 465
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 467
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_2

    return v4

    :cond_2
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 473
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_7

    .line 474
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_4

    return v5

    .line 477
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 478
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 480
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :cond_6
    return v0

    :cond_7
    if-nez p1, :cond_c

    .line 488
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p1, :cond_8

    return v1

    .line 492
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_9

    return v1

    .line 494
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_b

    .line 496
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_a

    const/4 v1, 0x3

    :cond_a
    add-int/2addr v1, v5

    return v1

    :cond_b
    const/4 p1, 0x4

    return p1

    .line 501
    :cond_c
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v3, :cond_d

    return v5

    .line 504
    :cond_d
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v3, v1, :cond_f

    if-ne p1, v5, :cond_12

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_2

    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    :goto_2
    return v4

    :cond_f
    sub-int/2addr p1, v5

    .line 509
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 510
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 512
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_10

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_11

    :cond_10
    add-int/lit8 v0, v0, 0x1

    :cond_11
    return v0

    :cond_12
    return v4
.end method

.method public getFilteredContacts(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/contacts/ContactsFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;

    invoke-virtual {v0, p1}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;->getContactsByFilter(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 7

    .line 333
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 334
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 337
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v3, :cond_2

    .line 338
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 340
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 343
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_4

    .line 344
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 345
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 346
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 347
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v4

    :cond_4
    if-nez p1, :cond_5

    return-object v4

    .line 355
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v5, 0x1

    if-ne v3, v1, :cond_7

    if-ne p1, v5, :cond_9

    .line 357
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_6

    .line 358
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v4

    :cond_7
    sub-int/2addr p1, v5

    .line 363
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 364
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 365
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 366
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v4

    .line 373
    :cond_9
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_a

    .line 374
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    return-object v4
.end method

.method public getItemViewType(II)I
    .locals 9

    .line 759
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 760
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_1

    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 762
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v3, :cond_2

    .line 763
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 764
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 765
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 768
    :cond_2
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_5

    .line 769
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_3

    return v4

    .line 772
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 773
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    :goto_2
    return v5

    :cond_5
    const/4 v3, 0x1

    if-nez p1, :cond_f

    .line 777
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p1, :cond_7

    if-nez p2, :cond_6

    .line 779
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    return p1

    :cond_6
    if-ne p2, v3, :cond_14

    return v1

    .line 784
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_8

    if-ne p2, v3, :cond_14

    return v1

    .line 788
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_d

    add-int/lit8 p2, p2, -0x1

    .line 790
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_9

    if-eq p2, v1, :cond_a

    :cond_9
    if-nez p1, :cond_c

    if-ne p2, v3, :cond_c

    .line 791
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_b

    const/4 v1, 0x5

    :cond_b
    return v1

    :cond_c
    add-int/2addr p2, v3

    goto :goto_5

    :cond_d
    if-ne p2, v6, :cond_14

    .line 795
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_e

    const/4 v1, 0x5

    :cond_e
    return v1

    .line 798
    :cond_f
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v7, :cond_10

    return v4

    .line 801
    :cond_10
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v4, v1, :cond_12

    if-ne p1, v3, :cond_14

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_11

    goto :goto_3

    :cond_11
    const/4 v5, 0x3

    :goto_3
    return v5

    :cond_12
    sub-int/2addr p1, v3

    .line 806
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_14

    .line 807
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 808
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_13

    goto :goto_4

    :cond_13
    const/4 v5, 0x3

    :goto_4
    return v5

    .line 814
    :cond_14
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_15

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 815
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_FILTER:I

    return p1

    :cond_15
    return v3
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 3

    .line 823
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 826
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 828
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 829
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 832
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 834
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 836
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_4

    if-ltz p1, :cond_5

    .line 837
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 838
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    if-lez p1, :cond_5

    .line 841
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 842
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    :goto_1
    return-object v1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 850
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 851
    aput p2, p3, p1

    return-void
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 3

    const/4 v0, 0x0

    .line 429
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    .line 430
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    .line 434
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 436
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v1, :cond_2

    .line 437
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 440
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 442
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    :cond_3
    move v2, v0

    .line 446
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 449
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    return v2
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 5

    .line 528
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 529
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 532
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 533
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    .line 535
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 539
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .line 541
    :cond_3
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .line 542
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const-string v4, ""

    if-eq v3, v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_4

    goto :goto_2

    .line 545
    :cond_4
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v1, :cond_6

    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 547
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 549
    :cond_5
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-nez p1, :cond_7

    .line 553
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 555
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 557
    :cond_8
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 543
    :cond_9
    :goto_2
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    :goto_3
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 6

    .line 381
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 382
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 385
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    .line 391
    :cond_2
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_5

    .line 392
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v0, :cond_3

    return v3

    .line 395
    :cond_3
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :cond_5
    if-nez p2, :cond_d

    .line 399
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_7

    if-eq p3, v4, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    .line 401
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_b

    add-int/lit8 p3, p3, -0x1

    .line 403
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_8

    if-ne p3, v0, :cond_9

    :cond_8
    if-nez p1, :cond_a

    if-eq p3, v4, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    return v3

    :cond_b
    const/4 p1, 0x3

    if-eq p3, p1, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3

    .line 408
    :cond_d
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v2, :cond_e

    return v3

    .line 411
    :cond_e
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v2, v0, :cond_10

    if-ne p2, v4, :cond_12

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3

    :cond_10
    sub-int/2addr p2, v4

    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_12

    .line 417
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 418
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_11

    const/4 v3, 0x1

    :cond_11
    return v3

    :cond_12
    return v4
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 651
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_FILTER:I

    if-ne v0, v1, :cond_0

    .line 652
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;

    .line 653
    iget-boolean p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p3, :cond_1c

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result p2

    if-eqz p2, :cond_1c

    .line 654
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->bindFilterModel(Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;Lcom/smedialink/model/contacts/ContactsFilter;)V

    goto/16 :goto_6

    .line 656
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 657
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 658
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {p2, v3, v3, p3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 659
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 660
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const-string p3, "chats_actionBackground"

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    .line 661
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;)V

    invoke-static {p2, p3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setRightDrawableOnClickListener(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 664
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    const/high16 p2, 0x41900000    # 18.0f

    invoke-virtual {p1, v2, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_6

    .line 666
    :cond_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_2

    goto/16 :goto_6

    .line 741
    :cond_2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 743
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p2, :cond_3

    .line 744
    sget p2, Lorg/telegram/messenger/R$string;->wallet_recipient_or_choose_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 746
    :cond_3
    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-nez p2, :cond_4

    .line 747
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string p3, "Contacts"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    if-ne p2, v2, :cond_5

    .line 749
    sget p2, Lorg/telegram/messenger/R$string;->SortedByName:I

    const-string p3, "SortedByName"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 751
    :cond_5
    sget p2, Lorg/telegram/messenger/R$string;->SortedByLastSeen:I

    const-string p3, "SortedByLastSeen"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 699
    :cond_6
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/TextCell;

    if-nez p1, :cond_d

    .line 701
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_8

    if-nez p2, :cond_7

    .line 703
    sget p1, Lorg/telegram/messenger/R$string;->InviteFriends:I

    const-string p2, "InviteFriends"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_invite:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 704
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    xor-int/2addr p1, v2

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_6

    :cond_7
    if-ne p2, v2, :cond_1c

    .line 706
    sget p1, Lorg/telegram/messenger/R$string;->AddPeopleNearby:I

    const-string p2, "AddPeopleNearby"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_location:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 707
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_6

    .line 709
    :cond_8
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_a

    .line 710
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    if-eqz p1, :cond_9

    .line 711
    sget p1, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string p2, "ChannelInviteViaLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 713
    :cond_9
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    const-string p2, "InviteToGroupByLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_6

    :cond_a
    if-nez p2, :cond_b

    .line 717
    sget p1, Lorg/telegram/messenger/R$string;->NewGroup:I

    const-string p2, "NewGroup"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_6

    :cond_b
    if-ne p2, v2, :cond_c

    .line 719
    sget p1, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string p2, "NewSecretChat"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_6

    :cond_c
    if-ne p2, v1, :cond_1c

    .line 721
    sget p1, Lorg/telegram/messenger/R$string;->NewChannel:I

    const-string p2, "NewChannel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {p3, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_6

    .line 726
    :cond_d
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p2, :cond_e

    goto/16 :goto_6

    .line 730
    :cond_e
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 731
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz p2, :cond_f

    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 732
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_f
    if-eqz p2, :cond_10

    .line 733
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 734
    invoke-virtual {p3, p2, v3}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 736
    :cond_10
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {p3, p1, v3}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 668
    :cond_11
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/UserCell;

    .line 669
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-eq v0, v1, :cond_13

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-eqz v0, :cond_12

    goto :goto_0

    :cond_12
    const/16 v0, 0x3a

    goto :goto_1

    :cond_13
    :goto_0
    const/4 v0, 0x6

    :goto_1
    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    .line 671
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v0, v1, :cond_14

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_5

    .line 674
    :cond_14
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_15

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_2

    :cond_15
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 675
    :goto_2
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v4, v1, :cond_16

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_3

    :cond_16
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 677
    :goto_3
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_17

    .line 678
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/smedialink/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 680
    invoke-virtual {v0}, Lcom/smedialink/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 683
    :cond_17
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_18

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_4

    :cond_18
    const/4 v4, 0x1

    :goto_4
    sub-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 685
    :goto_5
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    const/4 p2, 0x0

    .line 686
    invoke-virtual {p3, p1, p2, p2, v3}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 687
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1a

    .line 688
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_19

    const/4 v3, 0x1

    :cond_19
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    xor-int/2addr p2, v2

    invoke-virtual {p3, v3, p2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 690
    :cond_1a
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_1c

    .line 691
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_1b

    const/high16 p1, 0x3f000000    # 0.5f

    .line 692
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_6

    :cond_1b
    const/high16 p1, 0x3f800000    # 1.0f

    .line 694
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1c
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 568
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_FILTER:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 569
    new-instance p1, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x17

    invoke-direct {p1, p2, v0, v1}, Lcom/smedialink/ui/contacts/view/TextCellWithRightImage;-><init>(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 570
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 571
    new-instance p1, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 572
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Lorg/telegram/ui/Cells/EditTextSettingsCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 578
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getHintByType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 579
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 580
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 581
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 582
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_1

    :cond_1
    if-eqz p2, :cond_8

    if-eq p2, v2, :cond_7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_6

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    .line 638
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 639
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 640
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "windowBackgroundGray"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 641
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 642
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 605
    :cond_2
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$2;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 632
    new-instance p1, Lorg/telegram/ui/Components/ContactsEmptyView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/ContactsEmptyView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    const/4 v1, -0x2

    .line 633
    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, p2

    goto :goto_1

    .line 601
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 602
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x1c

    const/16 v1, 0x48

    if-eqz p2, :cond_4

    const/16 p2, 0x1c

    goto :goto_0

    :cond_4
    const/16 p2, 0x48

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_5

    const/16 v0, 0x48

    :cond_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 598
    :cond_6
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 595
    :cond_7
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 587
    :cond_8
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x3a

    invoke-direct {p1, p2, v0, v2, v1}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 589
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p2, :cond_9

    .line 590
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->changeCheckBoxMargins()V

    .line 645
    :cond_9
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public reCreateDelegates()V
    .locals 3

    .line 116
    new-instance v0, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-direct {v0, v1}, Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/smedialink/domain/contacts/FilteredContactsByNameDelegate;

    .line 118
    new-instance v0, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 120
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;-><init>(ILjava/util/ArrayList;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public refreshContactsList()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/smedialink/domain/contacts/FilteredByOnlineContactsDelegate;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    :cond_0
    return-void
.end method

.method public refreshOnBlockedUsersLoaded()V
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    sget-object v1, Lcom/smedialink/model/contacts/ContactsFilter;->BLOCKED:Lcom/smedialink/model/contacts/ContactsFilter;

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCheckedMap(Landroidx/collection/LongSparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "*>;)V"
        }
    .end annotation

    .line 325
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setChooseWalletTransferRecipientMode(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    return-void
.end method

.method public setDisableSections(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    return-void
.end method

.method public setFilterModel(Lcom/smedialink/model/contacts/ContactsFilter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    return-void
.end method

.method public setNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public setQrCodeAction(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->qrCodeAction:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method

.method public setSortType(IZ)V
    .locals 5

    .line 246
    iput p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 248
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_3

    .line 249
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 251
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_1

    .line 252
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/smedialink/model/contacts/ContactsFilter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/smedialink/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 255
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 257
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    goto :goto_2

    .line 265
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public sortOnlineContacts()V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 274
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 275
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 320
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
