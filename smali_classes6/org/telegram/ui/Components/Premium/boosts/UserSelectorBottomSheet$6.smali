.class Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;
.super Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;
.source "UserSelectorBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected calculateCounterWidth(FF)F
    .locals 2

    .line 236
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$200(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 237
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$202(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;F)F

    if-eqz p2, :cond_1

    .line 239
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$600(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;)V

    .line 240
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet$6;->this$0:Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;->access$700(Lorg/telegram/ui/Components/Premium/boosts/UserSelectorBottomSheet;Z)V

    :cond_1
    return p1
.end method
