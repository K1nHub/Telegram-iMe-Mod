.class public Lorg/telegram/ui/Adapters/SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;
    }
.end annotation


# instance fields
.field private allUnregistredContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;",
            ">;"
        }
    .end annotation
.end field

.field private allowBots:Z

.field private allowChats:Z

.field private allowPhoneNumbers:Z

.field private allowSelf:Z

.field private allowUsernameSearch:Z

.field private channelId:J

.field private checkedMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "*>;"
        }
    .end annotation
.end field

.field private ignoreUsers:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private onlyMutual:Z

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchInProgress:Z

.field private searchPointer:I

.field private searchReqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchTimer:Ljava/util/Timer;

.field private unregistredContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field unregistredContactsHeaderRow:I

.field private useUserCell:Z


# direct methods
.method public static synthetic $r8$lambda$5hShYKR7qsocUCBtEB6WyIDFutg(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/SearchAdapter;->lambda$processSearch$0(Ljava/lang/String;ILjava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TazHWcFKS_CK88ayz9BJ-qUcPRU(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->lambda$processSearch$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v8m7e-DlOj7UPwiAYnGls6ul7wU(Lorg/telegram/ui/Adapters/SearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/SearchAdapter;->lambda$updateSearchResults$2(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/collection/LongSparseArray;ZZZZZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;ZZZZZZI)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    .line 73
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    .line 74
    iput-boolean p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    .line 75
    iput-boolean p5, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    .line 76
    iput-boolean p6, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    int-to-long p1, p9

    .line 77
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->channelId:J

    .line 78
    iput-boolean p7, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowSelf:Z

    .line 79
    iput-boolean p8, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowPhoneNumbers:Z

    .line 80
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 81
    new-instance p2, Lorg/telegram/ui/Adapters/SearchAdapter$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Adapters/SearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/SearchAdapter;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/SearchAdapter;)Ljava/util/Timer;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processSearch$0(Ljava/lang/String;ILjava/util/ArrayList;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 148
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapter;->updateSearchResults(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    add-int/2addr v7, v6

    .line 157
    new-array v8, v7, [Ljava/lang/String;

    .line 158
    aput-object v2, v8, v4

    if-eqz v3, :cond_4

    .line 160
    aput-object v3, v8, v6

    .line 163
    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 167
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-string v14, " "

    if-ge v12, v13, :cond_14

    move-object/from16 v13, p3

    .line 168
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 169
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move/from16 v16, v7

    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    .line 170
    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowSelf:Z

    if-nez v6, :cond_6

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v19, v8

    move/from16 v18, v16

    const/4 v5, 0x1

    const/16 v17, 0x0

    goto/16 :goto_a

    :cond_6
    :goto_3
    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->onlyMutual:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->mutual_contact:Z

    if-eqz v6, :cond_5

    :cond_7
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->ignoreUsers:Landroidx/collection/LongSparseArray;

    move-object/from16 v17, v5

    if-eqz v6, :cond_8

    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v6, v17

    .line 175
    iget-object v15, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v15, v7}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const/16 v17, 0x0

    aput-object v7, v5, v17

    .line 176
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    aget-object v15, v5, v17

    invoke-virtual {v7, v15}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    aput-object v7, v5, v15

    .line 177
    aget-object v7, v5, v17

    aget-object v4, v5, v15

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    aput-object v4, v5, v15

    .line 180
    :cond_9
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v4

    const/4 v7, 0x2

    if-eqz v4, :cond_a

    .line 181
    sget v4, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v15, "RepliesTitle"

    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    goto :goto_4

    .line 182
    :cond_a
    iget-boolean v4, v6, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v4, :cond_b

    .line 183
    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v15, "SavedMessages"

    invoke-static {v15, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    :cond_b
    :goto_4
    move/from16 v7, v16

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_5
    move/from16 v18, v7

    if-ge v4, v7, :cond_13

    .line 187
    aget-object v7, v8, v4

    move-object/from16 v19, v8

    const/4 v8, 0x0

    :goto_6
    const/4 v13, 0x3

    if-ge v8, v13, :cond_f

    .line 189
    aget-object v13, v5, v8

    if-eqz v13, :cond_d

    .line 190
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    move-object/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_7

    :cond_c
    move-object/from16 v20, v5

    :goto_7
    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    move-object/from16 v20, v5

    :cond_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v20

    goto :goto_6

    :cond_f
    move-object/from16 v20, v5

    .line 195
    :goto_8
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-nez v15, :cond_10

    if-eqz v5, :cond_10

    .line 196
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v15, 0x2

    :cond_10
    if-eqz v15, :cond_12

    const/4 v5, 0x1

    if-ne v15, v5, :cond_11

    .line 201
    iget-object v4, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 203
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v4, v8, v7}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :goto_9
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, p3

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v5, v20

    goto/16 :goto_5

    :cond_13
    move-object/from16 v19, v8

    const/4 v5, 0x1

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v18

    move-object/from16 v8, v19

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_14
    const/16 v17, 0x0

    .line 211
    iget-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allUnregistredContacts:Ljava/util/ArrayList;

    if-nez v4, :cond_15

    .line 212
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allUnregistredContacts:Ljava/util/ArrayList;

    .line 213
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/ContactsController$Contact;

    .line 214
    new-instance v6, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter$1;)V

    .line 215
    iput-object v5, v6, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v5, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->q1:Ljava/lang/String;

    .line 217
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 218
    iget-object v5, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allUnregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    const/4 v4, 0x0

    .line 221
    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allUnregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 222
    iget-object v5, v0, Lorg/telegram/ui/Adapters/SearchAdapter;->allUnregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;

    if-eqz v3, :cond_16

    .line 223
    iget-object v6, v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->q1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->q1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    :cond_16
    iget-object v6, v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->q1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->q1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 224
    :cond_17
    iget-object v5, v5, Lorg/telegram/ui/Adapters/SearchAdapter$ContactEntry;->contact:Lorg/telegram/messenger/ContactsController$Contact;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 228
    :cond_19
    invoke-direct {v0, v1, v9, v10, v11}, Lorg/telegram/ui/Adapters/SearchAdapter;->updateSearchResults(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processSearch$1(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v6, p0

    .line 139
    iget-boolean v0, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v7, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v9, 0x1

    iget-boolean v10, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    iget-boolean v11, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    iget-boolean v12, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->allowSelf:Z

    const/4 v13, 0x0

    iget-wide v14, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->channelId:J

    iget-boolean v0, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->allowPhoneNumbers:Z

    const/16 v17, -0x1

    const/16 v18, 0x1

    move-object/from16 v8, p1

    move/from16 v16, v0

    invoke-virtual/range {v7 .. v18}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 142
    :cond_0
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->searchInProgress:Z

    .line 145
    iget v3, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->searchPointer:I

    add-int/lit8 v0, v3, 0x1

    iput v0, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->searchPointer:I

    iput v3, v6, Lorg/telegram/ui/Adapters/SearchAdapter;->searchReqId:I

    .line 147
    sget-object v7, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v8, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda2;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;ILjava/util/ArrayList;I)V

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateSearchResults$2(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 235
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchReqId:I

    if-ne p1, v0, :cond_0

    .line 236
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 237
    iput-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 238
    iput-object p4, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    .line 239
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchInProgress:Z

    .line 241
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 242
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->onSearchProgressChanged()V

    :cond_0
    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    .line 138
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;)V"
        }
    .end annotation

    .line 234
    new-instance v6, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 301
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 302
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 303
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-lez v1, :cond_3

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-lez p1, :cond_2

    if-gt p1, v1, :cond_2

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p1, v1

    :cond_3
    if-ltz p1, :cond_4

    if-ge p1, v3, :cond_4

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    sub-int/2addr p1, v3

    if-lez p1, :cond_5

    if-gt p1, v2, :cond_5

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    const/4 v0, -0x1

    .line 264
    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContactsHeaderRow:I

    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContactsHeaderRow:I

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 271
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 275
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 466
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 469
    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 470
    check-cast p1, Ljava/lang/String;

    const-string v1, "section"

    .line 471
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x2

    return p1

    .line 476
    :cond_2
    instance-of p1, p1, Lorg/telegram/messenger/ContactsController$Contact;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 257
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isGlobalSearch(I)Z
    .locals 7

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 286
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    return v4

    :cond_0
    const/4 v5, 0x1

    if-le p1, v0, :cond_1

    add-int v6, v0, v1

    add-int/2addr v6, v5

    if-ge p1, v6, :cond_1

    return v4

    :cond_1
    add-int v6, v0, v1

    add-int/2addr v6, v5

    if-le p1, v6, :cond_2

    add-int v6, v0, v3

    add-int/2addr v6, v1

    add-int/2addr v6, v5

    if-ge p1, v6, :cond_2

    return v4

    :cond_2
    add-int v6, v0, v3

    add-int/2addr v6, v1

    add-int/2addr v6, v5

    if-le p1, v6, :cond_3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    add-int/2addr v2, v5

    if-gt p1, v2, :cond_3

    return v5

    :cond_3
    return v4
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 360
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    const-string v5, "+"

    if-eq v0, v4, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    .line 455
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, p1

    check-cast v6, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 456
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lorg/telegram/messenger/ContactsController$Contact;

    add-int/2addr p2, v3

    .line 457
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/messenger/ContactsController$Contact;

    iput-boolean p1, v6, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    const/4 v8, 0x0

    .line 458
    iget-object p1, v7, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object p2, v7, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_6

    .line 448
    :cond_1
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 449
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    const-string v0, "windowBackgroundWhiteBlueText2"

    .line 450
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget v0, Lorg/telegram/messenger/R$string;->AddContactByPhone:I

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    const-string p2, "AddContactByPhone"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    .line 437
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 438
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContactsHeaderRow:I

    if-ne p2, v0, :cond_3

    .line 439
    sget p2, Lorg/telegram/messenger/R$string;->InviteToTelegramShort:I

    const-string v0, "InviteToTelegramShort"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 440
    :cond_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    .line 441
    sget p2, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v0, "GlobalSearch"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 443
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->PhoneNumberSearch:I

    const-string v0, "PhoneNumberSearch"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 362
    :cond_5
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    if-eqz v5, :cond_12

    const-wide/16 v6, 0x0

    .line 367
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_6

    .line 368
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    .line 369
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 370
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    move v10, v0

    goto :goto_1

    .line 371
    :cond_6
    instance-of v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_7

    .line 372
    move-object v0, v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v4

    .line 373
    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_0

    :cond_7
    move-object v4, v1

    :goto_0
    const/4 v10, 0x0

    .line 378
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v8, "@"

    if-ge p2, v0, :cond_9

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 380
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 381
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v8, v0

    goto :goto_3

    :cond_8
    move-object v8, v1

    move-object v1, v0

    goto :goto_3

    .line 386
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_d

    if-eqz v4, :cond_d

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 388
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :cond_a
    :try_start_0
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 394
    invoke-virtual {v9, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 395
    invoke-virtual {v9, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_c

    .line 396
    invoke-static {v4, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_c

    .line 397
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v8, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 403
    :goto_2
    new-instance v11, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    const-string v12, "windowBackgroundWhiteBlueText4"

    invoke-direct {v11, v12}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v8

    const/16 v12, 0x21

    invoke-virtual {v9, v11, v8, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    move-object v8, v9

    goto :goto_3

    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v8, v4

    goto :goto_3

    :cond_d
    move-object v8, v1

    .line 412
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz v0, :cond_f

    .line 413
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 414
    invoke-virtual {p1, v5, v1, v8, v2}, Lorg/telegram/ui/Cells/UserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 415
    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    if-eqz p2, :cond_12

    .line 416
    invoke-virtual {p2, v6, v7}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_e

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1, v3, v2}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    goto :goto_6

    .line 419
    :cond_f
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-eqz v10, :cond_10

    .line 421
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v1, "SavedMessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_10
    move-object v7, v1

    :goto_5
    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    .line 423
    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 424
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p2, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-eq p2, v0, :cond_11

    const/4 v2, 0x1

    :cond_11
    iput-boolean v2, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_12
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 349
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 352
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 345
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->useUserCell:Z

    if-eqz p2, :cond_4

    .line 336
    new-instance p2, Lorg/telegram/ui/Cells/UserCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, p1, p1, v0}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 337
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->checkedMap:Landroidx/collection/LongSparseArray;

    if-eqz p1, :cond_3

    .line 338
    invoke-virtual {p2, v0, v0}, Lorg/telegram/ui/Cells/UserCell;->setChecked(ZZ)V

    :cond_3
    move-object p1, p2

    goto :goto_0

    .line 341
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    .line 355
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method protected onSearchProgressChanged()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 13

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->unregistredContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowUsernameSearch:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowChats:Z

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowBots:Z

    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowSelf:Z

    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->channelId:J

    iget-boolean v10, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->allowPhoneNumbers:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchTimer:Ljava/util/Timer;

    .line 122
    new-instance v2, Lorg/telegram/ui/Adapters/SearchAdapter$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    return-void
.end method

.method public searchInProgress()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
