.class final Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "RecentChatsDialogTypeSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;->invoke()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;
    .locals 2

    .line 34
    new-instance v0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;

    iget-object v1, p0, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$listAdapter$2;->this$0:Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity$ListAdapter;-><init>(Lorg/fork/ui/fragment/RecentChatsDialogTypeSettingsActivity;)V

    return-object v0
.end method
