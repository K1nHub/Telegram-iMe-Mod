.class public Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
.super Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatActivityAdapter"
.end annotation


# instance fields
.field private botInfoEmptyRow:I

.field private botInfoRow:I

.field public frozenMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private isBot:Z

.field public isFrozen:Z

.field private loadingDownRow:I

.field private loadingUpRow:I

.field private mContext:Landroid/content/Context;

.field private messagesEndRow:I

.field public messagesStartRow:I

.field private rowCount:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$CsUb57FiuzftobsZrnuQcOKIs-c(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->lambda$onCreateViewHolder$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQpeUtTj82mmU4ReDQKlEst2k88(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->lambda$updateRowsInternal$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 1

    .line 31360
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;-><init>()V

    const/4 v0, -0x5

    .line 31350
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 31351
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    .line 31352
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 31353
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 31358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    .line 31361
    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    .line 31362
    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    .line 31363
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$20600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z
    .locals 0

    .line 31345
    iget-boolean p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z

    return p0
.end method

.method static synthetic access$22100(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 31345
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    return p0
.end method

.method static synthetic access$27800(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 31345
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    return p0
.end method

.method static synthetic access$44600(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 31345
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    return p0
.end method

.method static synthetic access$44700(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)I
    .locals 0

    .line 31345
    iget p0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    return p0
.end method

.method static synthetic access$44800(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V
    .locals 0

    .line 31345
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$1(Ljava/lang/String;)V
    .locals 8

    const-string v0, "@"

    .line 31695
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31696
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1, v2, v1}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    goto :goto_1

    :cond_0
    const-string v0, "#"

    .line 31697
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "/"

    .line 31701
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31702
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setCommand(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZZ)V

    .line 31703
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_4

    .line 31704
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ChatActivity;->hideFieldPanel(Z)V

    goto :goto_1

    .line 31707
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->access$25500(Lorg/telegram/ui/ChatActivity;ILjava/lang/String;Landroid/text/style/CharacterStyle;Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    goto :goto_1

    .line 31698
    :cond_3
    :goto_0
    new-instance v0, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 31699
    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->setSearchString(Ljava/lang/String;)V

    .line 31700
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$updateRowsInternal$0()V
    .locals 1

    .line 31420
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_0

    .line 31421
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateCombineMessages()V

    :cond_0
    return-void
.end method

.method private updateRowsInternal()V
    .locals 9

    const/4 v0, 0x0

    .line 31382
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 31383
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 31384
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x5

    if-nez v2, :cond_a

    .line 31385
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    cmp-long v2, v7, v5

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$23900(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v3

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$48300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 31386
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    goto :goto_1

    .line 31388
    :cond_2
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 31390
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 31391
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 31392
    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 31394
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_6

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_5

    goto :goto_2

    .line 31397
    :cond_5
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    goto :goto_3

    .line 31395
    :cond_6
    :goto_2
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 31400
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, v3

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$18100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_8

    goto :goto_4

    .line 31403
    :cond_8
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_6

    .line 31401
    :cond_9
    :goto_4
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    goto :goto_6

    .line 31406
    :cond_a
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 31407
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 31408
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 31409
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 31411
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_b

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_b

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    .line 31414
    :cond_c
    iput v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    goto :goto_6

    .line 31412
    :cond_d
    :goto_5
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 31418
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isAllowCombineMessages()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31419
    new-instance v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_e
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 6

    const/4 v0, -0x5

    .line 31430
    iput v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    .line 31431
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 31432
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInfo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31433
    :cond_2
    iput v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    return v3

    :cond_3
    return v1

    .line 31438
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 5

    .line 31443
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 31444
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_0

    return-wide v1

    .line 31448
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 31450
    :goto_0
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v3, :cond_2

    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v4, :cond_2

    sub-int/2addr p1, v3

    .line 31451
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->stableId:I

    int-to-long v0, p1

    return-wide v0

    .line 31452
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-eq p1, v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 31454
    :cond_3
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x2

    return-wide v0

    .line 31456
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x3

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x4

    return-wide v0

    :cond_6
    :goto_1
    return-wide v1
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 32142
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$48500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 32143
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne p1, v0, :cond_0

    return v1

    .line 32147
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt p1, v0, :cond_2

    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge p1, v2, :cond_2

    .line 32148
    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_0
    sub-int/2addr p1, v0

    .line 32149
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->contentType:I

    return p1

    .line 32150
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method public invalidateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 32283
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 32285
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 32286
    instance-of v3, v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_0

    .line 32287
    check-cast v2, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 32288
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 32289
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 32361
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    return-void
.end method

.method public notifyDataSetChanged(Z)V
    .locals 5

    .line 32326
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify data set changed fragmentOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 32329
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    if-eqz v0, :cond_1

    .line 32330
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 32331
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32334
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32336
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32338
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32340
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 32343
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_2
    const/4 v1, 0x0

    if-ltz p1, :cond_5

    .line 32344
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 32345
    iget-boolean v3, v2, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 32348
    :cond_3
    iget-object p1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionTopicCreate;

    if-nez v2, :cond_4

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz p1, :cond_5

    :cond_4
    move p1, v0

    goto :goto_3

    :cond_5
    move p1, v1

    .line 32353
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v2

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$48400(Lorg/telegram/ui/ChatActivity;)[Z

    move-result-object v1

    aget-boolean v0, v1, v0

    if-nez v0, :cond_7

    :cond_6
    if-eqz p1, :cond_8

    .line 32354
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$52400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$18300(Lorg/telegram/ui/ChatActivity;Z)V

    :cond_8
    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 2

    .line 32366
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32367
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32368
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 32369
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32371
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32373
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32375
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 2

    .line 32399
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item inserted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32402
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52700(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32403
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32404
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32405
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32407
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32409
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemInserted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32411
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 2

    .line 32417
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item moved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32420
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32421
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32422
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32423
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32425
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32427
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32429
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2

    .line 32381
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32384
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52600(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32385
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32386
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32387
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32389
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32391
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32393
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 7

    .line 32435
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range inserted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32438
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32439
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32440
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32441
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32443
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    if-lez p2, :cond_5

    add-int v1, p1, p2

    .line 32446
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v1, v2, :cond_5

    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v1, v3, :cond_5

    .line 32447
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    sub-int v2, v1, v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 32448
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 32449
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v0

    if-ne v1, v0, :cond_5

    .line 32450
    :cond_4
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 32455
    :cond_5
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeInserted(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32457
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2

    .line 32481
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item range removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32484
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32485
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32486
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32487
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32489
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32491
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRangeRemoved(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32493
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 2

    .line 32463
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 32464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify item removed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 32466
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$53000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32467
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 32468
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 32469
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 32471
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 32473
    :try_start_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyItemRemoved(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32475
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 31719
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_3b

    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoEmptyRow:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_26

    .line 31732
    :cond_0
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-eq v2, v3, :cond_39

    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne v2, v3, :cond_1

    goto/16 :goto_24

    .line 31735
    :cond_1
    iget v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v2, v3, :cond_42

    iget v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v2, v7, :cond_42

    .line 31736
    iget-boolean v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v7, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_0
    sub-int v3, v2, v3

    .line 31738
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 31739
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31741
    instance-of v9, v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v9, :cond_34

    .line 31742
    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 31743
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9, v3}, Lorg/telegram/ui/ChatActivity;->access$21400(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v9

    .line 31745
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$22200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v10

    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->albumMode:Z

    .line 31746
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10, v5, v6}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v10

    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isTemplatesChannel:Z

    .line 31748
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v11, :cond_4

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    move v10, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v10, v5

    :goto_2
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 31749
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v11, v10, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v11, :cond_5

    iget-boolean v11, v11, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v11, :cond_5

    move v11, v5

    goto :goto_3

    :cond_5
    move v11, v6

    :goto_3
    iput-boolean v11, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isBot:Z

    .line 31750
    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v10, :cond_6

    move v10, v5

    goto :goto_4

    :cond_6
    move v10, v6

    :goto_4
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isMegagroup:Z

    .line 31751
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    .line 31752
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v11, v10, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getTopicId()I

    move-result v10

    if-ne v10, v5, :cond_7

    move v10, v5

    goto :goto_5

    :cond_7
    move v10, v6

    :goto_5
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isForumGeneral:Z

    .line 31753
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    if-nez v10, :cond_9

    iget-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isForum:Z

    if-eqz v10, :cond_8

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v10, v10, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    move v10, v6

    goto :goto_7

    :cond_9
    :goto_6
    move v10, v5

    :goto_7
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isThreadChat:Z

    .line 31754
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    if-eq v10, v5, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v10}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v11, v10, Lorg/telegram/tgnet/TLRPC$Chat;->has_link:Z

    if-eqz v11, :cond_a

    iget-boolean v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v10, :cond_a

    move v10, v5

    goto :goto_8

    :cond_a
    move v10, v6

    :goto_8
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->hasDiscussion:Z

    .line 31755
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$50000(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    if-eqz v9, :cond_c

    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$50000(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    move v10, v5

    goto :goto_9

    :cond_c
    move v10, v6

    :goto_9
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinned:Z

    .line 31756
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    if-eq v10, v5, :cond_d

    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v10, :cond_d

    iget-wide v13, v10, Lorg/telegram/tgnet/TLRPC$ChatFull;->linked_chat_id:J

    goto :goto_a

    :cond_d
    const-wide/16 v13, 0x0

    :goto_a
    iput-wide v13, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->linkedChatId:J

    .line 31757
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v10, v10, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v10}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v10

    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isRepliesChat:Z

    .line 31758
    iget-object v10, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_e

    move v10, v5

    goto :goto_b

    :cond_e
    move v10, v6

    :goto_b
    iput-boolean v10, v8, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedChat:Z

    if-eqz v9, :cond_13

    .line 31767
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v10, :cond_12

    .line 31769
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-eqz v14, :cond_f

    .line 31770
    iget-object v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    add-int/2addr v13, v2

    add-int/2addr v13, v5

    .line 31771
    iget-object v14, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v2, v14

    iget-object v14, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/2addr v2, v10

    move/from16 v17, v2

    goto :goto_e

    .line 31773
    :cond_f
    iget v14, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_10

    .line 31774
    iget-object v14, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    add-int/2addr v14, v2

    add-int/2addr v14, v5

    move v15, v6

    move/from16 v16, v15

    goto :goto_c

    :cond_10
    move v15, v5

    move/from16 v16, v15

    const/16 v14, -0x64

    .line 31780
    :goto_c
    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v13, v13, 0x8

    if-eqz v13, :cond_11

    .line 31781
    iget-object v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v2, v13

    iget-object v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int v13, v2, v10

    move v2, v6

    move v10, v2

    move/from16 v17, v13

    move v13, v14

    goto :goto_f

    :cond_11
    move v2, v5

    move v10, v2

    move v13, v14

    goto :goto_d

    :cond_12
    move v2, v6

    move v10, v2

    move v15, v10

    move/from16 v16, v15

    const/16 v13, -0x64

    :goto_d
    const/16 v17, -0x64

    goto :goto_f

    :cond_13
    add-int/lit8 v17, v2, -0x1

    add-int/lit8 v13, v2, 0x1

    :goto_e
    move v2, v6

    move v10, v2

    move v15, v10

    move/from16 v16, v15

    :goto_f
    move/from16 v14, v17

    .line 31796
    invoke-virtual {v0, v14}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v5

    .line 31797
    invoke-virtual {v0, v13}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->getItemViewType(I)I

    move-result v4

    .line 31799
    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    const/16 v11, 0x12c

    if-nez v6, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v6

    if-ne v5, v6, :cond_1d

    .line 31800
    iget v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v14, v5

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 31801
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v10

    if-ne v6, v10, :cond_14

    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v11, :cond_14

    const/4 v10, 0x1

    goto :goto_10

    :cond_14
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_1d

    .line 31803
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_13

    .line 31819
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v6, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_17

    .line 31820
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    .line 31821
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v20

    cmp-long v10, v5, v20

    if-nez v10, :cond_16

    const/4 v10, 0x1

    goto :goto_11

    :cond_16
    const/4 v10, 0x0

    :goto_11
    if-nez v2, :cond_1d

    if-eqz v10, :cond_1d

    const-wide/16 v18, 0x0

    cmp-long v5, v5, v18

    if-gez v5, :cond_1d

    .line 31822
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_1d

    goto/16 :goto_14

    .line 31825
    :cond_17
    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v6, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 31826
    :cond_18
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_14

    .line 31829
    :cond_19
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v20

    cmp-long v5, v5, v20

    if-nez v5, :cond_1c

    :goto_12
    const/4 v10, 0x1

    goto :goto_15

    .line 31804
    :cond_1a
    :goto_13
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 31805
    iget-object v6, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v10, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v11, :cond_1c

    .line 31806
    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v6, :cond_1b

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v10, :cond_1b

    .line 31807
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_15

    .line 31808
    :cond_1b
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_1c

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v6, :cond_1c

    .line 31809
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    iget-object v10, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v20

    cmp-long v5, v5, v20

    if-nez v5, :cond_1c

    goto :goto_12

    :cond_1c
    :goto_14
    const/4 v10, 0x0

    .line 31834
    :cond_1d
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne v4, v5, :cond_28

    .line 31835
    iget v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    sub-int/2addr v13, v4

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 31836
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    if-nez v5, :cond_1e

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v6

    if-ne v5, v6, :cond_1e

    iget-object v5, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v11, :cond_1e

    const/4 v15, 0x1

    goto :goto_16

    :cond_1e
    const/4 v15, 0x0

    :goto_16
    if-eqz v15, :cond_28

    .line 31838
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_19

    .line 31854
    :cond_1f
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_22

    .line 31855
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v5

    .line 31856
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v11

    cmp-long v7, v5, v11

    if-nez v7, :cond_20

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_17

    :cond_20
    const/4 v4, 0x0

    :goto_17
    if-nez v16, :cond_21

    if-eqz v4, :cond_21

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-gez v5, :cond_21

    .line 31857
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v5, :cond_21

    goto/16 :goto_1a

    :cond_21
    move v15, v4

    goto/16 :goto_1b

    .line 31860
    :cond_22
    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 31861
    :cond_23
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v5

    if-nez v5, :cond_27

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isPrivateForward()Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_1a

    .line 31864
    :cond_24
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v4

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    :goto_18
    const/4 v15, 0x1

    goto :goto_1b

    .line 31839
    :cond_25
    :goto_19
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 31840
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->date:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v11, :cond_27

    .line 31841
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v5, :cond_26

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_name:Ljava/lang/String;

    if-eqz v6, :cond_26

    .line 31842
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    goto :goto_1b

    .line 31843
    :cond_26
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v4, :cond_27

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_27

    .line 31844
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    goto :goto_18

    :cond_27
    :goto_1a
    const/4 v15, 0x0

    .line 31869
    :cond_28
    :goto_1b
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2a

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_2a

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_2a

    if-nez v16, :cond_29

    const/4 v15, 0x0

    :cond_29
    if-nez v2, :cond_2a

    const/4 v2, 0x0

    const/4 v10, 0x0

    goto :goto_1c

    :cond_2a
    const/4 v2, 0x0

    .line 31878
    :goto_1c
    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    if-eqz v9, :cond_2b

    move v4, v2

    .line 31880
    :goto_1d
    iget-object v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2b

    .line 31881
    iget-object v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_1d

    .line 31884
    :cond_2b
    invoke-virtual {v8, v3, v9, v10, v15}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    .line 31885
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    goto :goto_1e

    :cond_2c
    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSpoilersSuppressed(Z)V

    .line 31886
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v2, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_2d

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-ne v2, v5, :cond_2d

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 31887
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v2, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v5, v4, :cond_2e

    .line 31888
    invoke-static {v2, v8}, Lorg/telegram/ui/ChatActivity;->access$50100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 31891
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_33

    .line 31893
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_30

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v4

    if-eqz v4, :cond_30

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/InstantCameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/InstantCameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 31895
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$50200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 31896
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$50200(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 31897
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/telegram/ui/ChatActivity;->access$50202(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 31899
    :cond_2f
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_20

    .line 31990
    :cond_30
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnyKindOfSticker()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmojiStickers()Z

    move-result v4

    if-nez v4, :cond_31

    .line 31992
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;

    invoke-direct {v5, v0, v8}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_20
    const/4 v6, 0x1

    goto :goto_21

    :cond_31
    const/4 v6, 0x0

    :goto_21
    if-nez v6, :cond_32

    .line 32106
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v4

    if-nez v4, :cond_33

    .line 32107
    :cond_32
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->animatingMessageObjects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32108
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->startMessageTransition()V

    .line 32109
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hideTopView(Z)V

    .line 32112
    :cond_33
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$51100(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$51100(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 32113
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$51100(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32114
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 32115
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5300(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$51200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatGreetingsView;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onGreetingStickerTransition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/ui/Components/ChatGreetingsView;)V

    goto/16 :goto_2b

    .line 32118
    :cond_34
    instance-of v1, v8, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v1, :cond_38

    .line 32119
    check-cast v8, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 32121
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 32122
    sget v1, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    const-string v2, "PrivacyForwards"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    goto :goto_22

    .line 32123
    :cond_35
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$22200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    if-eqz v1, :cond_36

    .line 32124
    sget v1, Lorg/telegram/messenger/R$string;->cloud_album_created:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 32127
    :cond_36
    :goto_22
    invoke-virtual {v8, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32128
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 32129
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_37

    const/4 v5, 0x1

    goto :goto_23

    :cond_37
    const/4 v5, 0x0

    :goto_23
    invoke-virtual {v8, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    goto/16 :goto_2b

    .line 32130
    :cond_38
    instance-of v1, v8, Lorg/telegram/ui/Cells/ChatUnreadCell;

    if-eqz v1, :cond_42

    .line 32131
    check-cast v8, Lorg/telegram/ui/Cells/ChatUnreadCell;

    .line 32132
    sget v1, Lorg/telegram/messenger/R$string;->UnreadMessages:I

    const-string v2, "UnreadMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Cells/ChatUnreadCell;->setText(Ljava/lang/String;)V

    .line 32133
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$51300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-eqz v1, :cond_42

    .line 32134
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$51302(Lorg/telegram/ui/ChatActivity;I)I

    goto/16 :goto_2b

    .line 31733
    :cond_39
    :goto_24
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    .line 31734
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$49900(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3a

    move v5, v3

    goto :goto_25

    :cond_3a
    const/4 v5, 0x0

    :goto_25
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/ChatLoadingCell;->setProgressVisible(Z)V

    goto/16 :goto_2b

    :cond_3b
    :goto_26
    move v3, v5

    const/4 v5, 0x0

    .line 31720
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/BotHelpCell;

    .line 31722
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->isTemplatesChannel(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 31723
    sget v2, Lorg/telegram/messenger/R$string;->chat_templates_info:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;)V

    goto :goto_2a

    .line 31725
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 31726
    sget v2, Lorg/telegram/messenger/R$string;->RepliesChatInfo:I

    const-string v3, "RepliesChatInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;)V

    goto :goto_2a

    .line 31728
    :cond_3d
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$27700(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$BotInfo;

    goto :goto_27

    :cond_3e
    move-object v2, v5

    :goto_27
    if-eqz v2, :cond_3f

    .line 31729
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->description:Ljava/lang/String;

    goto :goto_28

    :cond_3f
    move-object v3, v5

    :goto_28
    if-eqz v2, :cond_41

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_40

    goto :goto_29

    :cond_40
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$BotInfo;->description_photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_29

    :cond_41
    move-object v4, v5

    :goto_29
    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4, v2}, Lorg/telegram/ui/Cells/BotHelpCell;->setText(ZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$BotInfo;)V

    .line 31731
    :goto_2a
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1}, Lorg/telegram/ui/ChatActivity;->access$49800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/BotHelpCell;)V

    :cond_42
    :goto_2b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 31466
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$48600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 31467
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$48600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 31468
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$48600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 31470
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity;->sharedResources:Lorg/telegram/messenger/ChatMessageSharedResources;

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$48700(Lorg/telegram/ui/ChatActivity;)I

    move-result v8

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;ZLorg/telegram/messenger/ChatMessageSharedResources;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 31472
    :goto_0
    move-object v1, p2

    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 31473
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setResourcesProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 31474
    iput-boolean v0, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->shouldCheckVisibleOnScreen:Z

    .line 31475
    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v3, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDelegate(Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;)V

    .line 31476
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p1, :cond_1

    .line 31477
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAllowAssistant(Z)V

    :cond_1
    move-object p1, p2

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_3

    .line 31480
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$48900(Lorg/telegram/ui/ChatActivity;)I

    move-result v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 31489
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/ChatActionCell;->setInvalidateColors(Z)V

    .line 31490
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ChatActionCell;->setDelegate(Lorg/telegram/ui/Cells/ChatActionCell$ChatActionCellDelegate;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 31691
    new-instance p1, Lorg/telegram/ui/Cells/ChatUnreadCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/ChatUnreadCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 31693
    new-instance p1, Lorg/telegram/ui/Cells/BotHelpCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/BotHelpCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 31694
    new-instance p2, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/BotHelpCell;->setDelegate(Lorg/telegram/ui/Cells/BotHelpCell$BotHelpCellDelegate;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 31711
    new-instance p1, Lorg/telegram/ui/Cells/ChatLoadingCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/ChatLoadingCell;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 31713
    :cond_6
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31714
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .line 32158
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v0, :cond_1

    .line 32159
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    .line 32161
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    .line 32162
    check-cast v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 32163
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    const/4 v4, -0x1

    .line 32164
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    .line 32165
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$51400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$51400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32166
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$51500(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    .line 32168
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32169
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getStickerEmoji()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 32171
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/MessagesController;->emojiSounds:Ljava/util/HashMap;

    const-string v6, "\ufe0f"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessagesController$EmojiSound;

    if-eqz v5, :cond_3

    .line 32173
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaController()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    invoke-virtual {v6, v7, v4, v5, v2}, Lorg/telegram/messenger/MediaController;->playEmojiSound(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;Lorg/telegram/messenger/MessagesController$EmojiSound;Z)V

    .line 32177
    :cond_3
    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessageObject;->updateTranslation(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 32178
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result v5

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    goto :goto_1

    .line 32180
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v4

    if-eqz v4, :cond_5

    move v5, v3

    .line 32182
    :goto_0
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 32183
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->updateTranslation()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 32190
    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$51600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)I

    move-result v4

    if-ltz v4, :cond_6

    goto :goto_2

    .line 32202
    :cond_6
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    .line 32203
    invoke-virtual {v0, v3, v3, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    .line 32204
    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    move v4, v3

    move v5, v4

    goto :goto_7

    .line 32191
    :cond_7
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$16400(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v2

    :goto_4
    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 32192
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    move v4, v3

    goto :goto_5

    :cond_a
    move v4, v2

    .line 32193
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_b

    .line 32194
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5, v1, v0, v4, v3}, Lorg/telegram/ui/ChatActivity;->access$51700(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;IZ)V

    move v4, v2

    goto :goto_6

    .line 32197
    :cond_b
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    .line 32198
    invoke-virtual {v0, v3, v3, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    move v4, v3

    :goto_6
    move v5, v2

    :goto_7
    xor-int/lit8 v6, v5, 0x1

    if-eqz v5, :cond_c

    if-eqz v4, :cond_c

    move v4, v2

    goto :goto_8

    :cond_c
    move v4, v3

    .line 32206
    :goto_8
    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckPressed(ZZ)V

    .line 32208
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$41500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$41500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$16600(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_9

    :cond_d
    move v1, v3

    :goto_9
    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/MediaDataController;->isMessageFound(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 32209
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getLastSearchQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    .line 32211
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)V

    .line 32214
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$51800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v1

    if-nez v1, :cond_11

    .line 32215
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v1, v1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    const v4, 0x7fffffff

    if-eq v1, v4, :cond_10

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-ne v1, v5, :cond_10

    move v1, v2

    goto :goto_b

    :cond_10
    move v1, v3

    :goto_b
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 32216
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v1, Lorg/telegram/ui/ChatActivity;->highlightMessageId:I

    if-eq v5, v4, :cond_11

    .line 32217
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$50100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 32222
    :cond_11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 32223
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-lt v0, v1, :cond_17

    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-ge v0, v4, :cond_17

    .line 32224
    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_c

    :cond_12
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    :goto_c
    sub-int/2addr v0, v1

    .line 32226
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 32227
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_17

    .line 32228
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_17

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    if-eqz v4, :cond_17

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->mentioned:Z

    if-eqz v1, :cond_17

    .line 32229
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$51900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-nez v1, :cond_15

    .line 32230
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_15

    .line 32231
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24810(Lorg/telegram/ui/ChatActivity;)I

    .line 32232
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    if-gtz v1, :cond_13

    .line 32233
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChatActivity;->access$24802(Lorg/telegram/ui/ChatActivity;I)I

    .line 32234
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$24702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32235
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v3, v2}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto :goto_d

    .line 32237
    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$25000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$24800(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "%d"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 32239
    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_e

    :cond_14
    const-wide/16 v5, 0x0

    :goto_e
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/messenger/MessagesController;->markMentionMessageAsRead(IJJ)V

    .line 32240
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    .line 32243
    :cond_15
    instance-of v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_17

    .line 32244
    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 32245
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52000(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 32246
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    goto :goto_f

    .line 32248
    :cond_16
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedAnimated()V

    :cond_17
    :goto_f
    return-void
.end method

.method public updateRowAtPosition(I)V
    .locals 7

    .line 32256
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 32262
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2900(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32263
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 32265
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 32266
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$52100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 32267
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$52100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 32269
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$52100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32270
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ChatActivity;->access$52200(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 32276
    :goto_1
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    if-eq v0, v2, :cond_3

    .line 32278
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public updateRowWithMessageObject(Lorg/telegram/messenger/MessageObject;ZZ)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_1

    .line 32298
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 32300
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 32301
    instance-of v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v2, :cond_0

    .line 32302
    check-cast v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 32303
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isAdminLayoutChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32304
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedBottom()Z

    move-result p3

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->isPinnedTop()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;ZZ)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32310
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isFrozen:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->frozenMessages:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    .line 32312
    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    return-object v1

    :cond_3
    if-eqz p3, :cond_4

    .line 32317
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$52308()I

    move-result p2

    iput p2, p1, Lorg/telegram/messenger/MessageObject;->stableId:I

    const/4 p1, 0x1

    .line 32318
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    goto :goto_2

    .line 32320
    :cond_4
    iget p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowAtPosition(I)V

    :goto_2
    return-object v1
.end method

.method public updateRowsSafe()V
    .locals 7

    .line 31367
    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    .line 31368
    iget v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    .line 31369
    iget v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    .line 31370
    iget v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    .line 31371
    iget v4, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    .line 31372
    iget v5, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    .line 31373
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->updateRowsInternal()V

    .line 31374
    iget v6, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->rowCount:I

    if-ne v0, v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->botInfoRow:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingUpRow:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->loadingDownRow:I

    if-ne v3, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesStartRow:I

    if-ne v4, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->messagesEndRow:I

    if-eq v5, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 31377
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->notifyDataSetChanged(Z)V

    :cond_1
    return-void
.end method
