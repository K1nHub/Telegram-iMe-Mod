.class public Lorg/telegram/ui/ChangeUsernameActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ChangeUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChangeUsernameActivity$TouchHelperCallback;,
        Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;,
        Lorg/telegram/ui/ChangeUsernameActivity$InputCell;,
        Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;,
        Lorg/telegram/ui/ChangeUsernameActivity$Adapter;,
        Lorg/telegram/ui/ChangeUsernameActivity$LinkSpan;
    }
.end annotation


# static fields
.field private static dragPaint:Landroid/graphics/Paint;

.field private static linkBackgroundActive:Landroid/graphics/Paint;

.field private static linkBackgroundInactive:Landroid/graphics/Paint;


# instance fields
.field private adapter:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

.field private checkReqId:I

.field private checkRunnable:Ljava/lang/Runnable;

.field private doneButton:Landroid/view/View;

.field private editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

.field private helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

.field private ignoreCheck:Z

.field private inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private lastCheckName:Ljava/lang/String;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private needReorder:Z

.field private notEditableUsernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;"
        }
    .end annotation
.end field

.field private statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private username:Ljava/lang/String;

.field private usernames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_username;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-eq6-Rc8p04dGI0QdhmfAQAHBjo(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$checkUserName$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-lF3_MIkPyeQzJZz8JiWLfepZDU(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$checkUserName$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2jYL0pHjbt-Xwg3qeWZbjVoE6Ew(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$createView$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$5vyJClmU-5D-dOB8LaCQaG0ChP8(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ABMV2_ht_K_hijM217Y7RTPB_1U(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GwYDzphpeRPX4b6VoPk1-OL4g4A(Lorg/telegram/ui/ChangeUsernameActivity;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$11(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HRoEpupe9YMYaqX_Cj7q1ViQ9-E(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PUlDTFzi_A-ICY9GSuAGlGZOMYc(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$8(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YchCSKALqxasoZ33tXBpLkr8zzM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$sendReorder$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ynuiChLSuZAPT1wpcF2AYRaYPk(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bJL5mITk_KkE9WZkTkjODvf3RrA(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$checkUserName$4(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vwbBWKjgldPX3e2xnfSWHknGwAs(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->lambda$saveName$7(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 802
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->linkBackgroundActive:Landroid/graphics/Paint;

    .line 803
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->linkBackgroundInactive:Landroid/graphics/Paint;

    .line 804
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->dragPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const-string v0, ""

    .line 109
    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->loadingUsernames:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->sendReorder()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChangeUsernameActivity;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->saveName()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChangeUsernameActivity;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    return p0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    return p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ChangeUsernameActivity$InputCell;)Lorg/telegram/ui/ChangeUsernameActivity$InputCell;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->editableUsernameCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ChangeUsernameActivity;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->needReorder:Z

    return p1
.end method

.method static synthetic access$1402(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Z)Z
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ChangeUsernameActivity;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChangeUsernameActivity;)Landroid/view/View;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900()Landroid/graphics/Paint;
    .locals 1

    .line 91
    sget-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->linkBackgroundActive:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000()Landroid/graphics/Paint;
    .locals 1

    .line 91
    sget-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->linkBackgroundInactive:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/graphics/Paint;
    .locals 1

    .line 91
    sget-object v0, Lorg/telegram/ui/ChangeUsernameActivity;->dragPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/ChangeUsernameActivity$Adapter;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->adapter:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChangeUsernameActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChangeUsernameActivity;Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->focusUsernameField(Z)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->loadingUsernames:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChangeUsernameActivity;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChangeUsernameActivity;)I
    .locals 0

    .line 91
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChangeUsernameActivity;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    return-object p1
.end method

.method private checkUserName(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "@"

    .line 1096
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1099
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz v1, :cond_2

    .line 1102
    invoke-static {v1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 1105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 1108
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 1109
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1110
    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    .line 1111
    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 1112
    iget v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    if-eqz v1, :cond_4

    .line 1113
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    invoke-virtual {v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_4
    const-string v1, "windowBackgroundWhiteRedText4"

    if-eqz p1, :cond_11

    const-string v3, "_"

    .line 1118
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "UsernameInvalid"

    if-nez v4, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_4

    :cond_5
    const/4 v3, 0x0

    .line 1129
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_11

    .line 1130
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x39

    const/16 v7, 0x30

    if-nez v3, :cond_8

    if-lt v4, v7, :cond_8

    if-gt v4, v6, :cond_8

    const-string p1, "UsernameInvalidStartNumber"

    if-eqz p2, :cond_6

    .line 1133
    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidStartNumber:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_2

    .line 1135
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_7

    .line 1136
    sget v0, Lorg/telegram/messenger/R$string;->UsernameInvalidStartNumber:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1138
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1139
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_7

    .line 1140
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_7
    :goto_2
    return v2

    :cond_8
    if-lt v4, v7, :cond_9

    if-le v4, v6, :cond_e

    :cond_9
    const/16 v6, 0x61

    if-lt v4, v6, :cond_a

    const/16 v6, 0x7a

    if-le v4, v6, :cond_e

    :cond_a
    const/16 v6, 0x41

    if-lt v4, v6, :cond_b

    const/16 v6, 0x5a

    if-le v4, v6, :cond_e

    :cond_b
    const/16 v6, 0x5f

    if-eq v4, v6, :cond_e

    if-eqz p2, :cond_c

    .line 1148
    sget p1, Lorg/telegram/messenger/R$string;->UsernameInvalid:I

    invoke-static {v5, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_3

    .line 1150
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_d

    .line 1151
    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalid:I

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1153
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1154
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_d

    .line 1155
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_d
    :goto_3
    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1119
    :cond_f
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_10

    .line 1120
    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalid:I

    invoke-static {v5, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1122
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1123
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_10

    .line 1124
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_10
    return v2

    :cond_11
    if-eqz p1, :cond_1b

    .line 1163
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_12

    goto/16 :goto_6

    .line 1178
    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_15

    const-string p1, "UsernameInvalidLong"

    if-eqz p2, :cond_13

    .line 1180
    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidLong:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_5

    .line 1182
    :cond_13
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_14

    .line 1183
    sget v0, Lorg/telegram/messenger/R$string;->UsernameInvalidLong:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1186
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_14

    .line 1187
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_14
    :goto_5
    return v2

    :cond_15
    if-nez p2, :cond_1a

    .line 1195
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-nez p2, :cond_16

    const-string p2, ""

    .line 1199
    :cond_16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1200
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_17

    .line 1201
    sget v1, Lorg/telegram/messenger/R$string;->UsernameAvailable:I

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "UsernameAvailable"

    invoke-static {p1, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string p2, "windowBackgroundWhiteGreenText"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1203
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_17

    .line 1205
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_17
    return v0

    .line 1211
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_19

    .line 1212
    sget v1, Lorg/telegram/messenger/R$string;->UsernameChecking:I

    const-string v2, "UsernameChecking"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string v1, "windowBackgroundWhiteGrayText8"

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1214
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1215
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p2, :cond_19

    .line 1216
    invoke-static {p2}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    .line 1219
    :cond_19
    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    .line 1221
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    .line 1265
    invoke-static {p2, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1a
    return v0

    :cond_1b
    :goto_6
    const-string p1, "UsernameInvalidShort"

    if-eqz p2, :cond_1c

    .line 1165
    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShort:I

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->showSimpleAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_7

    .line 1167
    :cond_1c
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_1d

    .line 1168
    sget v0, Lorg/telegram/messenger/R$string;->UsernameInvalidShort:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1170
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1171
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_1d

    .line 1172
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_1d
    :goto_7
    return v2
.end method

.method private focusUsernameField(Z)V
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v0, v0, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->inputCell:Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object p1, p1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$checkUserName$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;)V
    .locals 2

    const/4 v0, 0x0

    .line 1225
    iput v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    .line 1226
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->lastCheckName:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_0

    .line 1227
    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p3, :cond_0

    .line 1228
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p2, :cond_4

    .line 1229
    sget p3, Lorg/telegram/messenger/R$string;->UsernameAvailable:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "UsernameAvailable"

    invoke-static {p1, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1230
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string p2, "windowBackgroundWhiteGreenText"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1231
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1232
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_4

    .line 1233
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    goto/16 :goto_2

    .line 1238
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    const-string p3, "windowBackgroundWhiteRedText4"

    if-eqz p2, :cond_1

    .line 1239
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "USERNAME_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShort:I

    const-string p4, "UsernameInvalidShort"

    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1242
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 1243
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "USERNAME_PURCHASE_AVAILABLE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1244
    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;->username:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, p1, :cond_2

    .line 1245
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInvalidShortPurchase:I

    const-string p3, "UsernameInvalidShortPurchase"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1247
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInUsePurchase:I

    const-string p3, "UsernameInUsePurchase"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const-string p2, "windowBackgroundWhiteGrayText8"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1250
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1252
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->UsernameInUse:I

    const-string p4, "UsernameInUse"

    invoke-static {p4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1254
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->statusTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1256
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->helpCell:Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz p1, :cond_4

    .line 1257
    invoke-static {p1}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;->access$2400(Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$checkUserName$4(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 1224
    new-instance v6, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$checkUserName$5(Ljava/lang/String;)V
    .locals 3

    .line 1222
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;-><init>()V

    .line 1223
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;->username:Ljava/lang/String;

    .line 1224
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_checkUsername;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->checkReqId:I

    return-void
.end method

.method private static synthetic lambda$createView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$createView$1()V
    .locals 3

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 324
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChangeUsernameActivity;->focusUsernameField(Z)V

    .line 326
    iput-boolean v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->ignoreCheck:Z

    :cond_2
    return-void
.end method

.method private synthetic lambda$saveName$10(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-nez p4, :cond_0

    .line 1299
    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1300
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p1, p3}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1314
    :cond_0
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "USERNAME_NOT_MODIFIED"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1315
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1323
    :cond_1
    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "USERNAME_PURCHASE_AVAILABLE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "USERNAME_INVALID"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 1333
    :cond_2
    new-instance p3, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0, p1, p4, p2}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1324
    :cond_3
    :goto_0
    new-instance p2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$saveName$11(ILandroid/content/DialogInterface;)V
    .locals 1

    .line 1346
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    return-void
.end method

.method private synthetic lambda$saveName$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    .line 1302
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1304
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1306
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1309
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, p1, v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1310
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1311
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1312
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$saveName$7(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 1317
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1319
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1321
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$saveName$8(Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    .line 1326
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1328
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1330
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->shakeIfOff()V

    return-void
.end method

.method private synthetic lambda$saveName$9(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V
    .locals 1

    .line 1335
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1337
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1339
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, p0, p3, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 1340
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->shakeIfOff()V

    return-void
.end method

.method private static synthetic lambda$sendReorder$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 575
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    return-void
.end method

.method private saveName()V
    .locals 7

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    .line 1274
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/ChangeUsernameActivity;->checkUserName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1275
    invoke-virtual {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->shakeIfOff()V

    return-void

    .line 1278
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1279
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_2

    goto :goto_0

    .line 1282
    :cond_2
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 1286
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1287
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 1291
    :cond_4
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 1293
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;-><init>()V

    .line 1294
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;->username:Ljava/lang/String;

    .line 1296
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v1, v1, [Ljava/lang/Object;

    sget v6, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v4, v5, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1297
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, v3}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_updateUsername;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v1

    .line 1344
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    .line 1346
    new-instance v2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1347
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :cond_5
    :goto_0
    return-void
.end method

.method private sendReorder()V
    .locals 5

    .line 559
    iget-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->needReorder:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 562
    iput-boolean v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->needReorder:Z

    .line 563
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_reorderUsernames;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_reorderUsernames;-><init>()V

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 565
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 566
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_1

    .line 567
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 569
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 570
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_3

    .line 571
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    :cond_4
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_account_reorderUsernames;->order:Ljava/util/ArrayList;

    .line 574
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda11;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 577
    invoke-direct {p0}, Lorg/telegram/ui/ChangeUsernameActivity;->updateUser()V

    return-void
.end method

.method private updateUser()V
    .locals 4

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 583
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 585
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 586
    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    .line 587
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;ZZ)Z

    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 163
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->Username:I

    const-string v3, "Username"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ChangeUsernameActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChangeUsernameActivity$1;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 178
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/messenger/R$string;->Done:I

    const-string v5, "Done"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->doneButton:Landroid/view/View;

    .line 180
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 182
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 186
    iput-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    .line 187
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 188
    :goto_0
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 189
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-eqz v4, :cond_1

    .line 190
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->editable:Z

    if-eqz v5, :cond_1

    .line 191
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 197
    iput-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    .line 199
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    .line 200
    iput-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->username:Ljava/lang/String;

    .line 203
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->notEditableUsernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 204
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 205
    :goto_2
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 206
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_5

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 209
    :cond_6
    :goto_3
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 210
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v2, :cond_7

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 222
    :cond_8
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 223
    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity$2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v2, "windowBackgroundGray"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 256
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChangeUsernameActivity$Adapter;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;Lorg/telegram/ui/ChangeUsernameActivity$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->adapter:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string v0, "listSelectorSDK21"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 258
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity$TouchHelperCallback;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeUsernameActivity$TouchHelperCallback;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 260
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget-object v0, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object p1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/ChangeUsernameActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChangeUsernameActivity$3;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 322
    new-instance p1, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChangeUsernameActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChangeUsernameActivity;)V

    const-wide/16 v0, 0x28

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 330
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1379
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefault"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v18, "actionBarDefaultTitle"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBecomeFullyHidden()V
    .locals 2

    .line 1410
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    const-string v1, "windowBackgroundWhite"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setBehindKeyboardColor(I)V

    :cond_0
    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 2

    .line 1402
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setBehindKeyboardColor(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1087
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 1088
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "view_animations"

    const/4 v2, 0x1

    .line 1089
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1091
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChangeUsernameActivity;->focusUsernameField(Z)V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1353
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChangeUsernameActivity;->focusUsernameField(Z)V

    :cond_0
    return-void
.end method

.method public shakeIfOff()V
    .locals 3

    .line 1358
    iget-object v0, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1361
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1362
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1363
    instance-of v2, v1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 1364
    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/HeaderCell;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    goto :goto_1

    .line 1365
    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/ChangeUsernameActivity$UsernameHelpCell;

    if-eqz v2, :cond_2

    .line 1366
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    goto :goto_1

    .line 1367
    :cond_2
    instance-of v2, v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    if-eqz v2, :cond_3

    .line 1368
    check-cast v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;

    iget-object v2, v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->field:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 1369
    iget-object v1, v1, Lorg/telegram/ui/ChangeUsernameActivity$InputCell;->tme:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1372
    :cond_4
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void
.end method

.method public toggleUsername(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 348
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(IZZ)V

    return-void
.end method

.method public toggleUsername(IZZ)V
    .locals 5

    add-int/lit8 v0, p1, -0x4

    if-ltz v0, :cond_b

    .line 352
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_6

    .line 355
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-nez v0, :cond_1

    return-void

    .line 361
    :cond_1
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 363
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    .line 364
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, -0x1

    :goto_1
    if-ltz p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    .line 370
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    const/4 v3, -0x1

    .line 374
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_6

    .line 375
    iget-object v4, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_5

    move v3, p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-ltz v3, :cond_7

    .line 380
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_3
    add-int/lit8 v1, p2, 0x4

    .line 384
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_a

    .line 385
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v2, p2, :cond_a

    .line 386
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 387
    iget-object v3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-ne v3, p1, :cond_9

    if-eqz p3, :cond_8

    .line 389
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 391
    :cond_8
    instance-of p3, p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    if-eqz p3, :cond_a

    .line 392
    check-cast p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-object p3, p0, Lorg/telegram/ui/ChangeUsernameActivity;->loadingUsernames:Ljava/util/ArrayList;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->setLoading(Z)V

    .line 393
    invoke-virtual {p2}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->update()V

    goto :goto_5

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-ltz v1, :cond_b

    if-eq p1, v1, :cond_b

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/ChangeUsernameActivity;->adapter:Lorg/telegram/ui/ChangeUsernameActivity$Adapter;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/ui/ChangeUsernameActivity$Adapter;->moveElement(II)V

    :cond_b
    :goto_6
    return-void
.end method

.method public toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 339
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lorg/telegram/ui/ChangeUsernameActivity;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 341
    invoke-virtual {p0, v0, p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity;->toggleUsername(IZZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
