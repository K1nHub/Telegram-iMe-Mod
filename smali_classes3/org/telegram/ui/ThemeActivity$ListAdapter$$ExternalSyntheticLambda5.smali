.class public final synthetic Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/ThemeActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/ThemeActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/ThemeActivity$ListAdapter;->$r8$lambda$rKDewg17_zqZiEunlmOgJv1iVnw(Lorg/telegram/ui/ThemeActivity$ListAdapter;Lorg/telegram/ui/ThemeActivity$ThemeAccentsListAdapter;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method
