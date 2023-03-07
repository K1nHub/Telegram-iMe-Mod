.class Lorg/telegram/ui/ThemeSetUrlActivity$4;
.super Lorg/telegram/ui/Cells/ThemesHorizontalListCell;
.source "ThemeSetUrlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemeSetUrlActivity;->lambda$createView$5(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemeSetUrlActivity;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/ui/ActionBar/BottomSheet$Builder;)V
    .locals 0

    .line 376
    iput-object p6, p0, Lorg/telegram/ui/ThemeSetUrlActivity$4;->val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Cells/ThemesHorizontalListCell;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected updateRows()V
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ThemeSetUrlActivity$4;->val$builder:Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
