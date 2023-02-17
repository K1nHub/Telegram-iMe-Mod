.class final Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MusicActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/MusicActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/MusicActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;->invoke()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 4

    .line 52
    new-instance v0, Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;

    iget-object v1, p0, Lorg/fork/ui/fragment/MusicActivity$botsAdapter$2;->this$0:Lorg/fork/ui/fragment/MusicActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/smedialink/ui/music/MusicTab;->BOTS:Lcom/smedialink/ui/music/MusicTab;

    invoke-direct {v0, v1, v2, v3}, Lorg/fork/ui/fragment/MusicActivity$DialogsAdapter;-><init>(Lorg/fork/ui/fragment/MusicActivity;Landroid/content/Context;Lcom/smedialink/ui/music/MusicTab;)V

    return-object v0
.end method
