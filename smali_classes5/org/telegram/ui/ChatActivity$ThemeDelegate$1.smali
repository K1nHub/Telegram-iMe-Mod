.class Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings$onAnimationProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ThemeDelegate;->setCurrentTheme(Lorg/telegram/ui/ActionBar/EmojiThemes;ZLjava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$ThemeDelegate;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ThemeDelegate;)V
    .locals 0

    .line 35262
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setProgress(F)V
    .locals 2

    .line 35265
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 35266
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ThemeDelegate$1;->this$1:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput p1, v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 35267
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->animatingMessageMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iput p1, v1, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->crossfadeProgress:F

    .line 35268
    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity$ThemeDelegate;->access$61300(Lorg/telegram/ui/ChatActivity$ThemeDelegate;F)V

    return-void
.end method
