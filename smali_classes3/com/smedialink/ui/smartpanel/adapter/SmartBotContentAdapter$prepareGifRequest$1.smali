.class public final Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;
.super Ljava/lang/Object;
.source "SmartBotContentAdapter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->prepareGifRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $messagesController:Lorg/telegram/messenger/MessagesController;

.field final synthetic $messagesStorage:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic $query:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;


# direct methods
.method public static synthetic $r8$lambda$NDaD_ap2YsY-doPJfaIg40t24WA(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->run$lambda$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dMmRlXsHVsBM8tHoxf2ysaaPBWk(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->run$lambda$1$lambda$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V

    return-void
.end method

.method constructor <init>(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/String;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    iput-object p2, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$query:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$messagesController:Lorg/telegram/messenger/MessagesController;

    iput-object p4, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$messagesStorage:Lorg/telegram/messenger/MessagesStorage;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$lambda$1(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final run$lambda$1$lambda$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_contacts_resolvedPeer"

    .line 182
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 183
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const-string v1, "res.users"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    if-eqz p0, :cond_0

    .line 184
    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 185
    invoke-virtual {p2, p0, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 186
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, p1, v0, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    move-object v0, p0

    .line 189
    :cond_0
    invoke-static {p4, v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$processFoundUser(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$getContextQueryRunnable$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$setContextQueryRunnable$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Ljava/lang/Runnable;)V

    .line 169
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$getFoundContextBot$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$getFoundContextBot$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$query:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$searchForGifResults(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;ZLorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$messagesController:Lorg/telegram/messenger/MessagesController;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 173
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v1, v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$processFoundUser(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 176
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 177
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    invoke-static {v1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$getCurrentAccount$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$messagesController:Lorg/telegram/messenger/MessagesController;

    iget-object v4, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->$messagesStorage:Lorg/telegram/messenger/MessagesStorage;

    iget-object v5, p0, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1;->this$0:Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    new-instance v6, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3, v4, v5}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter$prepareGifRequest$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MessagesController;Lorg/telegram/messenger/MessagesStorage;Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;)V

    invoke-virtual {v2, v0, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->access$setContextUsernameReqId$p(Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;I)V

    :goto_0
    return-void
.end method
