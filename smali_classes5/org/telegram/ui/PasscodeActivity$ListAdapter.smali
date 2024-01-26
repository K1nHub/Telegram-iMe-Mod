.class Lorg/telegram/ui/PasscodeActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PasscodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V
    .locals 0

    .line 1564
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1565
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1577
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1695
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1697
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1699
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1701
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1703
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1570
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1571
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    .line 1572
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1610
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    if-eq v0, v2, :cond_7

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto/16 :goto_3

    .line 1668
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;

    .line 1669
    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;->access$2900(Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->utyan_passcode:I

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1670
    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;->access$2900(Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_3

    .line 1660
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v0, 0x2e

    .line 1661
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1663
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1674
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1675
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1676
    sget p2, Lorg/telegram/messenger/R$string;->PasscodeScreenHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1677
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1678
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1679
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne p2, v0, :cond_5

    .line 1680
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1682
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    move v3, v1

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1683
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1684
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1685
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    move v3, v1

    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 1627
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1628
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1629
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-ne p2, v2, :cond_8

    sget p2, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_change:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->ChangePasscode:I

    const-string v0, "ChangePasscode"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1630
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-eq p2, v2, :cond_b

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_a

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_b

    .line 1631
    :cond_a
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText7:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1632
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_3

    .line 1634
    :cond_b
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1635
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_3

    .line 1637
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 1639
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getTimeout()I

    move-result p2

    goto :goto_1

    :cond_d
    sget p2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    :goto_1
    if-nez p2, :cond_e

    .line 1641
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockDisabled:I

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AutoLockDisabled"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_e
    const/16 v0, 0xe10

    const-string v3, "AutoLockInTime"

    if-ge p2, v0, :cond_f

    .line 1643
    sget v0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v4, v2, [Ljava/lang/Object;

    div-int/lit8 p2, p2, 0x3c

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Minutes"

    invoke-static {v6, p2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v3, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_f
    const v0, 0x15180

    const/high16 v4, 0x42700000    # 60.0f

    if-ge p2, v0, :cond_10

    .line 1645
    sget v0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v5, v2, [Ljava/lang/Object;

    int-to-float p2, p2

    div-float/2addr p2, v4

    div-float/2addr p2, v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p2, v6

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Hours"

    invoke-static {v6, p2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1647
    :cond_10
    sget v0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v5, v2, [Ljava/lang/Object;

    int-to-float p2, p2

    div-float/2addr p2, v4

    div-float/2addr p2, v4

    const/high16 v4, 0x41c00000    # 24.0f

    div-float/2addr p2, v4

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int p2, v6

    new-array v4, v1, [Ljava/lang/Object;

    const-string v6, "Days"

    invoke-static {v6, p2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v3, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1649
    :goto_2
    sget v0, Lorg/telegram/messenger/R$string;->AutoLock:I

    const-string v1, "AutoLock"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1650
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1651
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_3

    .line 1652
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1653
    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1654
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1655
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_3

    .line 1612
    :cond_12
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 1615
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    const-string v0, "UnlockFingerprint"

    if-eqz p2, :cond_13

    .line 1616
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_3

    .line 1617
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-ne p2, v2, :cond_14

    .line 1618
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_3

    .line 1620
    :cond_14
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto :goto_3

    .line 1621
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1622
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureShowContent:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    :cond_16
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 1602
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1598
    :cond_0
    new-instance p1, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/PasscodeActivity$1;)V

    goto :goto_0

    .line 1594
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1595
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1590
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1591
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1586
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1587
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1605
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
