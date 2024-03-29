.class public Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "ChatAttachAlertContactsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAdapter"
.end annotation


# instance fields
.field private currentAccount:I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;


# direct methods
.method public static synthetic $r8$lambda$EmgTq0gUJgm8tAI_nAHk7_kdeu0(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->lambda$onBindViewHolder$0(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rlROxKO4aLRtWk4yjEZLkNXDlsc(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->lambda$onBindViewHolder$1(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;Landroid/content/Context;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 601
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    .line 605
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Lorg/telegram/messenger/ContactsController$Contact;)Ljava/lang/CharSequence;
    .locals 2

    .line 695
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    iget-object p0, p0, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic lambda$onBindViewHolder$1(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/CharSequence;
    .locals 3

    .line 702
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 643
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getSectionCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 647
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    .line 648
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 649
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 650
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 613
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    .line 614
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 615
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 616
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 617
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 618
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 711
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getSectionCount()I

    move-result v0

    sub-int/2addr v0, p2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 724
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 725
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 1

    .line 637
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 638
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 626
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getSectionCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 630
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsDict:Ljava/util/HashMap;

    .line 631
    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/ContactsController;->phoneBookSectionsArray:Ljava/util/ArrayList;

    .line 632
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 730
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;)V

    return-void
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 684
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_4

    .line 685
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    .line 686
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getSectionCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->getCountForSection(I)I

    move-result p1

    sub-int/2addr p1, v2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 689
    :cond_1
    :goto_0
    instance-of p1, v0, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 690
    check-cast v0, Lorg/telegram/messenger/ContactsController$Contact;

    .line 691
    iget-object p1, v0, Lorg/telegram/messenger/ContactsController$Contact;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 694
    :cond_2
    iget p1, v0, Lorg/telegram/messenger/ContactsController$Contact;->contact_id:I

    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setCurrentId(I)V

    .line 695
    iget-object p1, v0, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/ContactsController$Contact;)V

    invoke-virtual {p3, p2, p1, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V

    move-object p1, p2

    goto :goto_1

    .line 698
    :cond_3
    move-object p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    :goto_1
    if-eqz p1, :cond_4

    .line 702
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {p3, p1, p2, v0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;->setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell$CharSequenceCallback;Z)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 675
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 669
    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 670
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 665
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$ShareAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlertContactsLayout$UserCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 679
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
