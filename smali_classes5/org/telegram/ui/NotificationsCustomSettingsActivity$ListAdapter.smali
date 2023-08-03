.class Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "NotificationsCustomSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsCustomSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsCustomSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 1791
    iput-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 1792
    iput-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1803
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 1994
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1997
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x5

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1797
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10

    if-ltz p2, :cond_c

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_7

    .line 1851
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 1852
    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v3

    .line 1853
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v4, 0x0

    const-string v5, ""

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 1933
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1934
    iget v1, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->resId:I

    if-nez v1, :cond_2

    const/4 v1, -0x1

    .line 1935
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 1938
    :cond_2
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->resId:I

    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/String;IZ)V

    goto/16 :goto_7

    .line 1896
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 1897
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setDrawLine(Z)V

    .line 1899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1901
    iget-object p1, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1903
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 1904
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForPrivateChats:I

    const-string v0, "NotificationsForPrivateChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableAll2"

    .line 1905
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_1
    move-object v5, p2

    goto :goto_2

    .line 1906
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    if-nez p2, :cond_4

    .line 1907
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForGroups:I

    const-string v0, "NotificationsForGroups"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableGroup2"

    .line 1908
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 1909
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 1910
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForStories:I

    const-string v0, "NotificationsForStories"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableAllStories"

    .line 1911
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    const p1, 0x7fffffff

    goto :goto_1

    .line 1913
    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForChannels:I

    const-string v0, "NotificationsForChannels"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableChannel2"

    .line 1914
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    .line 1916
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p2

    if-ge p1, p2, :cond_7

    move v7, v1

    goto :goto_3

    :cond_7
    move v7, v3

    :goto_3
    if-eqz v7, :cond_8

    .line 1920
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string p2, "NotificationsOn"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    move v8, v3

    goto :goto_5

    :cond_8
    const v0, 0x1e13380

    sub-int v0, p1, v0

    if-lt v0, p2, :cond_9

    .line 1923
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string p2, "NotificationsOff"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1926
    :cond_9
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsOffUntil:I

    new-array v0, v1, [Ljava/lang/Object;

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "NotificationsOffUntil"

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    goto :goto_4

    :goto_5
    const/4 v9, 0x0

    .line 1929
    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZ)V

    goto/16 :goto_7

    .line 1891
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1892
    iget-object v1, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    iget-object v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text2:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_7

    .line 1875
    :pswitch_3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1876
    iget-object v2, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    if-nez v2, :cond_a

    const/16 v0, 0xc

    .line 1877
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1878
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1880
    :cond_a
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1881
    iget-object v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    if-nez p2, :cond_b

    .line 1884
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1886
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1870
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->color:I

    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto :goto_7

    .line 1865
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell;

    .line 1866
    iget-object v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->exception:Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;

    invoke-virtual {p1, v0, v4, p2}, Lorg/telegram/ui/Cells/UserCell;->setException(Lorg/telegram/ui/NotificationsSettingsActivity$NotificationException;Ljava/lang/CharSequence;Z)V

    goto :goto_7

    .line 1860
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->checked:Z

    invoke-virtual {p1, v1, v0, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_7

    .line 1855
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1856
    iget-object p2, v0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    packed-switch p2, :pswitch_data_0

    .line 1839
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1840
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1834
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 1835
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1830
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1831
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1827
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1823
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/TextColorCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .line 1824
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1819
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Cells/UserCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1, v1}, Lorg/telegram/ui/Cells/UserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 1820
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1815
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1816
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1811
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1812
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1843
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 1948
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 1952
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    goto :goto_1

    .line 1955
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v4}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/NotificationsController;->isGlobalNotificationsEnabled(I)Z

    move-result v0

    .line 1957
    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_5

    .line 1959
    iget-object v6, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1960
    iget-object v6, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;

    goto :goto_2

    :cond_5
    move-object v4, v5

    :goto_2
    const/4 v6, 0x5

    if-eqz v4, :cond_8

    .line 1963
    iget v4, v4, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ItemInner;->id:I

    if-ne v4, v6, :cond_8

    .line 1964
    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsCustomSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsCustomSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsCustomSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsCustomSettingsActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    move v0, v2

    .line 1968
    :cond_8
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eqz v2, :cond_c

    if-eq v2, v3, :cond_b

    if-eq v2, v1, :cond_a

    if-eq v2, v6, :cond_9

    goto :goto_3

    .line 1985
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1986
    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1980
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 1981
    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/TextColorCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1975
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1976
    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    goto :goto_3

    .line 1970
    :cond_c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1971
    invoke-virtual {p1, v0, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setEnabled(ZLjava/util/ArrayList;)V

    :goto_3
    return-void
.end method
