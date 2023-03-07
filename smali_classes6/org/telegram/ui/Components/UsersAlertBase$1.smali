.class Lorg/telegram/ui/Components/UsersAlertBase$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "UsersAlertBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/UsersAlertBase;-><init>(Landroid/content/Context;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UsersAlertBase;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/UsersAlertBase;Landroid/content/Context;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/UsersAlertBase$1;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(FF)Z
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$1;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/UsersAlertBase;->isAllowSelectChildAtPosition(FF)Z

    move-result p1

    return p1
.end method

.method public emptyViewIsVisible()Z
    .locals 3

    .line 134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UsersAlertBase$1;->this$0:Lorg/telegram/ui/Components/UsersAlertBase;

    iget-boolean v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->isEmptyViewVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 129
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    return-void
.end method
