.class Lorg/telegram/ui/LanguageSelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "LanguageSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 188
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->search(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$002(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$102(Lorg/telegram/ui/LanguageSelectActivity;Z)Z

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->access$300(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->access$200(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$2;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
