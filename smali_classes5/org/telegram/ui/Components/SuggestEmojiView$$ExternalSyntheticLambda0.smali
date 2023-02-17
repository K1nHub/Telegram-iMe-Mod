.class public final synthetic Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SuggestEmojiView;

.field public final synthetic f$1:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    iput-object p2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iput-object p3, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/SuggestEmojiView;

    iget-object v1, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    iget-object v2, p0, Lorg/telegram/ui/Components/SuggestEmojiView$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/SuggestEmojiView;->$r8$lambda$-BSDeTv8LudpalLIHyV7luQ-c6s(Lorg/telegram/ui/Components/SuggestEmojiView;Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
