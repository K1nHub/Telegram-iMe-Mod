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

    .line 1636
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1637
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1649
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1799
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 1801
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 1803
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 1805
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 1807
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3200(Lorg/telegram/ui/PasscodeActivity;)I

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

    .line 1642
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    .line 1644
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

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
    .locals 10

    .line 1682
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    if-eq v0, v2, :cond_7

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 1772
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;

    .line 1773
    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;->access$2800(Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->utyan_passcode:I

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1774
    invoke-static {p1}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;->access$2800(Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    goto/16 :goto_4

    .line 1764
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    const/16 v0, 0x2e

    .line 1765
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    .line 1766
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2700(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1767
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureHeader:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1778
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1779
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 1780
    sget p2, Lorg/telegram/messenger/R$string;->PasscodeScreenHint:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 1781
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1782
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1783
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const/4 v1, 0x5

    const-string v2, "windowBackgroundGrayShadow"

    if-ne p2, v0, :cond_5

    .line 1784
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1785
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1786
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_4

    move v3, v1

    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1787
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$3100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1788
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1790
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->getTextView()Landroid/widget/TextView;

    move-result-object p1

    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    move v3, v1

    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 1699
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1700
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    const-string v4, "windowBackgroundWhiteBlackText"

    if-ne p2, v0, :cond_c

    .line 1701
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-ne p2, v1, :cond_8

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

    .line 1702
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-eq p2, v1, :cond_b

    sget-object p2, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_a

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    const-string p2, "windowBackgroundWhiteGrayText7"

    .line 1703
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1704
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_4

    .line 1706
    :cond_b
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1707
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_4

    .line 1709
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2000(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1712
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    const-string v0, "Hours"

    const-string v1, "Days"

    const-string v5, "Minutes"

    const-string v6, "AutoLockDisabled"

    const-string v7, "AutoLockInTime"

    if-eqz p2, :cond_12

    .line 1713
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p2

    sget-object v8, Lcom/iMe/fork/enums/AutoLockTime;->NONE:Lcom/iMe/fork/enums/AutoLockTime;

    if-ne p2, v8, :cond_d

    .line 1714
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockDisabled:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v6, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 1715
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p2

    sget-object v6, Lcom/iMe/fork/enums/AutoLockTime;->MINUTE:Lcom/iMe/fork/enums/AutoLockTime;

    if-eq p2, v6, :cond_11

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p2

    sget-object v6, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_MINUTES:Lcom/iMe/fork/enums/AutoLockTime;

    if-ne p2, v6, :cond_e

    goto :goto_2

    .line 1724
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p2

    sget-object v5, Lcom/iMe/fork/enums/AutoLockTime;->HOUR:Lcom/iMe/fork/enums/AutoLockTime;

    if-eq p2, v5, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object p2

    sget-object v5, Lcom/iMe/fork/enums/AutoLockTime;->FIVE_HOURS:Lcom/iMe/fork/enums/AutoLockTime;

    if-ne p2, v5, :cond_f

    goto :goto_1

    .line 1734
    :cond_f
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    .line 1739
    invoke-static {v6}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/enums/AutoLockTime;->getTimeInSeconds()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 1737
    invoke-static {v1, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1734
    invoke-static {v7, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 1725
    :cond_10
    :goto_1
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    .line 1730
    invoke-static {v6}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/enums/AutoLockTime;->getTimeInSeconds()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 1728
    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1725
    invoke-static {v7, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 1716
    :cond_11
    :goto_2
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    .line 1721
    invoke-static {v6}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getAutoLockIn()Lcom/iMe/fork/enums/AutoLockTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/fork/enums/AutoLockTime;->getTimeInSeconds()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v1, v8

    new-array v6, v3, [Ljava/lang/Object;

    .line 1719
    invoke-static {v5, v1, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1716
    invoke-static {v7, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1744
    :cond_12
    sget p2, Lorg/telegram/messenger/SharedConfig;->autoLockIn:I

    if-nez p2, :cond_13

    .line 1745
    sget p2, Lorg/telegram/messenger/R$string;->AutoLockDisabled:I

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v6, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_13
    const/16 v6, 0xe10

    if-ge p2, v6, :cond_14

    .line 1747
    sget v0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v1, v2, [Ljava/lang/Object;

    div-int/lit8 p2, p2, 0x3c

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v5, p2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {v7, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_14
    const v5, 0x15180

    const/high16 v6, 0x42700000    # 60.0f

    if-ge p2, v5, :cond_15

    .line 1749
    sget v1, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v5, v2, [Ljava/lang/Object;

    int-to-float p2, p2

    div-float/2addr p2, v6

    div-float/2addr p2, v6

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p2, v8

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, p2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {v7, v1, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1751
    :cond_15
    sget v0, Lorg/telegram/messenger/R$string;->AutoLockInTime:I

    new-array v5, v2, [Ljava/lang/Object;

    int-to-float p2, p2

    div-float/2addr p2, v6

    div-float/2addr p2, v6

    const/high16 v6, 0x41c00000    # 24.0f

    div-float/2addr p2, v6

    float-to-double v8, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p2, v8

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, p2, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-static {v7, v0, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1753
    :goto_3
    sget v0, Lorg/telegram/messenger/R$string;->AutoLock:I

    const-string v1, "AutoLock"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1754
    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1755
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto/16 :goto_4

    .line 1756
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2300(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1757
    sget p2, Lorg/telegram/messenger/R$string;->DisablePasscode:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    const-string p2, "dialogTextRed"

    .line 1758
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1759
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_4

    .line 1684
    :cond_17
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1685
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1687
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    const-string v0, "UnlockFingerprint"

    if-eqz p2, :cond_18

    .line 1688
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2600(Lorg/telegram/ui/PasscodeActivity;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getUseFingerprint()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1689
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {p2}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result p2

    if-ne p2, v1, :cond_19

    .line 1690
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getWalletFingerprintController()Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->isWalletFingerprintUnlockEnabled()Z

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1692
    :cond_19
    sget p2, Lorg/telegram/messenger/R$string;->UnlockFingerprint:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useFingerprint:Z

    invoke-virtual {p1, p2, v0, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_4

    .line 1693
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$2100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1694
    sget p2, Lorg/telegram/messenger/R$string;->ScreenCaptureShowContent:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->allowScreenCapture:Z

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    :cond_1b
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p1, "windowBackgroundWhite"

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 1674
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1670
    :cond_0
    new-instance p1, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;

    iget-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/PasscodeActivity$RLottieImageHolderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/PasscodeActivity$1;)V

    goto :goto_1

    .line 1666
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1667
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1662
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1663
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1658
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1659
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    .line 1677
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
