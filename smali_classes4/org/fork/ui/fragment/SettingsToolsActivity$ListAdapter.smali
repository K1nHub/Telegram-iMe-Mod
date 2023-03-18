.class final Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SettingsToolsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/SettingsToolsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/SettingsToolsActivity;


# direct methods
.method public constructor <init>(Lorg/fork/ui/fragment/SettingsToolsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 112
    invoke-static {}, Lorg/fork/enums/SettingsToolsCategory;->values()[Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 96
    sget p1, Lcom/smedialink/common/IdFabric$ViewTypes;->TEXT_SETTINGS:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type org.telegram.ui.Cells.TextCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 107
    invoke-static {}, Lorg/fork/enums/SettingsToolsCategory;->values()[Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v0

    aget-object v0, v0, p2

    .line 108
    invoke-virtual {p0}, Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-virtual {v0}, Lorg/fork/enums/SettingsToolsCategory;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lorg/fork/enums/SettingsToolsCategory;->getIconResId()I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/fork/ui/fragment/SettingsToolsActivity$ListAdapter;->this$0:Lorg/fork/ui/fragment/SettingsToolsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "windowBackgroundWhite"

    .line 100
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 102
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
