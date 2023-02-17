.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$3;
.super Lorg/telegram/ui/Components/EmojiPacksAlert;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->lambda$didPressReaction$6(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V
    .locals 0

    .line 31591
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$3;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 31594
    invoke-super {p0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    .line 31595
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$3;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->dimBehindView(Z)V

    return-void
.end method
