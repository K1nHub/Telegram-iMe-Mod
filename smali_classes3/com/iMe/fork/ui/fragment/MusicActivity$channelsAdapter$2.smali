.class final Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MusicActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/ui/fragment/MusicActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;


# direct methods
.method constructor <init>(Lcom/iMe/fork/ui/fragment/MusicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;
    .locals 4

    .line 44
    new-instance v0, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    iget-object v1, p0, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;->this$0:Lcom/iMe/fork/ui/fragment/MusicActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "parentActivity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/iMe/ui/music/MusicTab;->CHANNELS:Lcom/iMe/ui/music/MusicTab;

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;-><init>(Lcom/iMe/fork/ui/fragment/MusicActivity;Landroid/content/Context;Lcom/iMe/ui/music/MusicTab;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/iMe/fork/ui/fragment/MusicActivity$channelsAdapter$2;->invoke()Lcom/iMe/fork/ui/fragment/MusicActivity$DialogsAdapter;

    move-result-object v0

    return-object v0
.end method
