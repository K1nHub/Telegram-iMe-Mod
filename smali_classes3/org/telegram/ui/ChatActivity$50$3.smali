.class Lorg/telegram/ui/ChatActivity$50$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$50;->onTextChanged(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$50;

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$50;Ljava/lang/CharSequence;)V
    .locals 0

    .line 10478
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$50$3;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$50$3;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 10481
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$50$3;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37100(Lorg/telegram/ui/ChatActivity;)Ljava/lang/Runnable;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 10482
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$50$3;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$50$3;->val$text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;Ljava/lang/CharSequence;Z)V

    .line 10483
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$50$3;->this$1:Lorg/telegram/ui/ChatActivity$50;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$37102(Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
