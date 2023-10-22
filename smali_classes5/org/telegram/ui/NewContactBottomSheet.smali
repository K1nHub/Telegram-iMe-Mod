.class public Lorg/telegram/ui/NewContactBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "NewContactBottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field classGuid:I

.field private codeDividerView:Landroid/view/View;

.field private codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;>;"
        }
    .end annotation
.end field

.field private contentLayout:Landroid/widget/LinearLayout;

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/CountrySelectActivity$Country;",
            ">;"
        }
    .end annotation
.end field

.field private countryCodeForHint:Ljava/lang/String;

.field private countryFlag:Landroid/widget/TextView;

.field private countryState:I

.field private currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

.field private doneButton:Landroid/widget/TextView;

.field private doneButtonContainer:Landroid/widget/FrameLayout;

.field private donePressed:Z

.field private editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

.field private firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private initialFirstName:Ljava/lang/String;

.field private initialLastName:Ljava/lang/String;

.field private initialPhoneNumber:Ljava/lang/String;

.field private initialPhoneNumberWithCountryCode:Z

.field private lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

.field private plusTextView:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private wasCountryHintIndex:I


# direct methods
.method public static synthetic $r8$lambda$3rf3aYzI0rpdzQzHfup3B7zgUKA(Lorg/telegram/ui/NewContactBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$show$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$AsNLUEPywGQ020vruxLGyPCJGKE(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AzfQAPqKHzdwQcsqPrSr8Zt_rW8(Lorg/telegram/ui/NewContactBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$dismiss$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$BWTDLEN4ZrNfzccDIeTHXNrbcAs(Lorg/telegram/ui/NewContactBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C6gk8ZNapEVyrEUY7RxQpTNDbEQ(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$6(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JbHS6PjkTznxv6eD3rY-EIkWhko(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RbndbcpKIXwWRHRfK9EullI2_zk(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$doOnDone$8(Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wqp7bn4sn4QhbFKTwNRB3JuprcY(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZrNMhIdm3jaqlMekeHWfHVPFjHE(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$doOnDone$9(Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_IMkHDyCMxqc3M0FJRHS_0Ssolw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$leWbeGJ288ykBbMmoST-icoss48(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$o4di165KRIt4iGcs4JLe0zWeu-s(Lorg/telegram/ui/NewContactBottomSheet;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/NewContactBottomSheet;->lambda$createView$4(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 76
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    .line 77
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    .line 78
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    .line 108
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->waitingKeyboard:Z

    .line 109
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->smoothKeyboardAnimationEnabled:Z

    .line 110
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->classGuid:I

    .line 111
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 112
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 113
    sget p1, Lorg/telegram/messenger/R$string;->NewContactTitle:I

    const-string p2, "NewContactTitle"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitle(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/OutlineTextContainerView;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/NewContactBottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnPhoneChange:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/NewContactBottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/NewContactBottomSheet;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$202(Lorg/telegram/ui/NewContactBottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/NewContactBottomSheet;)Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/NewContactBottomSheet;Ljava/lang/CharSequence;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$502(Lorg/telegram/ui/NewContactBottomSheet;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryState:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/NewContactBottomSheet;)Ljava/util/HashMap;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/NewContactBottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/NewContactBottomSheet;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$902(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/ui/CountrySelectActivity$Country;)Lorg/telegram/ui/CountrySelectActivity$Country;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->currentCountry:Lorg/telegram/ui/CountrySelectActivity$Country;

    return-object p1
.end method

.method private doOnDone()V
    .locals 4

    .line 637
    iget-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const-wide/16 v1, 0xc8

    const-string v3, "vibrator"

    if-nez v0, :cond_2

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 645
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 648
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 651
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 653
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    .line 656
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 657
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_5

    .line 659
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 661
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    return-void

    :cond_6
    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    .line 665
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 666
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;-><init>()V

    .line 667
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;-><init>()V

    .line 668
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    .line 669
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    .line 671
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 694
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 712
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 714
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v4, "countries.txt"

    invoke-virtual {p0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 716
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v3, ";"

    .line 717
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 718
    aget-object v3, p0, v1

    const/4 v4, 0x2

    aget-object p0, p0, v4

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 720
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 722
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    const-string p0, "+"

    .line 724
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p2

    :cond_1
    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    .line 726
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_3

    .line 729
    :cond_2
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 p3, 0x4

    :goto_2
    const/4 v2, 0x1

    if-lt p3, v2, :cond_4

    .line 731
    invoke-virtual {p1, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_4
    return-object p2

    .line 727
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private invalidateCountryHint()V
    .locals 12

    .line 799
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryCodeForHint:Ljava/lang/String;

    .line 800
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 802
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 804
    iget-object v4, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 805
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const-string v8, "0"

    const-string v9, "X"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    move v7, v10

    .line 806
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 807
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 808
    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_2
    if-ne v7, v6, :cond_6

    move v1, v10

    .line 815
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 816
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 817
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    move v7, v1

    :cond_5
    if-ne v7, v6, :cond_6

    goto :goto_5

    :cond_6
    move v10, v7

    .line 827
    :goto_5
    iget v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    if-eq v1, v10, :cond_9

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 829
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 830
    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    if-eqz v0, :cond_7

    const/16 v4, 0x58

    const/16 v5, 0x30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    :cond_7
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 831
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 832
    iput v10, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    goto :goto_6

    .line 834
    :cond_8
    iget v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    if-eq v0, v6, :cond_9

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 836
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(II)V

    .line 838
    iput v6, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    :cond_9
    :goto_6
    return-void
.end method

.method private static synthetic lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 143
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$2(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$3(Landroid/view/View;)V
    .locals 1

    .line 200
    new-instance p1, Lorg/telegram/ui/CountrySelectActivity;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;-><init>(Z)V

    .line 201
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$2;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CountrySelectActivity;->setCountrySelectActivityDelegate(Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;)[Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 364
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 365
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$createView$5(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    .line 517
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$createView$6(Lorg/telegram/ui/CountrySelectActivity$Country;)Ljava/lang/String;
    .locals 0

    .line 552
    iget-object p0, p0, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;)V
    .locals 0

    .line 629
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->doOnDone()V

    return-void
.end method

.method private synthetic lambda$dismiss$11()V
    .locals 1

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$doOnDone$8(Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V
    .locals 2

    const/4 v0, 0x0

    .line 675
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->donePressed:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 677
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 678
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 679
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {p1, p2, p3, v1, v1}, Lorg/telegram/messenger/MessagesController;->openChatOrProfileWith(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 680
    invoke-virtual {p0}, Lorg/telegram/ui/NewContactBottomSheet;->dismiss()V

    goto :goto_0

    .line 682
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 685
    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 686
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->first_name:Ljava/lang/String;

    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->last_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;->phone:Ljava/lang/String;

    invoke-static {p1, p3, p4, p2}, Lorg/telegram/ui/Components/AlertsCreator;->createContactInviteDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/NewContactBottomSheet;->showEditDoneProgress(ZZ)V

    .line 690
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method private synthetic lambda$doOnDone$9(Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 673
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    .line 674
    new-instance p3, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda9;

    move-object v0, p3

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;Lorg/telegram/tgnet/TLRPC$TL_inputPhoneContact;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_contacts_importContacts;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$show$10()V
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private setCountryButtonText(Ljava/lang/CharSequence;)V
    .locals 6

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x96

    if-eqz v0, :cond_0

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/16 v3, 0x1e

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 790
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 791
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 3

    .line 773
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 774
    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getLanguageFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 776
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 778
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryButtonText(Ljava/lang/CharSequence;)V

    .line 779
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countryCodeForHint:Ljava/lang/String;

    const/4 p1, -0x1

    .line 780
    iput p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->wasCountryHintIndex:I

    .line 781
    invoke-direct {p0}, Lorg/telegram/ui/NewContactBottomSheet;->invalidateCountryHint()V

    return-void
.end method

.method private showEditDoneProgress(ZZ)V
    .locals 3

    .line 707
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 708
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v0, p1, v2, p2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 117
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v4, 0x4

    .line 118
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 120
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/16 v6, 0x14

    .line 123
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 124
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 125
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/16 v10, 0x33

    invoke-static {v7, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v5, v0, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    sget-object v10, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v10, Lorg/telegram/ui/Components/OutlineEditText;

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/OutlineEditText;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    .line 133
    invoke-virtual {v10}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    const v11, 0xc000

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 134
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 135
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v13, Lorg/telegram/messenger/R$string;->FirstName:I

    const-string v14, "FirstName"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/telegram/ui/Components/OutlineEditText;->setHint(Ljava/lang/String;)V

    .line 136
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v10, :cond_0

    .line 137
    iget-object v14, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v14, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 138
    iput-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    .line 140
    :cond_0
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    const/4 v14, -0x1

    const/16 v15, 0x3a

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v0, v10, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    new-instance v14, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v14, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 150
    new-instance v10, Lorg/telegram/ui/Components/OutlineEditText;

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/OutlineEditText;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    .line 151
    invoke-virtual {v10, v13}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 153
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 154
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v11, Lorg/telegram/messenger/R$string;->LastName:I

    const-string v12, "LastName"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/OutlineEditText;->setHint(Ljava/lang/String;)V

    .line 155
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 156
    iget-object v11, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 157
    iput-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    .line 159
    :cond_1
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    const/4 v14, -0x1

    const/16 v15, 0x3a

    const/16 v16, 0x33

    const/16 v17, 0x0

    const/16 v18, 0x44

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    new-instance v10, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v10, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    new-instance v10, Lorg/telegram/ui/Components/OutlineTextContainerView;

    invoke-direct {v10, v2}, Lorg/telegram/ui/Components/OutlineTextContainerView;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/4 v15, -0x2

    const/16 v16, 0x10

    const/16 v17, 0x4

    const/16 v18, 0x8

    const/16 v19, 0x10

    const/16 v20, 0x8

    .line 173
    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    sget v11, Lorg/telegram/messenger/R$string;->PhoneNumber:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lorg/telegram/ui/Components/OutlineTextContainerView;->setText(Ljava/lang/String;)V

    .line 175
    iget-object v10, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v12, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneOutlineView:Lorg/telegram/ui/Components/OutlineTextContainerView;

    const/16 v15, 0x3a

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    const/16 v19, 0x8

    invoke-static/range {v14 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    new-instance v10, Landroid/widget/FrameLayout;

    invoke-direct {v10, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 179
    new-instance v12, Lorg/telegram/ui/NewContactBottomSheet$1;

    invoke-direct {v12, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$1;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v12, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/high16 v14, 0x41800000    # 16.0f

    .line 196
    invoke-virtual {v12, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    iget-object v12, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 198
    iget-object v12, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/16 v15, 0x11

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    new-instance v12, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v12, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v12, 0x6

    .line 212
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v12, v9, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->countryFlag:Landroid/widget/TextView;

    const/16 v12, 0x10

    invoke-static {v7, v8, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v10, v4, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x2a

    .line 214
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    const-string v10, "+"

    .line 217
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 219
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 220
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$3;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$3;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 229
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v4, v12}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 230
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 231
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 232
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/high16 v15, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 233
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v4, v7, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 234
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3, v14}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 235
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 236
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v7, 0x13

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setGravity(I)V

    .line 237
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v7, 0x10000005

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 238
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v20, Lorg/telegram/messenger/R$string;->LoginAccessibilityCountryCode:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v21, 0x37

    const/16 v22, 0x24

    const/16 v23, -0x9

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v13, Lorg/telegram/ui/NewContactBottomSheet$4;

    invoke-direct {v13, v1}, Lorg/telegram/ui/NewContactBottomSheet$4;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v4, v13}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 362
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v13, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v13, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v4, v13}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 370
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    const/16 v21, 0x0

    const/16 v22, -0x1

    const/16 v23, 0x4

    const/16 v24, 0x8

    const/16 v25, 0xc

    const/16 v26, 0x8

    .line 371
    invoke-static/range {v21 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    const/high16 v13, 0x3f000000    # 0.5f

    .line 372
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/4 v7, 0x2

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 373
    iget-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    invoke-virtual {v0, v13, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$5;

    invoke-direct {v4, v1, v2}, Lorg/telegram/ui/NewContactBottomSheet$5;-><init>(Lorg/telegram/ui/NewContactBottomSheet;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    .line 393
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextColor(I)V

    .line 394
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v12}, Landroid/widget/EditText;->setInputType(I)V

    .line 395
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 396
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    .line 397
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v15}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 398
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3, v14}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setTextSize(IF)V

    .line 399
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 400
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v8, 0x13

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setGravity(I)V

    .line 401
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const v8, 0x10000005

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 402
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/16 v8, 0x24

    const/4 v11, -0x1

    invoke-static {v11, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$6;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$6;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 515
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    new-instance v4, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 523
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 526
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string v13, "countries.txt"

    invoke-virtual {v11, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 528
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v11, ";"

    .line 529
    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 530
    new-instance v11, Lorg/telegram/ui/CountrySelectActivity$Country;

    invoke-direct {v11}, Lorg/telegram/ui/CountrySelectActivity$Country;-><init>()V

    .line 531
    aget-object v13, v8, v7

    iput-object v13, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    .line 532
    aget-object v13, v8, v9

    iput-object v13, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 533
    aget-object v13, v8, v3

    iput-object v13, v11, Lorg/telegram/ui/CountrySelectActivity$Country;->shortname:Ljava/lang/String;

    .line 534
    iget-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v9, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 536
    iget-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    aget-object v14, v8, v9

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-nez v13, :cond_2

    .line 538
    iget-object v13, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    aget-object v14, v8, v9

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v15

    .line 540
    :cond_2
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    array-length v11, v8

    if-le v11, v12, :cond_3

    .line 543
    iget-object v11, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneFormatMap:Ljava/util/HashMap;

    aget-object v13, v8, v9

    aget-object v14, v8, v12

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_3
    aget-object v11, v8, v3

    aget-object v8, v8, v7

    invoke-virtual {v4, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 547
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 549
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 552
    :goto_1
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    sget-object v7, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;->INSTANCE:Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda10;

    invoke-static {v7}, Lj$/util/Comparator$-CC;->comparing(Lj$/util/function/Function;)Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 554
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 555
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 556
    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 557
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v4, 0x0

    goto :goto_6

    .line 558
    :cond_5
    iget-boolean v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    if-nez v4, :cond_9

    if-eqz v0, :cond_9

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    .line 561
    :cond_6
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 v4, 0x4

    :goto_3
    if-lt v4, v3, :cond_8

    .line 563
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 564
    iget-object v8, v1, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_7

    .line 566
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 570
    :cond_8
    :goto_4
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 559
    :cond_9
    :goto_5
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 572
    :goto_6
    iput-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    goto :goto_a

    .line 576
    :cond_a
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_b

    .line 578
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v0

    goto :goto_7

    :catch_1
    move-exception v0

    .line 581
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_b
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_e

    .line 585
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    move v4, v9

    .line 588
    :goto_8
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_d

    .line 589
    iget-object v7, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object v7, v7, Lorg/telegram/ui/CountrySelectActivity$Country;->name:Ljava/lang/String;

    invoke-static {v7, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 590
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/telegram/ui/CountrySelectActivity$Country;

    goto :goto_9

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_e

    .line 596
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object v4, v8, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 601
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 602
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;->setHintText(Ljava/lang/String;)V

    .line 608
    :cond_f
    :goto_a
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    .line 609
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    .line 610
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 611
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 612
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 613
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 614
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->CreateContact:I

    const-string v7, "CreateContact"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    iget-object v4, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {v4, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 617
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 619
    new-instance v0, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    .line 620
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 621
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 622
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x28

    const/16 v6, 0x11

    invoke-static {v4, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->contentLayout:Landroid/widget/LinearLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    const/4 v10, -0x1

    const/16 v11, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x10

    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButton:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 627
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v0, v9, v2, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 628
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/NewContactBottomSheet;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    new-array v3, v3, [F

    const/high16 v4, 0x40c00000    # 6.0f

    aput v4, v3, v9

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->doneButtonContainer:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->plusTextView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    iget-object v0, v1, Lorg/telegram/ui/NewContactBottomSheet;->codeDividerView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v5
.end method

.method public dismiss()V
    .locals 3

    .line 900
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 901
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 871
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 873
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    move/from16 v18, v20

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v21

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int v12, v3, v4

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    const/4 v13, 0x0

    move-object v10, v2

    move/from16 v17, v22

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v17, 0x0

    move-object v11, v2

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->lastNameField:Lorg/telegram/ui/Components/OutlineEditText;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move/from16 v10, v22

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move/from16 v10, v22

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v2

    move/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 890
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_DRAWABLESELECTEDSTATE:I

    or-int/2addr v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    move/from16 v10, v22

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v0, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressInner2:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/NewContactBottomSheet;->editDoneItemProgress:Lorg/telegram/ui/Components/ContextProgressView;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_contextProgressOuter2:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 844
    iget-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 845
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreSelection:Z

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 848
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    .line 849
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CountrySelectActivity$Country;

    .line 850
    iget-object p3, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p1, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 851
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public selectCountry(Lorg/telegram/ui/CountrySelectActivity$Country;)V
    .locals 2

    const/4 v0, 0x1

    .line 855
    iput-boolean v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    .line 856
    iget-object v0, p1, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    .line 857
    iget-object v1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 858
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/NewContactBottomSheet;->setCountryHint(Ljava/lang/String;Lorg/telegram/ui/CountrySelectActivity$Country;)V

    const/4 p1, 0x0

    .line 861
    iput-boolean p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->ignoreOnTextChange:Z

    return-void
.end method

.method public setInitialName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialFirstName:Ljava/lang/String;

    .line 769
    iput-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialLastName:Ljava/lang/String;

    return-void
.end method

.method public setInitialPhoneNumber(Ljava/lang/String;Z)V
    .locals 4

    .line 742
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    .line 743
    iput-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    .line 745
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 746
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 747
    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    const-string v0, "+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 748
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 749
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumberWithCountryCode:Z

    if-nez p2, :cond_4

    if-eqz p1, :cond_4

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_2

    .line 752
    :cond_1
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    const/4 p2, 0x4

    :goto_0
    if-lt p2, v0, :cond_3

    const/4 v1, 0x0

    .line 754
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 755
    iget-object v3, p0, Lorg/telegram/ui/NewContactBottomSheet;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 756
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/CountrySelectActivity$Country;

    iget-object p2, p2, Lorg/telegram/ui/CountrySelectActivity$Country;->code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 761
    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->phoneField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 750
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->codeField:Lorg/telegram/ui/Components/AnimatedPhoneNumberEditText;

    iget-object p2, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 p1, 0x0

    .line 763
    iput-object p1, p0, Lorg/telegram/ui/NewContactBottomSheet;->initialPhoneNumber:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public show()V
    .locals 3

    .line 699
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/NewContactBottomSheet;->firstNameField:Lorg/telegram/ui/Components/OutlineEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/OutlineEditText;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 701
    new-instance v0, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/NewContactBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/NewContactBottomSheet;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
