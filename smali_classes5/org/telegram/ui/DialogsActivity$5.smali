.class Lorg/telegram/ui/DialogsActivity$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->animateSwitchArchive(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$newActionBarColorKey:I

.field final synthetic val$newSelectorColorKey:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;II)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$5;->val$newActionBarColorKey:I

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$5;->val$newSelectorColorKey:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1172
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$600(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_list:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_archive:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1173
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/DialogsActivity$5;->val$newActionBarColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1174
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/DialogsActivity$5;->val$newSelectorColorKey:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 1175
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    const/16 v0, 0x2c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1177
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1178
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setFolderId(I)V

    .line 1179
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1181
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->setForwardToArchive(Z)V

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1183
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$1202(Lorg/telegram/ui/DialogsActivity;I)I

    goto :goto_2

    .line 1185
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$1302(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1187
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 1188
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1189
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;I)V

    goto :goto_3

    .line 1191
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;I)V

    .line 1193
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$5;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$1600(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method
