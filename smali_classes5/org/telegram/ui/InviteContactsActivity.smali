.class public Lorg/telegram/ui/InviteContactsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "InviteContactsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;,
        Lorg/telegram/ui/InviteContactsActivity$SpansContainer;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

.field private allSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private containerHeight:I

.field private counterTextView:Landroid/widget/TextView;

.field private counterView:Landroid/widget/FrameLayout;

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private decoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fieldY:I

.field private ignoreScrollEvent:Z

.field private infoTextView:Landroid/widget/TextView;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private phoneBookContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private scrollView:Landroid/widget/ScrollView;

.field private searchWas:Z

.field private searching:Z

.field private selectedContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$Ru5puXqrUe1r3wwQuyLjB6t5o-o(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/InviteContactsActivity;->lambda$fetchContacts$2(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$S7gIRy0jGvJwonEQQmZW-8BE2_M(Lorg/telegram/ui/InviteContactsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/InviteContactsActivity;->lambda$createView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTjHZUjQISK3Zx3tJ1nQ4gtmJ2Y(Lorg/telegram/ui/InviteContactsActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity;->lambda$createView$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rqiQl5w_88ejYhQ1YmXgZeZ0YZM(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->lambda$getThemeDescriptions$3()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 275
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/InviteContactsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/InviteContactsActivity;->fieldY:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/InviteContactsActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lorg/telegram/ui/InviteContactsActivity;->fieldY:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/InviteContactsActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/telegram/ui/InviteContactsActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$SpansContainer;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->updateHint()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->checkVisibleRows()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/InviteContactsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/InviteContactsActivity;->containerHeight:I

    return p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/InviteContactsActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/InviteContactsActivity;->searching:Z

    return p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/InviteContactsActivity;I)I
    .locals 0

    .line 71
    iput p1, p0, Lorg/telegram/ui/InviteContactsActivity;->containerHeight:I

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/ui/InviteContactsActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/InviteContactsActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2200(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/InviteContactsActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->closeSearch()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->phoneBookContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->decoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/InviteContactsActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/InviteContactsActivity;->ignoreScrollEvent:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/InviteContactsActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/InviteContactsActivity;->ignoreScrollEvent:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/HashMap;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    return-object p0
.end method

.method private checkVisibleRows()V
    .locals 5

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 665
    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 666
    instance-of v3, v2, Lorg/telegram/ui/Cells/InviteUserCell;

    if-eqz v3, :cond_0

    .line 667
    check-cast v2, Lorg/telegram/ui/Cells/InviteUserCell;

    .line 668
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/InviteUserCell;->getContact()Lorg/telegram/messenger/ContactsController$Contact;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 670
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/InviteUserCell;->setChecked(ZZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private closeSearch()V
    .locals 3

    const/4 v0, 0x0

    .line 688
    iput-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity;->searching:Z

    .line 689
    iput-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity;->searchWas:Z

    .line 690
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->setSearching(Z)V

    .line 691
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 693
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v1, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v2, "NoContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private fetchContacts()V
    .locals 2

    .line 698
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->phoneBookContacts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->phoneBookContacts:Ljava/util/ArrayList;

    .line 699
    sget-object v1, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 710
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;I)V
    .locals 3

    if-nez p2, :cond_0

    .line 520
    iget-boolean p2, p0, Lorg/telegram/ui/InviteContactsActivity;->searching:Z

    if-nez p2, :cond_0

    .line 522
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    .line 523
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.extra.TEXT"

    .line 525
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x1f4

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 532
    :cond_0
    instance-of p2, p1, Lorg/telegram/ui/Cells/InviteUserCell;

    if-nez p2, :cond_1

    return-void

    .line 535
    :cond_1
    check-cast p1, Lorg/telegram/ui/Cells/InviteUserCell;

    .line 536
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/InviteUserCell;->getContact()Lorg/telegram/messenger/ContactsController$Contact;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    .line 541
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    iget-object v1, p2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    iget-object p2, p2, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 543
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    goto :goto_1

    .line 545
    :cond_3
    new-instance v1, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v2, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ContactsController$Contact;)V

    .line 546
    iget-object p2, p0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 547
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->updateHint()V

    .line 550
    iget-boolean p2, p0, Lorg/telegram/ui/InviteContactsActivity;->searching:Z

    if-nez p2, :cond_5

    iget-boolean p2, p0, Lorg/telegram/ui/InviteContactsActivity;->searchWas:Z

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    xor-int/2addr v0, p2

    .line 553
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/InviteUserCell;->setChecked(ZZ)V

    goto :goto_3

    .line 551
    :cond_5
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 555
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 556
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/view/View;)V
    .locals 6

    .line 584
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 586
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 587
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/GroupCreateSpan;->getContact()Lorg/telegram/messenger/ContactsController$Contact;

    move-result-object v3

    .line 588
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x3b

    .line 589
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v4, v3, Lorg/telegram/messenger/ContactsController$Contact;->phones:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    .line 592
    iget-object v4, p0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 593
    iget v2, v3, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 596
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "sms_body"

    .line 597
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ContactsController;->getInviteText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 600
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 602
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private static synthetic lambda$fetchContacts$2(Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/messenger/ContactsController$Contact;)I
    .locals 0

    .line 700
    iget p0, p0, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    iget p1, p1, Lorg/telegram/messenger/ContactsController$Contact;->imported:I

    if-le p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$getThemeDescriptions$3()V
    .locals 5

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 902
    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 903
    instance-of v4, v3, Lorg/telegram/ui/Cells/InviteUserCell;

    if-eqz v4, :cond_0

    .line 904
    check-cast v3, Lorg/telegram/ui/Cells/InviteUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/InviteUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateHint()V
    .locals 4

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 681
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 315
    iput-boolean v2, v0, Lorg/telegram/ui/InviteContactsActivity;->searching:Z

    .line 316
    iput-boolean v2, v0, Lorg/telegram/ui/InviteContactsActivity;->searchWas:Z

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 318
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->selectedContacts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    .line 319
    iput-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 321
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 322
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 323
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/messenger/R$string;->InviteFriends:I

    const-string v7, "InviteFriends"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$1;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 333
    new-instance v4, Lorg/telegram/ui/InviteContactsActivity$2;

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/InviteContactsActivity$2;-><init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 379
    check-cast v4, Landroid/view/ViewGroup;

    .line 381
    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$3;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/InviteContactsActivity$3;-><init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    .line 394
    invoke-virtual {v6, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 395
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    const-string v7, "windowBackgroundWhite"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 396
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 398
    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;-><init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    .line 399
    iget-object v7, v0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$4;

    invoke-direct {v6, v0, v1}, Lorg/telegram/ui/InviteContactsActivity$4;-><init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x41900000    # 18.0f

    .line 417
    invoke-virtual {v6, v5, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 418
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "groupcreate_hintText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 419
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "windowBackgroundWhiteBlackText"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextColor(I)V

    .line 420
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v7, "groupcreate_cursor"

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 421
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v7, 0x3fc00000    # 1.5f

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 422
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v7, 0xa00b0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 423
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 424
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 426
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setHorizontalScrollBarEnabled(Z)V

    .line 427
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 428
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 429
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v6, 0x10000006

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 430
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_0

    :cond_0
    const/4 v6, 0x3

    :goto_0
    const/16 v7, 0x10

    or-int/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 431
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v6, Lorg/telegram/messenger/R$string;->SearchFriends:I

    const-string v10, "SearchFriends"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$5;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$5;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 456
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$6;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$6;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 473
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$7;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$7;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 500
    new-instance v3, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 501
    iget v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_1

    .line 504
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 506
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v6, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v10, "NoContacts"

    invoke-static {v10, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 507
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 509
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1, v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 511
    new-instance v6, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 512
    iget-object v10, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 513
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v10, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;-><init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V

    iput-object v10, v0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 514
    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 515
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 516
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    :goto_2
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 517
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-direct {v6}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->decoration:Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 518
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 519
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 559
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v6, Lorg/telegram/ui/InviteContactsActivity$8;

    invoke-direct {v6, v0}, Lorg/telegram/ui/InviteContactsActivity$8;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 568
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const-string v6, "contacts_inviteBackground"

    .line 569
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 570
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const-string v10, "contacts_inviteText"

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 572
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->InviteFriendsHelp:I

    const-string v13, "InviteFriendsHelp"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v3, v5, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 574
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const-string v12, "fonts/rmedium.ttf"

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 575
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    const/16 v14, 0x9

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v3, v13, v15, v7, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 576
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    const/16 v7, 0x53

    invoke-static {v8, v9, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    .line 579
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 580
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 581
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    const/16 v13, 0x30

    invoke-static {v8, v13, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 582
    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    new-instance v4, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 605
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 606
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    invoke-static {v9, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    .line 610
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 611
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 612
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 613
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 614
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/16 v6, 0xa

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v8}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 616
    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v4, v8, v2, v6, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 617
    iget-object v2, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, 0x14

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xa

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    .line 620
    invoke-virtual {v2, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 621
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 623
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 624
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->InviteToTelegram:I

    const-string v4, "InviteToTelegram"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 626
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-static {v9, v9, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/InviteContactsActivity;->updateHint()V

    .line 629
    iget-object v1, v0, Lorg/telegram/ui/InviteContactsActivity;->adapter:Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    .line 631
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 644
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    if-ne p1, p2, :cond_0

    .line 645
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->fetchContacts()V

    :cond_0
    return-void
.end method

.method public getContainerHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 659
    iget v0, p0, Lorg/telegram/ui/InviteContactsActivity;->containerHeight:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 896
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 898
    new-instance v10, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/InviteContactsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/InviteContactsActivity;)V

    .line 910
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "actionBarDefault"

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v27, "actionBarDefault"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 915
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v22, 0x0

    const-string v26, "actionBarDefaultTitle"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v18, "actionBarDefaultSelector"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->scrollView:Landroid/widget/ScrollView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v26, "windowBackgroundWhite"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v18, "listSelectorSDK21"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v26, "fastScrollActive"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v18, "fastScrollInactive"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    const-string v26, "fastScrollText"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    const/16 v19, 0x0

    aput-object v3, v14, v19

    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    const-string v18, "divider"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v26, 0x0

    const-string v27, "emptyListPlaceholder"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "progressCircle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v27, "windowBackgroundWhiteBlackText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const-string v18, "groupcreate_hintText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    const-string v27, "groupcreate_cursor"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v14, v9, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v3, v14, v19

    const-string v18, "graySection"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v4, v19

    const-string v5, "drawable"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x0

    const/16 v27, 0x0

    const-string v28, "groupcreate_sectionShadow"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateSectionCell;

    aput-object v5, v4, v19

    const-string v11, "textView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v37, "groupcreate_sectionText"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v5, v4, v19

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "groupcreate_sectionText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 940
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v5, v4, v19

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const-string v37, "windowBackgroundWhiteBlackText"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v5, v4, v19

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "checkbox"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v6, v4, v19

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const-string v37, "checkboxCheck"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v22, v4, v5

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v5, v4, v19

    const-string v5, "statusTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    const-string v28, "windowBackgroundWhiteBlueText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v31, v4, v6

    new-array v4, v9, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v6, v4, v19

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v33

    const-string v37, "windowBackgroundWhiteGrayText"

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v9, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteUserCell;

    aput-object v5, v4, v19

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v27, "avatar_text"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v13, "avatar_backgroundRed"

    move-object v2, v12

    move-object v8, v10

    const/4 v14, 0x1

    move-object v9, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundOrange"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundViolet"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundGreen"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundCyan"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundBlue"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const-string v9, "avatar_backgroundPink"

    move-object v2, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/InviteTextCell;

    aput-object v5, v4, v19

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-string v28, "windowBackgroundWhiteBlackText"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/InviteTextCell;

    aput-object v3, v8, v19

    const-string v3, "imageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "windowBackgroundWhiteGrayIcon"

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 957
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v4, v19

    const/16 v24, 0x0

    const-string v27, "groupcreate_spanBackground"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v3, v8, v19

    const/4 v9, 0x0

    const-string v12, "groupcreate_spanText"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 959
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    new-array v4, v14, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v4, v19

    const-string v27, "groupcreate_spanDelete"

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    new-array v8, v14, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v3, v8, v19

    const-string v12, "avatar_backgroundBlue"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "contacts_inviteText"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->infoTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v10, "contacts_inviteBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->counterView:Landroid/widget/FrameLayout;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v18, "contacts_inviteBackground"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v10, "contacts_inviteBackground"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/InviteContactsActivity;->textView:Landroid/widget/TextView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const-string v18, "contacts_inviteText"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/InviteContactsActivity;->counterTextView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const-string v10, "contacts_inviteText"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 298
    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 299
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/InviteContactsActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 302
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->updateHint()V

    .line 303
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->checkVisibleRows()V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 308
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 309
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    :goto_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 280
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 281
    invoke-direct {p0}, Lorg/telegram/ui/InviteContactsActivity;->fetchContacts()V

    .line 282
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    if-nez v0, :cond_0

    .line 283
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 284
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->contactsReimported:Z

    .line 285
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 287
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 292
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 293
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsImported:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 636
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 638
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public setContainerHeight(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 651
    iput p1, p0, Lorg/telegram/ui/InviteContactsActivity;->containerHeight:I

    .line 652
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity;->spansContainer:Lorg/telegram/ui/InviteContactsActivity$SpansContainer;

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method
