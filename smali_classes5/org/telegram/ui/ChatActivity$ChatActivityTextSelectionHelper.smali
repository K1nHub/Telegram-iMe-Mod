.class Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;
.super Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatActivityTextSelectionHelper"
.end annotation


# instance fields
.field chatActivity:Lorg/telegram/ui/ChatActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4578
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 4578
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public getDialogId()Ljava/lang/Long;
    .locals 2

    .line 4584
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getParentBottomPadding()I
    .locals 1

    .line 4609
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    :goto_0
    return v0
.end method

.method public getParentTopPadding()I
    .locals 1

    .line 4604
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4600(Lorg/telegram/ui/ChatActivity;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method protected getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 1

    .line 4619
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    .line 4620
    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 4614
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method public isShowQuote()Z
    .locals 2

    .line 4589
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 1

    .line 4596
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;->cancelAllAnimators()V

    .line 4597
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    const/4 v0, 0x0

    .line 4598
    iput-object v0, p0, Lorg/telegram/ui/Cells/TextSelectionHelper;->textSelectionOverlay:Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    .line 4599
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;->chatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method
