.class final Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExtendedAvatarPreviewerSettingsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;->invoke()Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;
    .locals 2

    .line 32
    new-instance v0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;

    iget-object v1, p0, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$listAdapter$2;->this$0:Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {v0, v1}, Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity$ListAdapter;-><init>(Lorg/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;)V

    return-object v0
.end method
