.class Lorg/telegram/ui/ChatActivity$134;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openReportChat(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 28452
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$134;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCompleteForwardingEditing(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onCompleteForwardingEditing(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onReport()V
    .locals 5

    .line 28455
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$134;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method public synthetic onUnpin(ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$onUnpin(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic openReplyMessage(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$openReplyMessage(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;I)V

    return-void
.end method

.method public synthetic openSearch(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate$-CC;->$default$openSearch(Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;Ljava/lang/String;)V

    return-void
.end method
