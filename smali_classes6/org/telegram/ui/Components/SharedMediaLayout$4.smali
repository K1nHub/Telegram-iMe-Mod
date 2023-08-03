.class Lorg/telegram/ui/Components/SharedMediaLayout$4;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;)V
    .locals 0

    .line 1693
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIII)V
    .locals 0

    .line 1771
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 1772
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setTranslationX(F)V

    return-void
.end method

.method public onSearchCollapse()V
    .locals 4

    .line 1707
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 1708
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 1710
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1711
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 1714
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 1715
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->search(Ljava/lang/String;Z)V

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSearchStateChanged(Z)V

    .line 1720
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isMembersFilterItemVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1724
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2200(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2202(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    return-void

    .line 1728
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1402(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 1697
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->onSearchStateChanged(Z)V

    .line 1699
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1500(Lorg/telegram/ui/Components/SharedMediaLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 4

    .line 1733
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1734
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    goto :goto_0

    .line 1737
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1602(Lorg/telegram/ui/Components/SharedMediaLayout;Z)Z

    .line 1739
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2300(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    .line 1741
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    sget v3, Lcom/iMe/common/IdFabric$CustomType;->MEDIA_TAB_PLAYLIST:I

    if-ne v0, v3, :cond_1

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1743
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1746
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 1750
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1751
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 1755
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1756
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_7

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    .line 1760
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->search(Ljava/lang/String;Z)V

    goto :goto_1

    .line 1761
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 1762
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 1765
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$4;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$GroupUsersSearchAdapter;->search(Ljava/lang/String;Z)V

    :cond_9
    :goto_1
    return-void
.end method
