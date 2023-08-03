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

.field dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

.field private disableSections:Z

.field private filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

.field private filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private hasGps:Z

.field public hasStories:Z

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

.field private networkShortName:Ljava/lang/String;

.field private onlineContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation
.end field

.field private onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

.field private onlyUsers:I

.field private qrCodeAction:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private recipientValue:Ljava/lang/String;

.field private scrolling:Z

.field private sortType:I

.field public userStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;"
        }
    .end annotation
.end field


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

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;IZLandroidx/collection/LongSparseArray;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "IZ",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;IZ)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 78
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    const-string v0, ""

    .line 81
    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    .line 214
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 236
    iput p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 237
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 238
    iput-object p5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    move p4, p3

    .line 239
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    const/4 p4, 0x2

    if-ne p6, p4, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 240
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    .line 241
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    .line 242
    iput-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 243
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->reCreateDelegates()V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/ContactsAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/ContactsAdapter;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    return p0
.end method

.method private bindFilterModel(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;Lcom/iMe/model/contacts/ContactsFilter;)V
    .locals 3

    .line 159
    invoke-virtual {p2}, Lcom/iMe/model/contacts/ContactsFilter;->getTitle()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/model/contacts/ContactsFilter;->getIcon()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 160
    invoke-virtual {p2}, Lcom/iMe/model/contacts/ContactsFilter;->getNeedShowDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->actionModeIsOn:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightIconVisible(Z)V

    .line 161
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne p2, v0, :cond_1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_actions:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    :goto_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightIcon(II)V

    .line 162
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;)V

    invoke-virtual {p1, p2}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightActionClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;
    .locals 3

    .line 170
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 171
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$4;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

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

    .line 194
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

    .line 195
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

    .line 188
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsers()Ljava/util/HashMap;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsersArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 183
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 178
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 173
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 200
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

    .line 201
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

    .line 204
    :goto_2
    new-instance v2, Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    invoke-direct {v2, v0, v1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method private getCountForSectionInternal(I)I
    .locals 7

    .line 527
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

    .line 528
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

    .line 531
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 532
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 534
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 535
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

    .line 540
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-ne p1, v5, :cond_4

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v5

    return p1

    :cond_4
    if-eqz v3, :cond_5

    if-le p1, v5, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 545
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_9

    .line 546
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_6

    return v5

    .line 549
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_14

    .line 550
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :cond_8
    return v0

    :cond_9
    if-nez p1, :cond_e

    .line 560
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p1, :cond_a

    return v1

    .line 564
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_b

    return v1

    .line 566
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_d

    .line 568
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_c

    const/4 v1, 0x3

    :cond_c
    add-int/2addr v1, v5

    return v1

    :cond_d
    const/4 p1, 0x4

    return p1

    .line 573
    :cond_e
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v3, :cond_f

    return v5

    .line 576
    :cond_f
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v3, v1, :cond_11

    if-ne p1, v5, :cond_14

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_2

    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    :goto_2
    return v4

    :cond_11
    sub-int/2addr p1, v5

    .line 581
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_14

    .line 582
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 583
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 584
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_12

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_13

    :cond_12
    add-int/lit8 v0, v0, 0x1

    :cond_13
    return v0

    :cond_14
    return v4
.end method

.method private getHint()Ljava/lang/String;
    .locals 4

    .line 151
    sget v0, Lorg/telegram/messenger/R$string;->wallet_recipient_address_hint:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->networkShortName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isFilterRow(I)Z
    .locals 3

    .line 155
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

    .line 162
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->onContactsActionsClicked:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2()V
    .locals 1

    .line 754
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->qrCodeAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {v0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private static synthetic lambda$sortOnlineContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 296
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 297
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 301
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 303
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 304
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 308
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 310
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 311
    iget p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_3
    move p1, v0

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

    .line 103
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->actionModeIsOn:Z

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCountForSection(I)I
    .locals 0

    .line 523
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCountForSectionInternal(I)I

    move-result p1

    return p1
.end method

.method public getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/contacts/ContactsFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_contact;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getContactsByFilter(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getHash(II)I
    .locals 5

    .line 418
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const v1, -0xc1cc

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_1

    .line 419
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    mul-int/2addr v1, p1

    .line 420
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const v1, -0xd433

    mul-int/2addr v1, p1

    .line 422
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    if-eqz v0, :cond_2

    if-le p1, v4, :cond_2

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_2
    move v0, p1

    .line 426
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    mul-int/2addr v0, v1

    .line 427
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    aput-object p1, p2, v4

    invoke-static {p2}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 7

    .line 352
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItemViewType(II)I

    move-result v0

    const-string v1, "Header"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 353
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz p1, :cond_0

    const-string p1, "Stories"

    return-object p1

    :cond_0
    return-object v1

    .line 359
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_3

    .line 360
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    return-object v1

    .line 363
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    if-le p1, v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 369
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 370
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v1, v2, :cond_6

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 373
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_7

    .line 374
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 379
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_9

    .line 380
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_8

    .line 381
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 382
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 383
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
    return-object v5

    :cond_9
    if-nez p1, :cond_a

    return-object v5

    .line 391
    :cond_a
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v4, v2, :cond_c

    if-ne p1, v3, :cond_e

    .line 393
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_b

    .line 394
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

    :cond_b
    return-object v5

    :cond_c
    sub-int/2addr p1, v3

    .line 399
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_e

    .line 400
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_d

    .line 402
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

    :cond_d
    return-object v5

    .line 409
    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_f

    if-ltz p2, :cond_f

    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_f

    .line 410
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    return-object v5
.end method

.method public getItemViewType(II)I
    .locals 9

    .line 885
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

    .line 886
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

    .line 888
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v3, :cond_2

    .line 889
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 890
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 891
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 894
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    if-ne p1, v5, :cond_4

    .line 895
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_3

    return v1

    :cond_3
    return v4

    :cond_4
    if-eqz v3, :cond_5

    if-le p1, v5, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 903
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_8

    .line 904
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_6

    return v6

    .line 907
    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 908
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_7

    goto :goto_2

    :cond_7
    move v4, v7

    :goto_2
    return v4

    :cond_8
    if-nez p1, :cond_12

    .line 912
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p1, :cond_a

    if-nez p2, :cond_9

    .line 914
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    return p1

    :cond_9
    if-ne p2, v5, :cond_17

    return v1

    .line 920
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_b

    if-ne p2, v5, :cond_17

    return v1

    .line 924
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_10

    add-int/lit8 p2, p2, -0x1

    .line 926
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_c

    if-eq p2, v1, :cond_d

    :cond_c
    if-nez p1, :cond_f

    if-ne p2, v5, :cond_f

    .line 927
    :cond_d
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_e

    move v1, v0

    :cond_e
    return v1

    :cond_f
    add-int/2addr p2, v5

    goto :goto_5

    :cond_10
    if-ne p2, v7, :cond_17

    .line 931
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_11

    move v1, v0

    :cond_11
    return v1

    .line 934
    :cond_12
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v3, :cond_13

    return v6

    .line 937
    :cond_13
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v3, v1, :cond_15

    if-ne p1, v5, :cond_17

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_14

    goto :goto_3

    :cond_14
    move v4, v7

    :goto_3
    return v4

    :cond_15
    sub-int/2addr p1, v5

    .line 942
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_17

    .line 943
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 944
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_16

    goto :goto_4

    :cond_16
    move v4, v7

    :goto_4
    return v4

    .line 950
    :cond_17
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_18

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 951
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    return p1

    :cond_18
    return v5
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 3

    .line 959
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 962
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

    .line 964
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 965
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 968
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 970
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 972
    :cond_3
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_4

    if-ltz p1, :cond_5

    .line 973
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    .line 974
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_4
    if-lez p1, :cond_5

    .line 977
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 978
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

    .line 986
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 987
    aput p2, p3, p1

    return-void
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->recipientValue:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionCount()I
    .locals 3

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    .line 490
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    .line 494
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

    .line 496
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v1, :cond_2

    .line 497
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 500
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 502
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    :cond_3
    move v2, v0

    .line 506
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 509
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 515
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    return v2
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .line 600
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

    .line 601
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

    .line 604
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_2

    .line 605
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 609
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .line 611
    :cond_3
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .line 612
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v3, :cond_4

    if-ne p1, v4, :cond_4

    .line 613
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    return-object v2

    :cond_4
    if-eqz v3, :cond_5

    if-le p1, v4, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 618
    :cond_5
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-eq v3, v1, :cond_b

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_6

    goto :goto_2

    .line 621
    :cond_6
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v1, :cond_8

    .line 622
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 623
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 625
    :cond_7
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_9

    .line 629
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    sub-int/2addr p1, v4

    .line 630
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_a

    .line 631
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 633
    :cond_a
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 619
    :cond_b
    :goto_2
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    :goto_3
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 6

    .line 432
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p2, v1, :cond_1

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p3, p1, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    if-le p2, v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 441
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 442
    :goto_0
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v3, v2, :cond_4

    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 445
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v4, :cond_5

    .line 446
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v3

    .line 448
    invoke-virtual {p1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object p1

    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    .line 451
    :cond_5
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_8

    .line 452
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v2, :cond_6

    return v0

    .line 455
    :cond_6
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 456
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    :cond_8
    if-nez p2, :cond_10

    .line 459
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_a

    if-eq p3, v1, :cond_9

    move v0, v1

    :cond_9
    return v0

    .line 461
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_e

    add-int/lit8 p3, p3, -0x1

    .line 463
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_b

    if-ne p3, v2, :cond_c

    :cond_b
    if-nez p1, :cond_d

    if-eq p3, v1, :cond_d

    :cond_c
    move v0, v1

    :cond_d
    return v0

    :cond_e
    const/4 p1, 0x3

    if-eq p3, p1, :cond_f

    move v0, v1

    :cond_f
    return v0

    .line 468
    :cond_10
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v4, :cond_11

    return v0

    .line 471
    :cond_11
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v4, v2, :cond_13

    if-ne p2, v1, :cond_15

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_12

    move v0, v1

    :cond_12
    return v0

    :cond_13
    sub-int/2addr p2, v1

    .line 476
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_15

    .line 477
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_14

    move v0, v1

    :cond_14
    return v0

    :cond_15
    return v1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 744
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    const-string v2, "SortedByName"

    const-string v3, "SortedByLastSeen"

    const-string v4, "Contacts"

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_0

    .line 745
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    .line 746
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v1, :cond_8

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->bindFilterModel(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;Lcom/iMe/model/contacts/ContactsFilter;)V

    goto/16 :goto_1

    .line 749
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sget v1, Lcom/iMe/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    if-ne v0, v1, :cond_1

    .line 750
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    .line 751
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v8, v8, v9, v8}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 752
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 753
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-static {v1, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    .line 754
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    new-instance v9, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;)V

    invoke-static {v1, v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRightDrawableOnClickListener(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 755
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v7, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    goto/16 :goto_1

    .line 757
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz v0, :cond_7

    if-ne p1, v7, :cond_7

    .line 758
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v6, :cond_2

    goto/16 :goto_0

    .line 775
    :cond_2
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 776
    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-nez p2, :cond_3

    .line 777
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v7, :cond_4

    .line 779
    sget p2, Lorg/telegram/messenger/R$string;->SortedByName:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 781
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->SortedByLastSeen:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 760
    :cond_5
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 761
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    .line 762
    iget-object p3, p1, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v7, p3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 763
    iget p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p3

    .line 764
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 765
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 766
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadStoriesCount(J)I

    move-result p2

    .line 767
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "NewStories"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2, v8}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 769
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_userStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 770
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p3

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    const-string v2, "Stories"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p3, p2, v8}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_7
    if-eqz v0, :cond_8

    if-le p1, v7, :cond_8

    add-int/lit8 p1, p1, -0x1

    .line 789
    :cond_8
    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_19

    if-eq v0, v7, :cond_e

    if-eq v0, v6, :cond_9

    goto/16 :goto_7

    .line 865
    :cond_9
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 867
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-eqz p2, :cond_a

    .line 868
    sget p2, Lorg/telegram/messenger/R$string;->wallet_recipient_or_choose_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 870
    :cond_a
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz p2, :cond_b

    .line 871
    sget p2, Lorg/telegram/messenger/R$string;->HiddenStories:I

    const-string p3, "HiddenStories"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 872
    :cond_b
    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-nez p2, :cond_c

    .line 873
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_c
    if-ne p2, v7, :cond_d

    .line 875
    sget p2, Lorg/telegram/messenger/R$string;->SortedByName:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 877
    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->SortedByLastSeen:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 823
    :cond_e
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/TextCell;

    if-nez p1, :cond_15

    .line 825
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_10

    if-nez p2, :cond_f

    .line 827
    sget p1, Lorg/telegram/messenger/R$string;->InviteFriends:I

    const-string p2, "InviteFriends"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_invite:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 828
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    xor-int/2addr p1, v7

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_7

    :cond_f
    if-ne p2, v7, :cond_24

    .line 830
    sget p1, Lorg/telegram/messenger/R$string;->AddPeopleNearby:I

    const-string p2, "AddPeopleNearby"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_location:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    .line 831
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_7

    .line 833
    :cond_10
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_12

    .line 834
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    if-eqz p1, :cond_11

    .line 835
    sget p1, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string p2, "ChannelInviteViaLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 837
    :cond_11
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    const-string p2, "InviteToGroupByLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_12
    if-nez p2, :cond_13

    .line 841
    sget p1, Lorg/telegram/messenger/R$string;->NewGroup:I

    const-string p2, "NewGroup"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_13
    if-ne p2, v7, :cond_14

    .line 843
    sget p1, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string p2, "NewSecretChat"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    :cond_14
    if-ne p2, v6, :cond_24

    .line 845
    sget p1, Lorg/telegram/messenger/R$string;->NewChannel:I

    const-string p2, "NewChannel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 850
    :cond_15
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p2, :cond_16

    goto/16 :goto_7

    .line 854
    :cond_16
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 855
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz p2, :cond_17

    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 856
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

    invoke-virtual {p3, p1, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_17
    if-eqz p2, :cond_18

    .line 857
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 858
    invoke-virtual {p3, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 860
    :cond_18
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {p3, p1, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 791
    :cond_19
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/UserCell;

    .line 792
    iget-object v0, p3, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 793
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-eq v0, v6, :cond_1b

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-eqz v0, :cond_1a

    goto :goto_2

    :cond_1a
    const/16 v5, 0x3a

    :cond_1b
    :goto_2
    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    .line 795
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v0, v6, :cond_1c

    .line 796
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_6

    .line 798
    :cond_1c
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v6, :cond_1d

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_3

    :cond_1d
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 799
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v1, v6, :cond_1e

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_4

    :cond_1e
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 801
    :goto_4
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v2, :cond_1f

    .line 802
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 804
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 807
    :cond_1f
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_20

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_20

    move v2, v8

    goto :goto_5

    :cond_20
    move v2, v7

    :goto_5
    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 809
    :goto_6
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

    .line 810
    invoke-virtual {p3, p1, p2, p2, v8}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 811
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_22

    .line 812
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_21

    move v8, v7

    :cond_21
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    xor-int/2addr p2, v7

    invoke-virtual {p3, v8, p2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 814
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_24

    .line 815
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_23

    const/high16 p1, 0x3f000000    # 0.5f

    .line 816
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_7

    :cond_23
    const/high16 p1, 0x3f800000    # 1.0f

    .line 818
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_24
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 644
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 645
    new-instance p1, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x17

    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;-><init>(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    .line 646
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->CONTACTS_INPUT_ADDRESS:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    .line 647
    new-instance p1, Lorg/telegram/ui/Cells/EditTextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 648
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Lorg/telegram/ui/Cells/EditTextSettingsCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 654
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getHint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 656
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 657
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 658
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/EditTextSettingsCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_a

    if-eq p2, v3, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    if-eq p2, v2, :cond_2

    .line 730
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 731
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 732
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 733
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 734
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 713
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-nez p1, :cond_3

    .line 714
    new-instance p1, Lorg/telegram/ui/Adapters/ContactsAdapter$3;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v6, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Adapters/ContactsAdapter$3;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 p2, 0x0

    .line 720
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setProgressToCollapse(FZ)V

    goto :goto_0

    .line 722
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 724
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 725
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 681
    :cond_4
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$2;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 708
    new-instance p1, Lorg/telegram/ui/Components/ContactsEmptyView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/ContactsEmptyView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    const/4 v1, -0x2

    .line 709
    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, p2

    goto :goto_2

    .line 677
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 678
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x1c

    const/16 v1, 0x48

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_1

    :cond_6
    move p2, v1

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 674
    :cond_8
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 671
    :cond_9
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 663
    :cond_a
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x3a

    invoke-direct {p1, p2, v0, v3, v1}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 665
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p2, :cond_b

    .line 666
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->changeCheckBoxMargins()V

    .line 738
    :cond_b
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onStoryLongPressed(Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method public reCreateDelegates()V
    .locals 3

    .line 119
    new-instance v0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-direct {v0, v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    .line 121
    new-instance v0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 123
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;-><init>(ILjava/util/ArrayList;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public refreshContactsList()V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    :cond_0
    return-void
.end method

.method public refreshOnBlockedUsersLoaded()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne v0, v1, :cond_0

    .line 94
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

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setChooseWalletTransferRecipientMode(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    return-void
.end method

.method public setDisableSections(Z)V
    .locals 0

    .line 257
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    return-void
.end method

.method public setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    return-void
.end method

.method public setNetworkShortName(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->networkShortName:Ljava/lang/String;

    return-void
.end method

.method public setQrCodeAction(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->qrCodeAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method

.method public setSortType(IZ)V
    .locals 4

    .line 265
    iput p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_3

    .line 268
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 270
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 274
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v0, 0x0

    .line 275
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 276
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    :goto_2
    return-void
.end method

.method public setStories(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_userStories;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public sortOnlineContacts()V
    .locals 1

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 293
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 294
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 295
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 339
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
