.class Lorg/telegram/ui/ManageLinksActivity$9;
.super Ljava/lang/Object;
.source "ManageLinksActivity.java"

# interfaces
.implements Lorg/telegram/ui/LinkEditActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method public static synthetic $r8$lambda$TdDn4Re12F9OynyeF-O2W5h1m-0(Lorg/telegram/ui/ManageLinksActivity$9;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$9;->lambda$onLinkCreated$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 3053
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onLinkCreated$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 3058
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0}, Lorg/telegram/ui/ManageLinksActivity;->access$9400(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object v0

    .line 3059
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3060
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3061
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 3062
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$2900(Lorg/telegram/ui/ManageLinksActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$3300(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    .line 3064
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->access$9500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    return-void
.end method


# virtual methods
.method public onLinkCreated(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 3056
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_0

    .line 3057
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity$9;Lorg/telegram/tgnet/TLObject;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 3071
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    if-eqz v0, :cond_2

    .line 3072
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 3073
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ManageLinksActivity;->fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    const/4 v0, 0x0

    move v1, v0

    .line 3074
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3075
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3076
    iget-boolean p1, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz p1, :cond_0

    .line 3077
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$9400(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 3078
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3079
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3080
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$9500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    goto :goto_1

    .line 3082
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3083
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->access$9600(Lorg/telegram/ui/ManageLinksActivity;Z)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLinkRemoved(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 3

    const/4 v0, 0x0

    .line 3093
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3094
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3095
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$9400(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 3096
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3097
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->access$9500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 1

    .line 3105
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$9;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method
