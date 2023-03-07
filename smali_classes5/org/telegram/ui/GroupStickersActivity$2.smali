.class Lorg/telegram/ui/GroupStickersActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "GroupStickersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupStickersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupStickersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupStickersActivity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/GroupStickersActivity;->access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v1}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 0

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->access$200(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/GroupStickersActivity;->access$002(Lorg/telegram/ui/GroupStickersActivity;Z)Z

    .line 155
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupStickersActivity;->access$400(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$000(Lorg/telegram/ui/GroupStickersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$100(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$2;->this$0:Lorg/telegram/ui/GroupStickersActivity;

    invoke-static {v0}, Lorg/telegram/ui/GroupStickersActivity;->access$300(Lorg/telegram/ui/GroupStickersActivity;)Lorg/telegram/ui/GroupStickersActivity$ListAdapter;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method
