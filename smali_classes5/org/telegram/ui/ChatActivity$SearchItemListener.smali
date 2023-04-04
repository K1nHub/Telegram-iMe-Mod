.class Lorg/telegram/ui/ChatActivity$SearchItemListener;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchItemListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$h_uAB1cqlGmm9YzuAXebg14x6E8(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener;->lambda$onSearchExpand$0()V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 32329
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 32329
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$SearchItemListener;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private synthetic lambda$onSearchExpand$0()V
    .locals 2

    .line 32441
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 32442
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 32443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->removeKeyboardPositionBeforeTransition()V

    .line 32444
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$54000(Lorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method


# virtual methods
.method public canCollapseSearch()Z
    .locals 2

    .line 32335
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$34900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32336
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53300(Lorg/telegram/ui/ChatActivity;Z)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public forceShowClear()Z
    .locals 1

    .line 32487
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    return v0
.end method

.method public onCaptionCleared()V
    .locals 8

    .line 32468
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$54500(Lorg/telegram/ui/ChatActivity;)V

    .line 32469
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32472
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32473
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 32474
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$25702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32475
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 32477
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Search:I

    const-string v3, "Search"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 32478
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32479
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32480
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 32481
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_1

    .line 32470
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    :goto_1
    return-void
.end method

.method public onSearchCollapse()V
    .locals 8

    .line 32344
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32345
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30000(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32347
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 32348
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32350
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32351
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    .line 32352
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$25702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32354
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/MentionsContainerView;->setReversed(Z)V

    .line 32355
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchingMentions(Z)V

    .line 32356
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$53402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 32357
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/ChatActivity;->access$53502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;

    .line 32358
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v4, "Search"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 32359
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldCaption(Ljava/lang/CharSequence;)V

    .line 32360
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v0

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 32361
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 32362
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 32363
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32365
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 32366
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)V

    .line 32369
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 32370
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32372
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32373
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32375
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32376
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto/16 :goto_0

    .line 32378
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSlowModeTimer()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendPlain(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32379
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 32380
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32382
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 32383
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32385
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 32386
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32388
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 32389
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32391
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 32392
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    goto :goto_0

    .line 32395
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 32396
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32398
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 32399
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32401
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$40600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 32402
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$41000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32404
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 32405
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32407
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 32408
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->setVisibility(I)V

    .line 32411
    :cond_12
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getRepliesCount()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_15

    .line 32412
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 32414
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32415
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearFoundMessageObjects()V

    .line 32416
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 32417
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->notifyDataSetChanged()V

    .line 32419
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$24100(Lorg/telegram/ui/ChatActivity;)V

    .line 32420
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)V

    .line 32421
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 32422
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)V

    .line 32424
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$54000(Lorg/telegram/ui/ChatActivity;Z)V

    .line 32425
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 3

    .line 32431
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32432
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 32434
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$54100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 32437
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->saveKeyboardPositionBeforeTransition()V

    .line 32438
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$54200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 32439
    new-instance v0, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$SearchItemListener$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$SearchItemListener;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onSearchPressed(Landroid/widget/EditText;)V
    .locals 12

    .line 32451
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$54300(Lorg/telegram/ui/ChatActivity;III)V

    .line 32452
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$54400(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)I

    move-result v9

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$53400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v10

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$53500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v11

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v11}, Lorg/telegram/messenger/MediaDataController;->searchMessagesInChat(Ljava/lang/String;JJIIILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 7

    .line 32457
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$53300(Lorg/telegram/ui/ChatActivity;Z)V

    .line 32458
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$54500(Lorg/telegram/ui/ChatActivity;)V

    .line 32459
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32460
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->searchUsernameOrHashtag(Ljava/lang/CharSequence;ILjava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 32461
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->SearchFrom:I

    const-string v1, "SearchFrom"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 32462
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$SearchItemListener;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$30100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    :cond_1
    :goto_0
    return-void
.end method
