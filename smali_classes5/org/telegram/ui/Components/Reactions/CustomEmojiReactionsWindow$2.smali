.class Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "CustomEmojiReactionsWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field final synthetic val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field final synthetic val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;


# direct methods
.method public static synthetic $r8$lambda$lNLam_jhppR-zleuhuahveeg6w0(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->lambda$onEmojiSelected$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    .line 125
    iput-object v0, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-object/from16 v0, p8

    iput-object v0, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object/from16 v0, p9

    iput-object v0, v7, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$onEmojiSelected$0()V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$400(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)V

    return-void
.end method


# virtual methods
.method protected invalidateParent()V
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->containerView:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$ContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 1

    .line 145
    iget-object p4, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p4

    if-nez p4, :cond_0

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UnlockPremiumEmojiReaction:I

    const-string p4, "UnlockPremiumEmojiReaction"

    .line 149
    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    sget p4, Lorg/telegram/messenger/R$string;->PremiumMore:I

    const-string v0, "PremiumMore"

    .line 150
    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;)V

    .line 147
    invoke-virtual {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 155
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p2, p4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method protected onInputFocus()V
    .locals 4

    .line 128
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$100(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$102(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Z

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->access$300(Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->needEnterText()Z

    :cond_0
    return-void
.end method

.method protected onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->val$reactionsContainerLayout:Lorg/telegram/ui/Components/ReactionsContainerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow$2;->this$0:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object p1, p1, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->windowView:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method
