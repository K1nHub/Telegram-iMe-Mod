.class public final synthetic Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

.field public final synthetic f$2:Lorg/telegram/ui/Components/RecyclerListView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    iput-object p3, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda4;->f$2:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->$r8$lambda$GmK8utN_w42o1MT1NhXvh53YOZA(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;I)V

    return-void
.end method
