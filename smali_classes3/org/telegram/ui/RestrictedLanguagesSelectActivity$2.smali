.class Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "RestrictedLanguagesSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->search(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$002(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$102(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$300(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$002(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 189
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->search(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$102(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$500(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$002(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$102(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;Z)Z

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$300(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$200(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/RestrictedLanguagesSelectActivity$2;->this$0:Lorg/telegram/ui/RestrictedLanguagesSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/RestrictedLanguagesSelectActivity;->access$400(Lorg/telegram/ui/RestrictedLanguagesSelectActivity;)Lorg/telegram/ui/RestrictedLanguagesSelectActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
