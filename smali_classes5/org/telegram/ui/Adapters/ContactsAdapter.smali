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

.field private isChoosePremiumGiftRecipient:Z

.field private isChooseWalletTransferRecipient:Z

.field private isEmpty:Z

.field private mContext:Landroid/content/Context;

.field private needPhonebook:Z

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

.field private scrolling:Z

.field private sortType:I

.field public userStories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$PeerStories;",
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

    .line 229
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 74
    sget-object v0, Lcom/iMe/model/contacts/ContactsFilter;->ALL:Lcom/iMe/model/contacts/ContactsFilter;

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    .line 209
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    .line 230
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    .line 231
    iput p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    .line 232
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    .line 233
    iput-object p5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p6, :cond_0

    move p4, p1

    goto :goto_0

    :cond_0
    move p4, p3

    .line 234
    :goto_0
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    const/4 p4, 0x2

    if-ne p6, p4, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    .line 235
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    .line 236
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    .line 237
    iput-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 238
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->recreateDelegates()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/ContactsAdapter;)I
    .locals 0

    .line 67
    iget p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/ContactsAdapter;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    return p0
.end method

.method private bindFilterModel(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;Lcom/iMe/model/contacts/ContactsFilter;)V
    .locals 3

    .line 146
    invoke-virtual {p2}, Lcom/iMe/model/contacts/ContactsFilter;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/model/contacts/ContactsFilter;->getIcon()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 147
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

    .line 148
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

    .line 149
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;)V

    invoke-virtual {p1, p2}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;->setRightActionClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;
    .locals 3

    .line 157
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getGiftPremiumContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getGiftPremiumContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto/16 :goto_2

    .line 160
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    .line 161
    sget-object v0, Lorg/telegram/ui/Adapters/ContactsAdapter$3;->$SwitchMap$com$iMe$model$contacts$ContactsFilter:[I

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    .line 189
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 190
    :goto_0
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    .line 183
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsers()Ljava/util/HashMap;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getBlockedUsersArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 178
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getNotMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 173
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getMutualContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getMutualContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 168
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getPremiumContacts()Ljava/util/HashMap;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getPremiumContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 163
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v0}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsDictionary()Ljava/util/HashMap;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    invoke-virtual {v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;->getOnlineContactsArr()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 195
    :cond_8
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_1

    :cond_9
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 196
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v2, v1, :cond_a

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_2

    :cond_a
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 199
    :goto_2
    new-instance v2, Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    invoke-direct {v2, v0, v1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method private getCountForSectionInternal(I)I
    .locals 7

    .line 522
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

    .line 523
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

    .line 526
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v3, :cond_4

    .line 527
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 529
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 530
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v3, p1, v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_3

    return v4

    :cond_3
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 535
    :cond_4
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-ne p1, v5, :cond_5

    .line 536
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v5

    return p1

    :cond_5
    if-eqz v3, :cond_6

    if-le p1, v5, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 540
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_a

    .line 541
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_7

    return v5

    .line 544
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_16

    .line 545
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 546
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :cond_9
    return v0

    :cond_a
    if-nez p1, :cond_10

    .line 555
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz p1, :cond_b

    goto :goto_2

    .line 559
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_c

    return v1

    .line 561
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_e

    .line 563
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_d

    const/4 v1, 0x3

    :cond_d
    add-int/2addr v1, v5

    return v1

    :cond_e
    const/4 p1, 0x4

    return p1

    :cond_f
    :goto_2
    return v4

    .line 568
    :cond_10
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v3, :cond_11

    return v5

    .line 571
    :cond_11
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v3, v1, :cond_13

    if-ne p1, v5, :cond_16

    .line 573
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_3

    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    :goto_3
    return v4

    :cond_13
    sub-int/2addr p1, v5

    .line 576
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_16

    .line 577
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 578
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 579
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne p1, v1, :cond_14

    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_15

    :cond_14
    add-int/lit8 v0, v0, 0x1

    :cond_15
    return v0

    :cond_16
    return v4
.end method

.method private isFilterRow(I)Z
    .locals 3

    .line 142
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

    .line 149
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

.method private static synthetic lambda$sortOnlineContacts$1(Lorg/telegram/messenger/MessagesController;ILorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2

    .line 291
    iget-wide v0, p3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 292
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p0

    const p2, 0xc350

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 296
    iget-boolean v1, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_0

    add-int p3, p1, p2

    goto :goto_0

    .line 298
    :cond_0
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p3, :cond_1

    .line 299
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-eqz p0, :cond_3

    .line 303
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v1, :cond_2

    add-int/2addr p1, p2

    goto :goto_1

    .line 305
    :cond_2
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz p0, :cond_3

    .line 306
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

    .line 98
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->actionModeIsOn:Z

    .line 99
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCountForSection(I)I
    .locals 0

    .line 518
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

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;->getContactsByFilter(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getHash(II)I
    .locals 5

    .line 413
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const v1, -0xc1cc

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v4, :cond_1

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    mul-int/2addr v1, p1

    .line 415
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

    .line 417
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

    .line 421
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    mul-int/2addr v0, v1

    .line 422
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

    .line 347
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getItemViewType(II)I

    move-result v0

    const-string v1, "Header"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 348
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz p1, :cond_0

    const-string p1, "Stories"

    return-object p1

    :cond_0
    return-object v1

    .line 354
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_3

    .line 355
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    return-object v1

    .line 358
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    if-le p1, v3, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 364
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

    .line 365
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

    .line 368
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v4, :cond_8

    .line 369
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 371
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 374
    :cond_8
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v5, 0x0

    if-eqz v4, :cond_a

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_a

    .line 375
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_9

    .line 376
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_9

    .line 378
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

    :cond_9
    return-object v5

    :cond_a
    if-nez p1, :cond_b

    return-object v5

    .line 386
    :cond_b
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v4, v2, :cond_d

    if-ne p1, v3, :cond_f

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_c

    .line 389
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

    :cond_c
    return-object v5

    :cond_d
    sub-int/2addr p1, v3

    .line 394
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_f

    .line 395
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 396
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_e

    .line 397
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

    :cond_e
    return-object v5

    .line 404
    :cond_f
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_10

    if-ltz p2, :cond_10

    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_10

    .line 405
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    return-object v5
.end method

.method public getItemViewType(II)I
    .locals 9

    .line 855
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

    .line 856
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

    .line 858
    :goto_1
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v3, :cond_3

    .line 859
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 860
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v2

    .line 861
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    .line 864
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    if-ne p1, v5, :cond_5

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p2, p1, :cond_4

    return v1

    :cond_4
    return v4

    :cond_5
    if-eqz v3, :cond_6

    if-le p1, v5, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 873
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v3, :cond_9

    .line 874
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_7

    return v6

    .line 877
    :cond_7
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 878
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_8

    goto :goto_2

    :cond_8
    move v4, v7

    :goto_2
    return v4

    :cond_9
    if-nez p1, :cond_11

    .line 881
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_a

    if-ne p2, v5, :cond_16

    return v1

    .line 885
    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    const/4 v0, 0x5

    if-eqz p1, :cond_f

    add-int/lit8 p2, p2, -0x1

    .line 887
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_b

    if-eq p2, v1, :cond_c

    :cond_b
    if-nez p1, :cond_e

    if-ne p2, v5, :cond_e

    .line 888
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_d

    move v1, v0

    :cond_d
    return v1

    :cond_e
    add-int/2addr p2, v5

    goto :goto_5

    :cond_f
    if-ne p2, v7, :cond_16

    .line 892
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz p1, :cond_10

    move v1, v0

    :cond_10
    return v1

    .line 895
    :cond_11
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v3, :cond_12

    return v6

    .line 898
    :cond_12
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v3, v1, :cond_14

    if-ne p1, v5, :cond_16

    .line 900
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_13

    goto :goto_3

    :cond_13
    move v4, v7

    :goto_3
    return v4

    :cond_14
    sub-int/2addr p1, v5

    .line 903
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_16

    .line 904
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_15

    goto :goto_4

    :cond_15
    move v4, v7

    :goto_4
    return v4

    .line 911
    :cond_16
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_17

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 912
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    return p1

    :cond_17
    return v5
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 3

    .line 920
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 923
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

    .line 925
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v2, :cond_3

    .line 926
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 929
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getSectionForPosition(I)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 931
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 933
    :cond_4
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_5

    if-ltz p1, :cond_6

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    .line 935
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_5
    if-lez p1, :cond_6

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p1, v2, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 939
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 947
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 948
    aput p2, p3, p1

    return-void
.end method

.method public getSectionCount()I
    .locals 3

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    .line 485
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    .line 489
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

    .line 491
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v1, :cond_3

    .line 492
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 497
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    goto :goto_1

    :cond_4
    move v2, v0

    .line 501
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-nez v0, :cond_5

    add-int/lit8 v2, v2, 0x1

    .line 504
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz v0, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 510
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz v0, :cond_7

    add-int/lit8 v2, v2, 0x1

    :cond_7
    return v2
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 6

    .line 595
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

    .line 596
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

    .line 599
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v2, :cond_3

    .line 600
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    if-nez p2, :cond_4

    .line 604
    new-instance p2, Lorg/telegram/ui/Cells/LetterSectionCell;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2}, Lorg/telegram/ui/Cells/LetterSectionCell;-><init>(Landroid/content/Context;)V

    .line 606
    :cond_4
    move-object v2, p2

    check-cast v2, Lorg/telegram/ui/Cells/LetterSectionCell;

    .line 607
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz v3, :cond_5

    if-ne p1, v4, :cond_5

    .line 608
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    return-object v2

    :cond_5
    if-eqz v3, :cond_6

    if-le p1, v4, :cond_6

    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-eq v3, v1, :cond_c

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v1, :cond_7

    goto :goto_2

    .line 616
    :cond_7
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v1, :cond_9

    .line 617
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 618
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 620
    :cond_8
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-nez p1, :cond_a

    .line 624
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    sub-int/2addr p1, v4

    .line 625
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_b

    .line 626
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 628
    :cond_b
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    goto :goto_3

    .line 614
    :cond_c
    :goto_2
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Cells/LetterSectionCell;->setLetter(Ljava/lang/String;)V

    :goto_3
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 6

    .line 427
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p2, v1, :cond_1

    .line 428
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

    .line 436
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

    .line 437
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

    .line 440
    :goto_1
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v4, :cond_6

    .line 441
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v3

    .line 443
    invoke-virtual {p1}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object p1

    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    .line 446
    :cond_6
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v4, :cond_9

    .line 447
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v2, :cond_7

    return v0

    .line 450
    :cond_7
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 451
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_8

    move v0, v1

    :cond_8
    return v0

    :cond_9
    if-nez p2, :cond_11

    .line 454
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_b

    if-eq p3, v1, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 456
    :cond_b
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_f

    add-int/lit8 p3, p3, -0x1

    .line 458
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    if-eqz p1, :cond_c

    if-ne p3, v2, :cond_d

    :cond_c
    if-nez p1, :cond_e

    if-eq p3, v1, :cond_e

    :cond_d
    move v0, v1

    :cond_e
    return v0

    :cond_f
    const/4 p1, 0x3

    if-eq p3, p1, :cond_10

    move v0, v1

    :cond_10
    return v0

    .line 463
    :cond_11
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isEmpty:Z

    if-eqz v4, :cond_12

    return v0

    .line 466
    :cond_12
    iget v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v4, v2, :cond_14

    if-ne p2, v1, :cond_16

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_13

    move v0, v1

    :cond_13
    return v0

    :cond_14
    sub-int/2addr p2, v1

    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_16

    .line 472
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_15

    move v0, v1

    :cond_15
    return v0

    :cond_16
    return v1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .line 725
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

    .line 726
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    .line 727
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Lorg/telegram/ui/Adapters/ContactsAdapter;->isFilterRow(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 728
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->bindFilterModel(Lcom/iMe/ui/contacts/view/TextCellWithRightImage;Lcom/iMe/model/contacts/ContactsFilter;)V

    goto/16 :goto_1

    .line 731
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz v0, :cond_6

    if-ne p1, v7, :cond_6

    .line 732
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v6, :cond_1

    goto/16 :goto_0

    .line 749
    :cond_1
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 750
    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-nez p2, :cond_2

    .line 751
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-ne p2, v7, :cond_3

    .line 753
    sget p2, Lorg/telegram/messenger/R$string;->SortedByName:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 755
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->SortedByLastSeen:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 734
    :cond_4
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 735
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    .line 736
    iget-object p3, p1, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v7, p3, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 737
    iget p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p3

    .line 738
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 739
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 740
    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Stories/StoriesController;->getUnreadStoriesCount(J)I

    move-result p2

    .line 741
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

    .line 743
    :cond_5
    iget-object p3, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->userStories:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;

    iget-object p2, p2, Lorg/telegram/tgnet/tl/TL_stories$PeerStories;->stories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 744
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

    :cond_6
    if-eqz v0, :cond_7

    if-le p1, v7, :cond_7

    add-int/lit8 p1, p1, -0x1

    .line 763
    :cond_7
    :goto_1
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_17

    if-eq v0, v7, :cond_c

    if-eq v0, v6, :cond_8

    goto/16 :goto_7

    .line 839
    :cond_8
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 840
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasStories:Z

    if-eqz p2, :cond_9

    .line 841
    sget p2, Lorg/telegram/messenger/R$string;->HiddenStories:I

    const-string p3, "HiddenStories"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 842
    :cond_9
    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-nez p2, :cond_a

    .line 843
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_a
    if-ne p2, v7, :cond_b

    .line 845
    sget p2, Lorg/telegram/messenger/R$string;->SortedByName:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 847
    :cond_b
    sget p2, Lorg/telegram/messenger/R$string;->SortedByLastSeen:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 797
    :cond_c
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/TextCell;

    if-nez p1, :cond_13

    .line 799
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_e

    if-nez p2, :cond_d

    .line 801
    sget p1, Lorg/telegram/messenger/R$string;->InviteFriends:I

    const-string p2, "InviteFriends"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_invite:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 802
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    xor-int/2addr p1, v7

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_7

    :cond_d
    if-ne p2, v7, :cond_23

    .line 804
    sget p1, Lorg/telegram/messenger/R$string;->AddPeopleNearby:I

    const-string p2, "AddPeopleNearby"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_location:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 805
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->hasGps:Z

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    goto/16 :goto_7

    .line 807
    :cond_e
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-eqz p1, :cond_10

    .line 808
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChannel:Z

    if-eqz p1, :cond_f

    .line 809
    sget p1, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string p2, "ChannelInviteViaLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    .line 811
    :cond_f
    sget p1, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    const-string p2, "InviteToGroupByLink"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    :cond_10
    if-nez p2, :cond_11

    .line 815
    sget p1, Lorg/telegram/messenger/R$string;->NewGroup:I

    const-string p2, "NewGroup"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    :cond_11
    if-ne p2, v7, :cond_12

    .line 817
    sget p1, Lorg/telegram/messenger/R$string;->NewSecretChat:I

    const-string p2, "NewSecretChat"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_secret:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    :cond_12
    if-ne p2, v6, :cond_23

    .line 819
    sget p1, Lorg/telegram/messenger/R$string;->NewChannel:I

    const-string p2, "NewChannel"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {p3, p1, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_7

    .line 824
    :cond_13
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p2, :cond_14

    goto/16 :goto_7

    .line 828
    :cond_14
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/ContactsController$Contact;

    .line 829
    iget-object p2, p1, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    if-eqz p2, :cond_15

    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 830
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

    :cond_15
    if-eqz p2, :cond_16

    .line 831
    iget-object v0, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 832
    invoke-virtual {p3, p2, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 834
    :cond_16
    iget-object p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {p3, p1, v8}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 765
    :cond_17
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/UserCell;

    .line 766
    iget-object v0, p3, Lorg/telegram/ui/Cells/UserCell;->storyParams:Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;

    iput-boolean v8, v0, Lorg/telegram/ui/Stories/StoriesUtilities$AvatarStoryParams;->drawSegments:Z

    .line 767
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-eq v0, v6, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    if-eqz v0, :cond_18

    goto :goto_2

    :cond_18
    const/16 v5, 0x3a

    :cond_19
    :goto_2
    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/UserCell;->setAvatarPadding(I)V

    .line 769
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    if-ne v0, v6, :cond_1a

    .line 770
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    goto :goto_6

    .line 772
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v0, v6, :cond_1b

    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersMutualSectionsDict:Ljava/util/HashMap;

    goto :goto_3

    :cond_1b
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->usersSectionsDict:Ljava/util/HashMap;

    .line 773
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-ne v1, v6, :cond_1c

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersMutualSectionsArray:Ljava/util/ArrayList;

    goto :goto_4

    :cond_1c
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->sortedUsersSectionsArray:Ljava/util/ArrayList;

    .line 775
    :goto_4
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-nez v2, :cond_1d

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    if-eqz v2, :cond_1e

    .line 776
    :cond_1d
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getCollectionsModel()Lcom/iMe/model/contacts/CollectionsFilteredContacts;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getUsersSectionsDict()Ljava/util/HashMap;

    move-result-object v1

    .line 778
    invoke-virtual {v0}, Lcom/iMe/model/contacts/CollectionsFilteredContacts;->getSortedUsersSectionsArray()Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 781
    :cond_1e
    iget v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlyUsers:I

    if-eqz v2, :cond_1f

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isAdmin:Z

    if-nez v2, :cond_1f

    move v2, v8

    goto :goto_5

    :cond_1f
    move v2, v7

    :goto_5
    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 783
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

    .line 784
    invoke-virtual {p3, p1, p2, p2, v8}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 785
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_21

    .line 786
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_20

    move v8, v7

    :cond_20
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->scrolling:Z

    xor-int/2addr p2, v7

    invoke-virtual {p3, v8, p2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    .line 788
    :cond_21
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_23

    .line 789
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p1

    if-ltz p1, :cond_22

    const/high16 p1, 0x3f000000    # 0.5f

    .line 790
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_7

    :cond_22
    const/high16 p1, 0x3f800000    # 1.0f

    .line 792
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_23
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    .line 639
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL_WITH_RIGHT_IMAGE:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 640
    new-instance p1, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x17

    invoke-direct {p1, p2, v0, v1}, Lcom/iMe/ui/contacts/view/TextCellWithRightImage;-><init>(Landroid/content/Context;IZ)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_9

    if-eq p2, v0, :cond_8

    const/4 v2, 0x2

    if-eq p2, v2, :cond_7

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    const/4 v2, 0x4

    if-eq p2, v2, :cond_3

    const/4 p1, 0x6

    if-eq p2, p1, :cond_1

    .line 711
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 712
    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 713
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 714
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 715
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 694
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-nez p1, :cond_2

    .line 695
    new-instance p1, Lorg/telegram/ui/Adapters/ContactsAdapter$2;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v6, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Adapters/ContactsAdapter$2;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/4 p2, 0x0

    .line 701
    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setProgressToCollapse(FZ)V

    goto :goto_0

    .line 703
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->removeFromParent(Landroid/view/View;)V

    .line 705
    :goto_0
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 706
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

    .line 662
    :cond_3
    new-instance p2, Lorg/telegram/ui/Adapters/ContactsAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter$1;-><init>(Lorg/telegram/ui/Adapters/ContactsAdapter;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 689
    new-instance p1, Lorg/telegram/ui/Components/ContactsEmptyView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/ContactsEmptyView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    const/4 v1, -0x2

    .line 690
    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, p2

    goto :goto_2

    .line 658
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 659
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v0, 0x1c

    const/16 v1, 0x48

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_1

    :cond_5
    move p2, v1

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 655
    :cond_7
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 652
    :cond_8
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 644
    :cond_9
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x3a

    invoke-direct {p1, p2, v2, v0, v1}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 646
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p2, :cond_a

    .line 647
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/UserCell;->changeCheckBoxMargins()V

    .line 719
    :cond_a
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onStoryLongPressed(Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method public recreateDelegates()V
    .locals 3

    .line 114
    new-instance v0, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-direct {v0, v1}, Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filteredContactsDelegate:Lcom/iMe/domain/contacts/FilteredContactsByNameDelegate;

    .line 116
    new-instance v0, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    .line 118
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;-><init>(ILjava/util/ArrayList;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public refreshContactsList()V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContactsDelegate:Lcom/iMe/domain/contacts/FilteredByOnlineContactsDelegate;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    :cond_0
    return-void
.end method

.method public refreshOnBlockedUsersLoaded()V
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    sget-object v1, Lcom/iMe/model/contacts/ContactsFilter;->BLOCKED:Lcom/iMe/model/contacts/ContactsFilter;

    if-ne v0, v1, :cond_0

    .line 89
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

    .line 339
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method public setChoosePremiumGiftRecipientMode(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChoosePremiumGiftRecipient:Z

    return-void
.end method

.method public setChooseWalletTransferRecipientMode(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->isChooseWalletTransferRecipient:Z

    return-void
.end method

.method public setDisableSections(Z)V
    .locals 0

    .line 252
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->disableSections:Z

    return-void
.end method

.method public setFilterModel(Lcom/iMe/model/contacts/ContactsFilter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    return-void
.end method

.method public setSortType(IZ)V
    .locals 4

    .line 260
    iput p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_3

    .line 263
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 265
    iget-boolean p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->needPhonebook:Z

    if-eqz p1, :cond_1

    .line 266
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->filterRowModel:Lcom/iMe/model/contacts/ContactsFilter;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/ContactsAdapter;->getFilteredContacts(Lcom/iMe/model/contacts/ContactsFilter;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    .line 269
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    const/4 v0, 0x0

    .line 270
    iget-object v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 271
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts()V

    goto :goto_2

    .line 279
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
            "Lorg/telegram/tgnet/tl/TL_stories$PeerStories;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public sortOnlineContacts()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->sortOnlineContacts(Z)V

    return-void
.end method

.method public sortOnlineContacts(Z)V
    .locals 4

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 289
    iget v1, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 290
    iget-object v2, p0, Lorg/telegram/ui/Adapters/ContactsAdapter;->onlineContacts:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController;I)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
