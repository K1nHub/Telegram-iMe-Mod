.class public Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchesInProgress:I

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$0kNXQyhI4zTQYyO8Zw-5cPmREmU(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$search$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$40BZ05JoyenS9b5eFt-8xmM9mhM(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AXaxiNypHp7H07B_jQlSBwVX4ZQ(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PW6nT_OQyjvvNWpXN4VNxxlbAQk(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$queryServerSearch$1(IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kOZW9LW1_ZUF6NnrIut74ZvBEiY(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$queryServerSearch$0(ILjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V
    .locals 0

    .line 7104
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 7096
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 7098
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 7099
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 7105
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    .line 7106
    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 7093
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method private synthetic lambda$queryServerSearch$0(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7

    .line 7154
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    if-eqz v0, :cond_6

    .line 7155
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 7156
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p1

    .line 7157
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 7158
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 7159
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p2

    .line 7160
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 7161
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_1
    move v2, v1

    .line 7164
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 7165
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v3, v4, :cond_3

    .line 7166
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 7167
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p3, v5, v1

    const-string v6, "NoResultFoundFor"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7168
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 7170
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7174
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7177
    :cond_5
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    :cond_6
    return-void
.end method

.method private synthetic lambda$queryServerSearch$1(IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 7142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p5, :cond_1

    .line 7144
    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p5, 0x0

    move v1, p5

    .line 7145
    :goto_0
    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7146
    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    .line 7147
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v3, p1, :cond_0

    goto :goto_1

    .line 7150
    :cond_0
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, p5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7153
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11

    .line 7227
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 7228
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 7229
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void

    .line 7232
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    add-int/2addr v3, v2

    .line 7236
    new-array v4, v3, [Ljava/lang/String;

    .line 7237
    aput-object p1, v4, v1

    if-eqz v0, :cond_4

    .line 7239
    aput-object v0, v4, v2

    .line 7242
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 7244
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_10

    .line 7245
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_f

    .line 7247
    aget-object v6, v4, v5

    .line 7248
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 7249
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_7

    .line 7252
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 7253
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 7254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 7257
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    sget v8, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v7, v8, :cond_e

    .line 7259
    :cond_7
    iget v7, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v7, :cond_9

    .line 7261
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v7, :cond_8

    goto :goto_7

    .line 7265
    :cond_8
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    .line 7267
    :cond_9
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_3
    move v8, v1

    .line 7270
    :goto_4
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 7271
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 7272
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v10, :cond_b

    .line 7273
    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 7274
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_5

    :cond_a
    move v7, v1

    :goto_5
    if-nez v7, :cond_d

    .line 7276
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 7277
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_6

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_c
    move v7, v1

    :cond_d
    :goto_6
    if-eqz v7, :cond_e

    .line 7283
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 7290
    :cond_10
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$search$3(Ljava/lang/String;)V
    .locals 7

    .line 7216
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 7217
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 7218
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 7219
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-virtual {p0, p1, v4, v5, v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    goto :goto_0

    .line 7220
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    const/4 v0, 0x0

    .line 7221
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v4

    invoke-virtual {p0, p1, v0, v4, v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJ)V

    .line 7223
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_5

    .line 7224
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9500(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    :goto_1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7225
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 7226
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;)V
    .locals 7

    .line 7299
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7302
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 7303
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v0

    .line 7304
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 7305
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p1

    .line 7306
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 7307
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_2
    move v2, v3

    .line 7310
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 7311
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v4, v5, :cond_4

    .line 7312
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    .line 7313
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v6, "NoResult"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7314
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 7316
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7321
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 7298
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 7353
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 7354
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 7356
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 7333
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7334
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 7328
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 7392
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 7393
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 7394
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 7395
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 7396
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_3

    .line 7397
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_2

    move v1, v2

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_6

    .line 7399
    :cond_3
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_6

    :cond_4
    const/4 v3, 0x3

    if-ne v0, v3, :cond_9

    .line 7402
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 7403
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 7404
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_5

    move p2, v2

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 7405
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_8

    .line 7406
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_7

    move v1, v2

    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_6

    .line 7408
    :cond_8
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x4

    if-eq v0, v3, :cond_a

    .line 7410
    sget v3, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v3, :cond_f

    .line 7411
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 7412
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 7413
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_b

    move p2, v2

    goto :goto_4

    :cond_b
    move p2, v1

    :goto_4
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 7414
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_e

    .line 7415
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9300(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_5

    :cond_c
    move v3, v2

    :goto_5
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_d

    move v1, v2

    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    goto :goto_6

    .line 7417
    :cond_e
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    :cond_f
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 7363
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 7364
    new-instance p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 7365
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 7383
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, v0, p2, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7384
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_1

    .line 7366
    :cond_2
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$1;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;->isMusicType()Z

    move-result v1

    if-eqz v1, :cond_3

    sget p2, Lcom/iMe/common/IdFabric$CustomType;->SHARED_AUDIO_CELL_MUSIC:I

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$9200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p0, v0, p2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7386
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7387
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public queryServerSearch(Ljava/lang/String;IJ)V
    .locals 4

    .line 7110
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7113
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7114
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 7115
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 7116
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    :cond_1
    if-eqz p1, :cond_7

    .line 7118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 7124
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    const/16 v1, 0x32

    .line 7125
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 7126
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 7127
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v1, v2, :cond_3

    .line 7128
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 7130
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 7132
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 7134
    :cond_5
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 7135
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez p3, :cond_6

    return-void

    .line 7139
    :cond_6
    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    add-int/2addr p3, v2

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    .line 7140
    iget p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    add-int/2addr p4, v2

    iput p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 7141
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;IILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p4, v0, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 7181
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void

    .line 7119
    :cond_7
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7120
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    .line 7121
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 4

    .line 7185
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7186
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7187
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 7190
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7191
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7192
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7193
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7196
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 7197
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-eqz p1, :cond_7

    .line 7198
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7199
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 7200
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    if-eqz p1, :cond_7

    .line 7201
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 7202
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 7203
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    goto :goto_1

    .line 7207
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 7208
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v0, v3, :cond_5

    .line 7209
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7214
    :cond_6
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_1
    return-void
.end method
