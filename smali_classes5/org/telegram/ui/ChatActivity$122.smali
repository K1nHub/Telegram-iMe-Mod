.class Lorg/telegram/ui/ChatActivity$122;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createMenu(Landroid/view/View;ZZFFZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

.field final synthetic val$foregroundIndex:[I

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;

.field final synthetic val$listView2:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/MessageSeenView;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;[I)V
    .locals 0

    .line 27426
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$122;->val$listView2:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$122;->val$linearLayout:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$122;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$122;->val$foregroundIndex:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 27429
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iget-object p1, p1, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 27432
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iget-object p1, p1, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iget-object p1, p1, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iget-object p1, p1, Lorg/telegram/ui/MessageSeenView;->dates:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_3

    .line 27433
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$finalMessageSeenView:Lorg/telegram/ui/MessageSeenView;

    iget-object p1, p1, Lorg/telegram/ui/MessageSeenView;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-nez p1, :cond_2

    return-void

    .line 27437
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27438
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27439
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 27440
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 27441
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    return-void

    .line 27445
    :cond_3
    sget p1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 27446
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->MessageSeenTooltipMessage:I

    const-string v4, "MessageSeenTooltipMessage"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatActivity;->access$47702(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/Bulletin;)Lorg/telegram/ui/Components/Bulletin;

    .line 27447
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v2, 0xfa0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 27448
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 27449
    sget p1, Lorg/telegram/messenger/SharedConfig;->messageSeenHintCount:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->updateMessageSeenHintCount(I)V

    .line 27452
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    .line 27453
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 27454
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$listView2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27455
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$122;->val$popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$122;->val$foregroundIndex:[I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    :cond_5
    :goto_0
    return-void
.end method
