.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "StoryPrivacyBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 1960
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1968
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1969
    instance-of v1, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 1970
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_0

    .line 1971
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    return v2

    .line 1974
    :cond_0
    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->getTypeOn(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 1976
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$5902(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 1978
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4300(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4400(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1979
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 1982
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1983
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    goto :goto_0

    .line 1986
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$4202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;I)I

    .line 1988
    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateCheckboxes(Z)V

    .line 1989
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$Page;->updateButton(Z)V

    :cond_4
    if-eq p1, v1, :cond_5

    .line 1992
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    :cond_5
    if-eq p1, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :cond_7
    :goto_1
    return v2
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 2001
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12900(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2002
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->closeKeyboard()V

    :cond_0
    return-void
.end method

.method protected onTabAnimationUpdate(Z)V
    .locals 0

    .line 1963
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;->access$12800(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
