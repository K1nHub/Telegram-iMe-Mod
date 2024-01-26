.class Lorg/telegram/ui/PeerColorActivity$Page;
.super Landroid/widget/FrameLayout;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    }
.end annotation


# instance fields
.field private actionBarHeight:I

.field private button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private buttonContainer:Landroid/widget/FrameLayout;

.field private buttonLocked:Ljava/lang/CharSequence;

.field buttonRow:I

.field private buttonUnlocked:Ljava/lang/CharSequence;

.field clearRow:I

.field colorPickerRow:I

.field iconRow:I

.field info2Row:I

.field infoRow:I

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

.field private peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

.field previewRow:I

.field private profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

.field rowCount:I

.field private selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

.field private selectedColor:I

.field private selectedEmoji:J

.field private setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

.field shadowRow:I

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;

.field private final type:I


# direct methods
.method public static synthetic $r8$lambda$YYCpkuxmM5Zo0Hr2nKkACn5HNgo(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p5o-ZWFLDZICsFNP5pZcxuEFbYg(Lorg/telegram/ui/PeerColorActivity$Page;ILandroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$new$0(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$s7wrdDCl6GDDgbjZDxLuA_9vcpc(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page;->lambda$updateColors$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
    .locals 11

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    .line 167
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, -0x1

    .line 141
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    .line 148
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->previewRow:I

    .line 149
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    .line 150
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    .line 151
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    .line 152
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->info2Row:I

    .line 153
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    .line 154
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    .line 155
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    .line 168
    iput p3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 171
    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 173
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    .line 174
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    .line 178
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    cmp-long v0, v3, v0

    if-gez v0, :cond_2

    .line 182
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 183
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    .line 184
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    .line 188
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    .line 192
    :goto_0
    new-instance v0, Lorg/telegram/ui/PeerColorActivity$Page$1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v0, p0, v1, v3, p1}, Lorg/telegram/ui/PeerColorActivity$Page$1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PeerColorActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 205
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$Page$2;

    invoke-direct {v3, p0, p1, p3}, Lorg/telegram/ui/PeerColorActivity$Page$2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;I)V

    iput-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 348
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;I)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0xe

    .line 380
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 383
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "l"

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v3, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_mini_lock2:I

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 385
    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->ChannelColorApply:I

    goto :goto_1

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->UserColorApplyIcon:I

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    .line 386
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v0, " "

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    .line 388
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 389
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->text:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v0, v2, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setHacks(ZZZ)V

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    :goto_2
    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v4, 0x30

    invoke-static {p2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    const/16 v3, 0x50

    const/4 v4, -0x2

    invoke-static {p2, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/PeerColorActivity$Page$3;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/PeerColorActivity$Page$3;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 401
    new-instance v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v5, 0x15e

    .line 402
    invoke-virtual {v0, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 403
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 405
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 406
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    if-ne p3, v2, :cond_6

    .line 409
    new-instance p3, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1500(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v7

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v8

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1600(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    move-object v5, p3

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;-><init>(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    .line 410
    iget p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {p3, p1, v1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-wide v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-virtual {p1, v2, v3, v1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZ)V

    .line 412
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    const/16 p3, 0x37

    invoke-static {p2, v4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateColors()V

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateRows()V

    .line 418
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/PeerColorActivity$Page;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateButtonY()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PeerColorActivity$Page;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$ProfilePreview;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PeerColorActivity$Page;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PeerColorActivity$Page;)J
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    return-wide v0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/PeerColorActivity$Page;J)J
    .locals 0

    .line 131
    iput-wide p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    return-object p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;)Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    return-object p1
.end method

.method static synthetic access$502(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/PeerColorActivity$Page;)I
    .locals 0

    .line 131
    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/PeerColorActivity$Page;I)I
    .locals 0

    .line 131
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    .locals 0

    .line 131
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;
    .locals 0

    .line 131
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    return-object p1
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;I)V
    .locals 2

    .line 349
    instance-of v0, p2, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz v0, :cond_0

    .line 350
    check-cast p2, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/PeerColorActivity$Page;->showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V

    goto :goto_0

    .line 351
    :cond_0
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ne p3, p2, :cond_7

    const/4 p2, -0x1

    .line 352
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    const-wide/16 v0, 0x0

    .line 353
    iput-wide v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    .line 354
    iget-object p3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 355
    invoke-virtual {p3, p2, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->setSelected(IZ)V

    .line 357
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    if-ne p1, v0, :cond_2

    .line 359
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-direct {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->updateMessages()V

    .line 361
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->setReplyIconCell:Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {p2, v0}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->update(Z)V

    :cond_3
    if-ne p1, v0, :cond_4

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$1200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->access$2900(Lorg/telegram/ui/PeerColorActivity;)I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    .line 367
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    if-eqz p1, :cond_5

    .line 368
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    iget-wide p2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setEmoji(JZ)V

    .line 371
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity;->profilePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    if-eqz p2, :cond_6

    iget-object p1, p1, Lorg/telegram/ui/PeerColorActivity;->namePage:Lorg/telegram/ui/PeerColorActivity$Page;

    if-eqz p1, :cond_6

    .line 372
    iget p1, p1, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->overrideAvatarColor(I)V

    .line 374
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->checkResetColorButton()V

    :cond_7
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->access$2800(Lorg/telegram/ui/PeerColorActivity;)V

    return-void
.end method

.method private synthetic lambda$updateColors$2(Landroid/view/View;)V
    .locals 2

    .line 723
    instance-of v0, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 725
    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->updateColors()V

    goto :goto_0

    .line 726
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCell;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 728
    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->updateColors()V

    goto :goto_0

    .line 729
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 731
    check-cast p1, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;

    invoke-virtual {p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->updateColors()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateButtonY()V
    .locals 9

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 471
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 472
    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 473
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    if-gt v7, v0, :cond_1

    .line 475
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-ne v7, v0, :cond_1

    move v4, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    .line 484
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    const/16 v3, 0x4c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr v5, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateMessages()V
    .locals 5

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v0, :cond_2

    .line 690
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->getCells()[Lorg/telegram/ui/Cells/ChatMessageCell;

    move-result-object v0

    const/4 v1, 0x0

    .line 691
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 692
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 693
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 695
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->peerColorPicker:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    if-eqz v3, :cond_0

    .line 696
    invoke-virtual {v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->getColorId()I

    move-result v3

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkColor:I

    .line 698
    :cond_0
    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    iput-wide v3, v2, Lorg/telegram/messenger/MessageObject;->overrideLinkEmoji:J

    .line 699
    aget-object v3, v0, v1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAvatar(Lorg/telegram/messenger/MessageObject;)V

    .line 700
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateRows()V
    .locals 4

    const/4 v0, 0x0

    .line 671
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    .line 672
    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v3, 0x0

    add-int/2addr v3, v2

    .line 673
    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->previewRow:I

    .line 675
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->colorPickerRow:I

    add-int/lit8 v0, v3, 0x1

    .line 676
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->iconRow:I

    add-int/lit8 v3, v0, 0x1

    .line 677
    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->infoRow:I

    if-ne v1, v2, :cond_1

    .line 678
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    if-ltz v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 679
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    add-int/lit8 v1, v0, 0x1

    .line 680
    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 682
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    .line 683
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->shadowRow:I

    .line 685
    :goto_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonRow:I

    return-void
.end method


# virtual methods
.method public checkResetColorButton()V
    .locals 3

    .line 658
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 661
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    .line 662
    invoke-direct {p0}, Lorg/telegram/ui/PeerColorActivity$Page;->updateRows()V

    const/4 v1, 0x2

    if-ltz v0, :cond_1

    .line 663
    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-gez v2, :cond_1

    .line 664
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 665
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->clearRow:I

    if-ltz v0, :cond_2

    .line 666
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 425
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 426
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;I)V

    :cond_0
    return-void
.end method

.method public hasUnsavedChanged()Z
    .locals 7

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$000(Lorg/telegram/ui/PeerColorActivity;)J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    .line 448
    :cond_0
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v3, :cond_3

    .line 449
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 451
    :cond_3
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$Chat;)I

    move-result v4

    if-ne v3, v4, :cond_5

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$Chat;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1

    .line 454
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_7

    return v2

    .line 456
    :cond_7
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v3, :cond_a

    .line 457
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    if-ne v3, v4, :cond_9

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :cond_9
    :goto_2
    return v1

    .line 459
    :cond_a
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileColorId(Lorg/telegram/tgnet/TLRPC$User;)I

    move-result v4

    if-ne v3, v4, :cond_c

    iget-wide v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getProfileEmojiId(Lorg/telegram/tgnet/TLRPC$User;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v1, v2

    :cond_c
    :goto_3
    return v1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 433
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v0, :cond_0

    .line 434
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x90

    .line 437
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 439
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->actionBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 441
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public premiumChanged()V
    .locals 3

    .line 737
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1000(Lorg/telegram/ui/PeerColorActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonLocked:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonUnlocked:Ljava/lang/CharSequence;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_1
    return-void
.end method

.method public showSelectStatusDialog(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)V
    .locals 23

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    .line 595
    iget-object v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    if-nez v0, :cond_7

    if-nez v14, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v15, 0x1

    new-array v12, v15, [Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/16 v0, 0x14a

    .line 603
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x144

    .line 604
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    .line 606
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2500(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v11

    .line 608
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2500(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 609
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2500(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    .line 610
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->updateImageBounds()V

    .line 611
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->access$2500(Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 612
    iget v4, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v4, :cond_1

    .line 613
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    neg-int v4, v4

    const/16 v5, 0xc

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v0, v4

    neg-int v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v0, v4

    .line 617
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    sub-int/2addr v0, v2

    move v9, v4

    goto :goto_1

    :cond_2
    move v0, v10

    move v9, v0

    .line 620
    :goto_1
    new-instance v8, Lorg/telegram/ui/PeerColorActivity$Page$4;

    iget-object v2, v13, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/16 v16, 0x5

    if-nez v0, :cond_3

    move/from16 v7, v16

    goto :goto_2

    :cond_3
    const/4 v0, 0x7

    move v7, v0

    :goto_2
    const/16 v17, 0x1

    iget-object v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v18

    iget v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    if-nez v0, :cond_4

    const/16 v0, 0x18

    move/from16 v19, v0

    goto :goto_3

    :cond_4
    move/from16 v19, v3

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;->getColor()I

    move-result v20

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move/from16 v7, v17

    move-object v15, v8

    move-object/from16 v8, v18

    move/from16 v21, v9

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v22, v11

    move-object/from16 v11, p1

    move-object/from16 v18, v12

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/PeerColorActivity$Page$4;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IILorg/telegram/ui/PeerColorActivity$Page$SetReplyIconCell;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    const/4 v0, 0x1

    .line 642
    iput-boolean v0, v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->useAccentForPlus:Z

    .line 643
    iget-wide v0, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectedEmoji:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_4
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSelected(Ljava/lang/Long;)V

    const/4 v0, 0x3

    .line 644
    invoke-virtual {v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setSaveState(I)V

    move-object/from16 v1, v22

    .line 645
    invoke-virtual {v15, v1, v14}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V

    .line 646
    new-instance v1, Lorg/telegram/ui/PeerColorActivity$Page$5;

    const/4 v2, -0x2

    invoke-direct {v1, v13, v15, v2, v2}, Lorg/telegram/ui/PeerColorActivity$Page$5;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/view/View;II)V

    iput-object v1, v13, Lorg/telegram/ui/PeerColorActivity$Page;->selectAnimatedEmojiDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    const/4 v2, 0x0

    aput-object v1, v18, v2

    .line 653
    aget-object v1, v18, v2

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_6

    move/from16 v16, v0

    :cond_6
    or-int/lit8 v0, v16, 0x30

    move/from16 v4, v21

    invoke-virtual {v1, v14, v2, v4, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 654
    aget-object v0, v18, v2

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dimBehind()V

    :cond_7
    :goto_5
    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 709
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->access$1200(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v3}, Lorg/telegram/ui/PeerColorActivity;->access$2700(Lorg/telegram/ui/PeerColorActivity;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setColor(IIZ)V

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->updateColors()V

    .line 715
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->messagesCellPreview:Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;

    if-eqz v0, :cond_2

    .line 716
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ThemePreviewMessagesCell;->invalidate()V

    .line 718
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->profilePreview:Lorg/telegram/ui/PeerColorActivity$ProfilePreview;

    if-eqz v0, :cond_3

    .line 719
    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->selectedColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/PeerColorActivity$ProfilePreview;->setColor(IZ)V

    .line 721
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->buttonContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 722
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PeerColorActivity$Page$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PeerColorActivity$Page;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method
