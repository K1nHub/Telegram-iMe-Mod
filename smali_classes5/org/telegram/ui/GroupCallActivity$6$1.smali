.class Lorg/telegram/ui/GroupCallActivity$6$1;
.super Lorg/telegram/ui/Components/GroupCallRecordAlert;
.source "GroupCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity$6;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/GroupCallActivity$6;


# direct methods
.method public static synthetic $r8$lambda$KfU4-I6-euMe1fl3AoTRn37krlo(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/GroupCallActivity$6$1;->lambda$onStartRecord$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M5CkC0pe9KMAPyBA51nBfCBFQ7w(Lorg/telegram/ui/GroupCallActivity$6$1;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$6$1;->lambda$onStartRecord$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qj32J6Tnz7TnnQ3xFX2-aSLUnk4(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/GroupCallActivity$6$1;->lambda$onStartRecord$4(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TnY-yq8DzWStgaEtAWhkjYR64Do(Lorg/telegram/ui/GroupCallActivity$6$1;Lorg/telegram/ui/Components/EditTextBoldCursor;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupCallActivity$6$1;->lambda$onStartRecord$3(Lorg/telegram/ui/Components/EditTextBoldCursor;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPmTTtMsYJpCSFh5x9rQGbe68I0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$6$1;->lambda$onStartRecord$0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/GroupCallActivity$6;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 0

    .line 1923
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/GroupCallRecordAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private static synthetic lambda$onStartRecord$0(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1965
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1966
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onStartRecord$1(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1972
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p1, p2, v1}, Lorg/telegram/ui/GroupCallActivity;->makeFocusable(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method private static synthetic lambda$onStartRecord$2(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1973
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onStartRecord$3(Lorg/telegram/ui/Components/EditTextBoldCursor;ILandroid/content/DialogInterface;I)V
    .locals 2

    .line 1976
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lorg/telegram/messenger/ChatObject$Call;->toggleRecord(Ljava/lang/String;I)V

    .line 1977
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1978
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p2, :cond_0

    const/16 p2, 0x27

    goto :goto_0

    :cond_0
    const/16 p2, 0x64

    :goto_0
    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2, p3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 1979
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1980
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->playStartRecordSound()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$onStartRecord$4(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1983
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onStartRecord(I)V
    .locals 13

    .line 1926
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1927
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1929
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/GroupCallActivity;->access$3102(Lorg/telegram/ui/GroupCallActivity;Z)Z

    .line 1930
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingTitle:I

    const-string v3, "VoipGroupStartRecordingTitle"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-nez p1, :cond_1

    .line 1932
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingRtmpText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingText:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    .line 1934
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1935
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingRtmpVideoText:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelStartRecordingVideoText:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_3

    .line 1937
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6$1;->this$1:Lorg/telegram/ui/GroupCallActivity$6;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingRtmpVideoText:I

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupStartRecordingVideoText:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1940
    :goto_3
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCheckFocusable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1942
    new-instance v1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 1943
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputField:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1945
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 1946
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1947
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v5, 0x41800000    # 16.0f

    .line 1949
    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 1950
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1951
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1952
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setLines(I)V

    const/16 v6, 0x4001

    .line 1953
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v6, 0x33

    .line 1954
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setGravity(I)V

    .line 1955
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1956
    sget v4, Lorg/telegram/messenger/R$string;->VoipGroupSaveFileHint:I

    const-string v6, "VoipGroupSaveFileHint"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v4, 0x6

    .line 1957
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1958
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1959
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/16 v4, 0x14

    .line 1960
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 1961
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/4 v4, 0x4

    .line 1962
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v2, v4, v2, v2}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v6, -0x1

    const/16 v7, 0x24

    const/16 v8, 0x33

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/16 v12, 0xc

    .line 1963
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    new-instance v2, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1970
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    .line 1971
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 1972
    new-instance v3, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v1}, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/GroupCallActivity$6$1;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1973
    new-instance v3, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1975
    sget v2, Lorg/telegram/messenger/R$string;->Start:I

    const-string v3, "Start"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1}, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCallActivity$6$1;Lorg/telegram/ui/Components/EditTextBoldCursor;I)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1983
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/GroupCallActivity$6$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1984
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1985
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 1986
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 1987
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    .line 1989
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
