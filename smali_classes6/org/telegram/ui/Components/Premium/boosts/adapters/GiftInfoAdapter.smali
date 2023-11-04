.class public abstract Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GiftInfoAdapter.java"


# instance fields
.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

.field private isUnused:Z

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2VFNhsDospQRFPcuUHjTJ3CJQJo(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3pBHZZpeOo0MRLe3mMspG7U_oOo(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$BLgZJDnk3hojm-0BLN7KO85uHJ0(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Smi00cVHFOPoAFBhjpvOujmcwX8(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$0(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$biybqtbLSr_D3G07VJY1j51X8hs(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEBFwJ6nY61LFrFegmwLxJ850Jo(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->lambda$onBindViewHolder$4(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 22

    move-object/from16 v0, p7

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 186
    invoke-interface {v0, v2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 191
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    move-object/from16 v4, p3

    .line 192
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    move-object/from16 v15, p0

    .line 193
    iget-object v5, v15, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v14

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p1

    move-wide v6, v2

    move-object v1, v14

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, v21

    invoke-static/range {v5 .. v19}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 196
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showGiftLinkForwardedBulletin(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$onBindViewHolder$1()V
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/giftcode/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    const/4 v3, 0x1

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "dialogsType"

    const/4 v3, 0x3

    .line 181
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 183
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 199
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 200
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Ljava/lang/Void;)V
    .locals 0

    const/4 p2, 0x0

    .line 224
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->afterCodeApplied()V

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 229
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$4(Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;Landroid/view/View;)V
    .locals 2

    .line 218
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    if-eqz p2, :cond_1

    .line 219
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 222
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 223
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->applyGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$5(Landroid/view/View;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->dismiss()V

    return-void
.end method


# virtual methods
.method protected abstract afterCodeApplied()V
.end method

.method protected abstract dismiss()V
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x5

    return p1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public init(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V
    .locals 1

    .line 56
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    .line 57
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 58
    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    .line 59
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const-wide/16 v0, -0x1

    if-eqz p2, :cond_a

    const/4 v2, 0x1

    if-eq p2, v2, :cond_9

    const/4 v3, 0x2

    if-eq p2, v3, :cond_8

    const/4 v4, 0x3

    if-eq p2, v4, :cond_2

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    goto/16 :goto_4

    .line 215
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    .line 216
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOkStyle(Z)V

    .line 217
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    if-nez v2, :cond_1

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_d

    .line 236
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setCloseStyle()V

    .line 237
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 154
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;

    const/16 p2, 0x11

    .line 155
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextGravity(I)V

    .line 156
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTextColor(I)V

    const/16 p2, 0xe

    .line 157
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    const/16 p2, 0xf

    .line 158
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    .line 160
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    if-eqz v4, :cond_5

    .line 161
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, ""

    .line 166
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_4
    :goto_0
    sget p2, Lorg/telegram/messenger/R$string;->BoostingLinkNotActivated:I

    const-string v0, "BoostingLinkNotActivated"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    .line 171
    :cond_5
    iget-boolean v4, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 173
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_6

    .line 174
    sget p2, Lorg/telegram/messenger/R$string;->BoostingSendLinkToAnyone:I

    const-string v0, "BoostingSendLinkToAnyone"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 175
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->BoostingSendLinkToFriends:I

    const-string v0, "BoostingSendLinkToFriends"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 172
    invoke-static {p2, v0, v5, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 206
    :cond_7
    new-instance p2, Ljava/util/Date;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    int-to-long v0, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 207
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 209
    sget v1, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p2, v3, v2

    const-string p2, "formatDateAtTime"

    invoke-static {p2, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 210
    sget v0, Lorg/telegram/messenger/R$string;->BoostingUsedLinkDate:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    const-string p2, "BoostingUsedLinkDate"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 149
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;

    .line 150
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;->setData(Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_4

    .line 141
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    .line 142
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->slug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->setSlug(Ljava/lang/String;)V

    .line 143
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    if-eqz p2, :cond_d

    .line 144
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->hideSlug(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 126
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    .line 127
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->isUnused:Z

    if-eqz p2, :cond_b

    .line 128
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setGiftLinkText()V

    goto :goto_3

    .line 130
    :cond_b
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setUsedGiftLinkText()V

    .line 132
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->boost:Lorg/telegram/tgnet/tl/TL_stories$TL_boost;

    if-eqz v2, :cond_c

    .line 133
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;)V

    invoke-virtual {p1, v2, v3, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setGiftLinkToUserText(JLorg/telegram/messenger/Utilities$Callback;)V

    .line 135
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_d

    .line 136
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;->setUnclaimedText()V

    :cond_d
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 100
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/HeaderCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 112
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 109
    :cond_2
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TextInfoCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 106
    :cond_3
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/TableCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 103
    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 117
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method protected abstract onHiddenLinkClicked()V
.end method

.method protected abstract onObjectClicked(Lorg/telegram/tgnet/TLObject;)V
.end method
