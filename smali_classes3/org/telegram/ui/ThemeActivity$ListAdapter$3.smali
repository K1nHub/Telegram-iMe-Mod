.class Lorg/telegram/ui/ThemeActivity$ListAdapter$3;
.super Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
.source "ThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeActivity$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1997
    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 2005
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method protected showOptionsForTheme(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 1

    .line 2000
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ThemeActivity;->access$1800(Lorg/telegram/ui/ThemeActivity;)Lorg/telegram/ui/ThemeActivity$ListAdapter;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->access$3000(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    return-void
.end method

.method protected updateRows()V
    .locals 2

    .line 2010
    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$3;->this$1:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v0, v0, Lorg/telegram/ui/ThemeActivity$ListAdapter;->this$0:Lorg/telegram/ui/ThemeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ThemeActivity;->access$1600(Lorg/telegram/ui/ThemeActivity;Z)V

    return-void
.end method
