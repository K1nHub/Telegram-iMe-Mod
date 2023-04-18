.class Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Cells/ChatMessageCell$ChatMessageCellDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatMessageCellDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$0Qp7XAy90HztYs7VGq-ffQ6C9BM(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$appendMention$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$5r1nn21AQzPN23-Nq9Jq0v8MZ1A(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressChannelAvatar$4(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DFWz_IkXvQiN29tAzIXFxqkFP9Q(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReaction$7(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FGlMGCwGC28lOVYUq5az-bkS8nc(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressImage$10(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHnaANKtz0KE1UkZBgGvEOiLDfs(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$2(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SofyDVcvv4_G_dDkibDCCFJMyNo(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReaction$6(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$epdOR20q98RUZ8_nOfeLHuOIq6s(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressAnimatedEmoji$8(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDVG0HtU7Ym4Zp-yAT6OpzNh5MM(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didPressReplyMessage$9(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pijXytGNxIN2iq8flgD_PCInOYw(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$needShowPremiumBulletin$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$rQnmyybjYicK7UTcQ8_RMNGh2z0(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$0(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xRqm_HkfzxLnXHNj6rYIhNG3hRE(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->lambda$didLongPressUserAvatar$1(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 32468
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$1;)V
    .locals 0

    .line 32468
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;-><init>(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method private appendMention(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    .line 32891
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_4

    .line 32893
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getFieldText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, " "

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 32895
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32896
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    .line 32897
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 32900
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 32902
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_2

    .line 32903
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 32905
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    const-string p1, "@"

    .line 32907
    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 32909
    invoke-static {p1, p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;Z)Ljava/lang/String;

    .line 32910
    invoke-static {p1}, Lcom/iMe/utils/extentions/model/telegram/UserExtKt;->getPrivacySafeName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    .line 32911
    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 32912
    new-instance v0, Lorg/telegram/ui/Components/URLSpanUserMention;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result p1

    const/16 v1, 0x21

    invoke-interface {v2, v0, p2, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 32913
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32915
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 32916
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    return-void
.end method

.method private isAvatarPreviewerEnabled()Z
    .locals 1

    .line 33011
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$appendMention$3()V
    .locals 1

    .line 32916
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    return-void
.end method

.method private synthetic lambda$didLongPressChannelAvatar$4(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 32937
    sget-object v0, Lorg/telegram/ui/ChatActivity$139;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 32943
    invoke-direct {p0, p2, p1, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    goto :goto_0

    .line 32939
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$0(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/Boolean;)V
    .locals 1

    .line 32834
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 32835
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 32836
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32837
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$60200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/ContactsController;->deleteContact(Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$1(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    if-ne p5, p1, :cond_0

    .line 32798
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;

    invoke-direct {p2}, Lcom/iMe/fork/ui/fragment/ExtendedAvatarPreviewerSettingsActivity;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 32801
    :cond_0
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 32802
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION_BY_NAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p5, :cond_1

    .line 32803
    invoke-direct {p0, p2, p4}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto/16 :goto_0

    .line 32804
    :cond_1
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_ID:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p5, :cond_2

    .line 32805
    iget-wide p1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string p3, "TextCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32806
    :cond_2
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_USERNAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p5, :cond_3

    .line 32807
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UsernameCopied:I

    const-string p3, "UsernameCopied"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32808
    :cond_3
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->USER_MESSAGES:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const/4 v0, 0x0

    if-ne p1, p5, :cond_4

    .line 32809
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string p3, ""

    invoke-static {p1, p3}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    .line 32810
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$60002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32811
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$30200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    .line 32812
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, p4}, Lorg/telegram/ui/ChatActivity;->access$60002(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 32813
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/ChatActivity;->access$60100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto/16 :goto_0

    .line 32814
    :cond_4
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->TRANSFER:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    const-string v1, "user_id"

    if-ne p1, p5, :cond_5

    .line 32815
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 32816
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "open_wallet"

    .line 32817
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32818
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 32819
    :cond_5
    sget-object p5, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->ADD_TO_CONTACTS:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p5, :cond_6

    .line 32820
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 32821
    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "addContact"

    .line 32822
    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32823
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 32824
    :cond_6
    sget-object p4, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_CONTACT:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p4, :cond_7

    .line 32825
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 32827
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    sget p3, Lorg/telegram/messenger/R$string;->DeleteContact:I

    const-string p4, "DeleteContact"

    .line 32828
    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget p3, Lorg/telegram/messenger/R$string;->AreYouSureDeleteContact:I

    const-string p4, "AreYouSureDeleteContact"

    .line 32829
    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget p3, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p4, "Delete"

    .line 32830
    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, p3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    new-instance v8, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$User;)V

    move-object v1, p1

    .line 32825
    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 32841
    :cond_7
    sget-object p4, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_FROM_GROUP:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p4, :cond_8

    .line 32842
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    neg-long p3, p3

    invoke-virtual {p1, p3, p4, p2}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 32843
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_b

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32844
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 32846
    :cond_8
    sget-object p4, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->OPEN_PROFILE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p4, :cond_9

    .line 32847
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 32848
    :cond_9
    sget-object p4, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->SEND_MESSAGE:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p4, :cond_a

    .line 32849
    invoke-direct {p0, p3, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 32850
    :cond_a
    sget-object p3, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne p1, p3, :cond_b

    .line 32851
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$User;Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method private synthetic lambda$didLongPressUserAvatar$2(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/AvatarPreviewer$MenuItem;)V
    .locals 1

    .line 32872
    sget-object v0, Lorg/telegram/ui/ChatActivity$139;->$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 p1, 0x5

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32880
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->appendMention(Lorg/telegram/tgnet/TLRPC$User;Z)V

    goto :goto_0

    .line 32874
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_0

    .line 32877
    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didPressAnimatedEmoji$8(Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 4

    .line 33303
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33304
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33305
    new-instance p1, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p1, v1, v2, v3, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 33306
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 33307
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$didPressImage$10(Lorg/telegram/messenger/MessageObject;)V
    .locals 18

    move-object/from16 v0, p0

    .line 33447
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->checkSlowModeAlert()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33448
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$5200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getThreadMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didPressReaction$6(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V
    .locals 6

    .line 33124
    new-instance p1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$3;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$3;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 33131
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    const/4 p2, 0x0

    .line 33132
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setDimBehind(Z)V

    .line 33133
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p2}, Lorg/telegram/ui/ChatActivity;->access$47400(Lorg/telegram/ui/ChatActivity;Z)V

    .line 33134
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$didPressReaction$7(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V
    .locals 0

    .line 33137
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p5, "user_id"

    .line 33138
    invoke-virtual {p2, p5, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33139
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    const-string p3, "report_reaction_message_id"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33140
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p3

    const-string p1, "report_reaction_from_dialog_id"

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33141
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 33142
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 33143
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->closeMenu()V

    return-void
.end method

.method private synthetic lambda$didPressReplyMessage$9(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    .line 33366
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$47902(Lorg/telegram/ui/ChatActivity;I)I

    .line 33367
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$48002(Lorg/telegram/ui/ChatActivity;I)I

    return-void
.end method

.method private synthetic lambda$needShowPremiumBulletin$5()V
    .locals 4

    .line 33039
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    .line 33040
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->pressTranscribeButton()V

    return-void
.end method

.method private openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V
    .locals 7

    .line 32996
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 32997
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v1, p3

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZI)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 32998
    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32999
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33000
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    if-eqz p3, :cond_2

    const-string p2, "message_id"

    .line 33002
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33004
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p2, v0, p3, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 33005
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private openDialog(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 32987
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32988
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p2, "user_id"

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32989
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32990
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 1

    const/4 v0, 0x0

    .line 32973
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$Chat;Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 32978
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32979
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string p1, "chat_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "expandPhoto"

    .line 32980
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32981
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 1

    const/4 v0, 0x0

    .line 32954
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void
.end method

.method private openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 6

    if-eqz p1, :cond_3

    .line 32958
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 32959
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_userProfilePhotoEmpty;

    if-eqz v0, :cond_1

    :cond_0
    move p2, v1

    .line 32962
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32963
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v4, "user_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "expandPhoto"

    .line 32964
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32965
    new-instance p2, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 32966
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 32967
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$57700(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 32968
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public canDrawOutboundsContent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canPerformActions()Z
    .locals 1

    .line 33284
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$58600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$58700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$58800(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public didLongPress(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 6

    .line 33278
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFF)Z

    .line 33279
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;I)V

    return-void
.end method

.method public didLongPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 7

    .line 33050
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    if-nez v0, :cond_0

    goto :goto_0

    .line 33057
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v0, :cond_1

    .line 33058
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->access$57900(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;Ljava/lang/String;ZLorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 33060
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public didLongPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)Z
    .locals 5

    .line 32922
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->isAvatarPreviewerEnabled()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    new-array p5, p3, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    .line 32923
    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v0, p5, p4

    .line 32924
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_0

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-wide v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    .line 32925
    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    .line 32926
    iget-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_CHANNEL:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_GROUP:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    :goto_0
    aput-object v0, p5, p3

    .line 32928
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 32931
    invoke-static {p2, v0, p5}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChatFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p5

    goto :goto_1

    .line 32933
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$57500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {p2, v0, p5}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$Chat;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object p5

    .line 32935
    :goto_1
    invoke-static {p5}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32936
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object p4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$57600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {p4, v0, p5, v1}, Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    return p3

    :cond_4
    return p4
.end method

.method public didLongPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 32726
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->isAvatarPreviewerEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 32727
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    if-eq v3, v6, :cond_2

    :cond_1
    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v4

    .line 32729
    :goto_0
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isExtendedAvatarPreviewerEnabled:Z

    if-eqz v5, :cond_17

    .line 32730
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_3

    return v4

    .line 32733
    :cond_3
    sget-object v5, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v7

    .line 32734
    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$57200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_1

    :cond_4
    move v8, v4

    .line 32735
    :goto_1
    new-array v9, v5, [Ljava/lang/CharSequence;

    .line 32736
    new-array v10, v5, [I

    .line 32737
    new-array v11, v5, [Z

    if-lt v5, v6, :cond_5

    add-int/lit8 v6, v5, -0x2

    .line 32739
    aput-boolean v7, v11, v6

    :cond_5
    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_16

    add-int/lit8 v12, v5, -0x1

    if-ne v6, v12, :cond_7

    .line 32743
    sget v12, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v13, "Settings"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v6

    .line 32744
    sget v12, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    aput v12, v10, v6

    :cond_6
    :goto_3
    move/from16 v16, v5

    move/from16 p4, v8

    goto/16 :goto_8

    .line 32747
    :cond_7
    sget-object v12, Lorg/telegram/messenger/SharedConfig;->selectedExtendedAvatarPreviewerItems:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    .line 32748
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION_BY_NAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_9

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v16, v5

    move/from16 p4, v8

    goto/16 :goto_7

    .line 32752
    :cond_9
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->MENTION:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_a

    if-eqz v3, :cond_6

    .line 32753
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    .line 32756
    :cond_a
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->COPY_USERNAME:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_b

    .line 32757
    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_3

    .line 32760
    :cond_b
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->USER_MESSAGES:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_c

    .line 32761
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$54800(Lorg/telegram/ui/ChatActivity;)V

    .line 32762
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$30200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v13

    if-nez v13, :cond_8

    goto :goto_3

    .line 32765
    :cond_c
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->ADD_TO_CONTACTS:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_d

    if-eqz v8, :cond_8

    goto :goto_3

    .line 32769
    :cond_d
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_CONTACT:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_e

    if-nez v8, :cond_8

    goto :goto_3

    .line 32773
    :cond_e
    sget-object v13, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->REMOVE_FROM_GROUP:Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;

    if-ne v12, v13, :cond_8

    .line 32775
    iget-object v13, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v13, v13, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v13, :cond_13

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v13, :cond_13

    .line 32776
    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v4

    :goto_4
    if-ge v14, v13, :cond_13

    .line 32777
    iget-object v15, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move/from16 p4, v8

    .line 32778
    iget-wide v7, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    move/from16 v16, v5

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v4, v7, v4

    if-nez v4, :cond_12

    .line 32779
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 32780
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;

    iget-object v4, v15, Lorg/telegram/tgnet/TLRPC$TL_chatChannelParticipant;->channelParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 32781
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_14

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v5, :cond_f

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v5, :cond_10

    :cond_f
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v4, :cond_14

    :cond_10
    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    .line 32783
    :cond_11
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v4, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v5, :cond_10

    instance-of v5, v15, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-eqz v5, :cond_14

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-nez v4, :cond_10

    iget-wide v4, v15, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-nez v4, :cond_14

    goto :goto_5

    :cond_12
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p4

    move/from16 v5, v16

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_13
    move/from16 v16, v5

    move/from16 p4, v8

    :cond_14
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_15

    goto :goto_8

    .line 32793
    :cond_15
    :goto_7
    invoke-virtual {v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    .line 32794
    invoke-virtual {v12}, Lcom/iMe/fork/enums/ExtendedAvatarPreviewerItem;->getIconResId()I

    move-result v4

    aput v4, v10, v6

    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p4

    move/from16 v5, v16

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_16
    move/from16 v16, v5

    .line 32796
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v4, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;

    move/from16 v6, v16

    invoke-direct {v5, v0, v6, v2, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    invoke-virtual {v4, v9, v10, v5, v11}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;[Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v1

    .line 32853
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v1

    .line 32796
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v4, 0x1

    return v4

    :cond_17
    move v4, v7

    add-int/lit8 v5, v3, 0x2

    .line 32857
    new-array v5, v5, [Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    .line 32858
    sget-object v7, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->OPEN_PROFILE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    .line 32859
    sget-object v7, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->SEND_MESSAGE:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v7, v5, v4

    if-eqz v3, :cond_18

    .line 32861
    sget-object v3, Lorg/telegram/ui/AvatarPreviewer$MenuItem;->MENTION:Lorg/telegram/ui/AvatarPreviewer$MenuItem;

    aput-object v3, v5, v6

    .line 32863
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v6, v7}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 32866
    invoke-static {v3, v5}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$UserFull;[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v3

    goto :goto_9

    .line 32868
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$57300(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-static {v2, v3, v5}, Lorg/telegram/ui/AvatarPreviewer$Data;->of(Lorg/telegram/tgnet/TLRPC$User;I[Lorg/telegram/ui/AvatarPreviewer$MenuItem;)Lorg/telegram/ui/AvatarPreviewer$Data;

    move-result-object v3

    .line 32870
    :goto_9
    invoke-static {v3}, Lorg/telegram/ui/AvatarPreviewer;->canPreview(Lorg/telegram/ui/AvatarPreviewer$Data;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 32871
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$57400(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v6, v0, v1, v2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v4, v5, v3, v6}, Lorg/telegram/ui/AvatarPreviewer;->show(Landroid/view/ViewGroup;Lorg/telegram/ui/AvatarPreviewer$Data;Lorg/telegram/ui/AvatarPreviewer$Callback;)V

    const/4 v1, 0x1

    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_a

    :cond_1b
    move v1, v4

    :goto_a
    return v1
.end method

.method public didPressAdditionalSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 2

    .line 32500
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32501
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v0, :cond_0

    .line 32502
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$34602(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    .line 32503
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$34600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ChatActivity;->access$55400(Lorg/telegram/ui/ChatActivity;ILorg/telegram/messenger/MessageObject$GroupedMessages;)V

    goto :goto_0

    .line 32505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 32508
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_2

    .line 32509
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 32511
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->access$55500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Lcom/iMe/fork/ui/dialog/TranslateAlert;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method public didPressAnimatedEmoji(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Z
    .locals 3

    .line 33294
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    const/4 v0, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    iget-boolean p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 33297
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v1

    .line 33298
    iget-object p1, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$58900(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 33302
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-virtual {p2, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createContainsEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 33310
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public didPressBotButton(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 5

    .line 33016
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonSwitchInline;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonCallback;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrlAuth;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUserProfile;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRequestPeer;

    if-nez v0, :cond_0

    goto :goto_1

    .line 33023
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    instance-of v4, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonUrl;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->url:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3, p1, v4}, Lorg/telegram/ui/ChatActivity;->access$57800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->didPressedBotButton(Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/browser/Browser$Progress;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public didPressCancelSendButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 33270
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 33271
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    if-eqz v0, :cond_0

    .line 33272
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    return-void
.end method

.method public didPressChannelAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;IFF)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 32683
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$56800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 32687
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openChat(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    return-void

    .line 32684
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3, p4, p5}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method

.method public didPressCommentButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 10

    .line 33624
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33626
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 33627
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 33629
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 33633
    iget-object p1, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->replies:Lorg/telegram/tgnet/TLRPC$MessageReplies;

    if-eqz p1, :cond_1

    .line 33634
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->read_max_id:I

    .line 33635
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$MessageReplies;->channel_id:J

    move v7, v0

    move-wide v5, v1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    const-wide/16 v0, 0x0

    move v7, p1

    move-wide v5, v0

    .line 33640
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->access$56000(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;IJIILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public didPressExtendedMediaPreview(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 3

    .line 33337
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method public didPressForkTranscribeButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 32517
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$55600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public didPressHiddenForward(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 1

    .line 32692
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isImportedForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32693
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    .line 32696
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->access$56900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressHint(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 32537
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    .line 32538
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-static {v3, v4, v2}, Lorg/telegram/ui/ChatActivity;->access$55700(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$PollResults;)V

    goto/16 :goto_5

    :cond_0
    if-ne p2, v1, :cond_9

    .line 32540
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 32541
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->psa_type:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 32544
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PsaMessageInfo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->psa_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32545
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32546
    sget v3, Lorg/telegram/messenger/R$string;->PsaMessageInfoDefault:I

    const-string v4, "PsaMessageInfoDefault"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 32548
    :cond_2
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 32549
    invoke-static {v0, v4}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;)V

    .line 32550
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 32552
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_7

    .line 32553
    iget-object v7, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 32554
    iget v7, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v7, v1

    if-eqz v7, :cond_6

    .line 32555
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    if-eq v3, v2, :cond_7

    .line 32558
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_5

    .line 32560
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 32561
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v7, :cond_3

    goto :goto_2

    .line 32564
    :cond_3
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 32565
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/MessageObject;->equals(Lorg/telegram/messenger/MessageObject;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object p1, v6

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 32574
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3, v2, v4, v1}, Lorg/telegram/ui/ChatActivity;->access$55800(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V

    goto :goto_5

    :cond_8
    :goto_4
    return-void

    .line 32576
    :cond_9
    :goto_5
    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->showHintButton(ZZI)V

    return-void
.end method

.method public didPressImage(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 11

    .line 33427
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    .line 33428
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 33429
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$59100(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/tgnet/TLRPC$Message;)I

    move-result v0

    if-ne v0, v10, :cond_1

    .line 33430
    iput-boolean v10, v9, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    goto :goto_0

    .line 33433
    :cond_0
    iput-boolean v10, v9, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 33435
    :cond_1
    :goto_0
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSendError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33436
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFF)Z

    return-void

    .line 33438
    :cond_2
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isSending()Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 33441
    :cond_3
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isDice()Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_6

    .line 33442
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)V

    .line 33443
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_4

    return-void

    .line 33446
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-eq p1, p3, :cond_5

    const/16 p1, 0x10

    goto :goto_1

    :cond_5
    const/16 p1, 0x11

    :goto_1
    move v3, p1

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDiceEmoji()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v9}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 33451
    :cond_6
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isAnimatedAnimatedEmoji()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/EmojiAnimationsOverlay;->supports(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez p2, :cond_8

    :cond_7
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 33452
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ChatActivity;->restartSticker(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 33453
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->emojiAnimationsOverlay:Lorg/telegram/ui/EmojiAnimationsOverlay;

    invoke-virtual {p3, p1, p2, v10}, Lorg/telegram/ui/EmojiAnimationsOverlay;->onTapItem(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/ui/ChatActivity;Z)Z

    .line 33454
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    goto/16 :goto_9

    .line 33455
    :cond_9
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->needDrawBluredPreview()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 33456
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, v9, v0}, Lorg/telegram/ui/ChatActivity;->access$59000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    move-result-object p2

    .line 33457
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    .line 33458
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/SecretMediaViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 33459
    invoke-static {}, Lorg/telegram/ui/SecretMediaViewer;->getInstance()Lorg/telegram/ui/SecretMediaViewer;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatActivity;->access$49300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object p3

    invoke-virtual {p1, v9, p3, p2}, Lorg/telegram/ui/SecretMediaViewer;->openMedia(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 33460
    :cond_a
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 33461
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 33462
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33463
    new-instance p2, Lorg/telegram/ui/Components/EmojiPacksAlert;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {p2, p3, v0, v1, p1}, Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;)V

    .line 33464
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 33465
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    .line 33466
    :cond_b
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    .line 33467
    new-instance p1, Lorg/telegram/ui/Components/StickersAlert;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v5

    const/4 v6, 0x0

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_c

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canSendStickers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_d

    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p2, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    :cond_d
    move-object v7, v1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 33468
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCalcMandatoryInsets(Z)V

    .line 33469
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_9

    .line 33470
    :cond_e
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result p2

    if-nez p2, :cond_26

    iget p2, v9, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq p2, v10, :cond_26

    if-nez p2, :cond_f

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isWebpageDocument()Z

    move-result p2

    if-eqz p2, :cond_26

    :cond_f
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_8

    .line 33472
    :cond_10
    iget p1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_15

    .line 33473
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v9, v10}, Lorg/telegram/ui/ChatActivity;->access$59000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    .line 33476
    :try_start_0
    iget-object p1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_11

    .line 33477
    new-instance v1, Ljava/io/File;

    iget-object p1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_11
    if-eqz v1, :cond_12

    .line 33479
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_13

    .line 33480
    :cond_12
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 33482
    :cond_13
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33483
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x18

    const-string v0, "video/mp4"

    if-lt p2, p3, :cond_14

    .line 33484
    :try_start_1
    invoke-virtual {p1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33485
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".provider"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 33487
    :cond_14
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 33489
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception p1

    .line 33491
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 33492
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v9}, Lorg/telegram/ui/ChatActivity;->access$59200(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_9

    :cond_15
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1b

    .line 33495
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->isMapsInstalled(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 33498
    :cond_16
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->isLiveLocation()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 33499
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_18

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_18

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz p2, :cond_17

    goto :goto_3

    :cond_17
    const/4 p3, 0x6

    :cond_18
    :goto_3
    invoke-direct {p1, p3}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 33500
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 33501
    invoke-virtual {p1, v9}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 33502
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    .line 33504
    :cond_19
    new-instance p1, Lorg/telegram/ui/LocationActivity;

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez p3, :cond_1a

    move v0, p2

    :cond_1a
    invoke-direct {p1, v0}, Lorg/telegram/ui/LocationActivity;-><init>(I)V

    .line 33505
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LocationActivity;->setDelegate(Lorg/telegram/ui/LocationActivity$LocationActivityDelegate;)V

    .line 33506
    invoke-virtual {p1, v9}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 33507
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_9

    :cond_1b
    const/16 p2, 0x9

    if-eq p1, p2, :cond_1c

    if-nez p1, :cond_27

    .line 33510
    :cond_1c
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "attheme"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 33512
    iget-object p1, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 33513
    new-instance p1, Ljava/io/File;

    iget-object p2, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33514
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1d

    goto :goto_4

    :cond_1d
    move-object p1, v1

    :goto_4
    if-nez p1, :cond_1e

    .line 33519
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object p3, v9, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object p2

    .line 33520
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_1e

    move-object p1, p2

    .line 33524
    :cond_1e
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 33526
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p3, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 33529
    :cond_1f
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->access$42702(Lorg/telegram/ui/ChatActivity;I)I

    .line 33534
    :cond_20
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/fork/controller/BackupController;->isBackupFileName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 33535
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$24900(Lorg/telegram/ui/ChatActivity;)V

    .line 33536
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v9}, Lorg/telegram/ui/Components/AlertsCreator;->createRestoreBackupBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move p1, v10

    goto :goto_5

    :cond_21
    move p1, v0

    .line 33540
    :goto_5
    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 33541
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p3, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 33542
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget p2, v9, Lorg/telegram/messenger/MessageObject;->type:I

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_22

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide p2

    goto :goto_6

    :cond_22
    move-wide p2, v3

    :goto_6
    iget v1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v1, :cond_23

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    :cond_23
    move-wide v5, v3

    iget v1, v9, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v1, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getTopicId()I

    move-result v0

    :cond_24
    move v7, v0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$49300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v8

    move-object v0, p1

    move-object v1, v9

    move-wide v3, p2

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/ChatActivity;JJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    goto :goto_7

    :cond_25
    move v10, p1

    :goto_7
    if-nez v10, :cond_27

    .line 33547
    :try_start_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v9, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->openForView(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 33549
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 33550
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v9}, Lorg/telegram/ui/ChatActivity;->access$59200(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_9

    .line 33471
    :cond_26
    :goto_8
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, v9}, Lorg/telegram/ui/ChatActivity;->openPhotoViewerForMessage(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/messenger/MessageObject;)V

    :cond_27
    :goto_9
    return-void
.end method

.method public didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 11

    .line 33558
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 33560
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->showForPoll(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 33562
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz p1, :cond_b

    .line 33563
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 33564
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-ne p2, v1, :cond_3

    .line 33567
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2

    .line 33570
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$59300(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    :cond_2
    move-object v6, v4

    .line 33572
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iget-object v8, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->vcard:Ljava/lang/String;

    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/ChatActivity;->openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 33574
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 33575
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 33576
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz p2, :cond_4

    .line 33577
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/Components/JoinGroupAlert;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->sponsoredChatInvite:Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->sponsoredChatInviteHash:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v5, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/JoinGroupAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_2

    .line 33579
    :cond_4
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-gez p2, :cond_5

    neg-long v1, v4

    const-string p2, "chat_id"

    .line 33581
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    const-string p2, "user_id"

    .line 33583
    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33585
    :goto_0
    iget p2, v0, Lorg/telegram/messenger/MessageObject;->sponsoredChannelPost:I

    if-eqz p2, :cond_6

    const-string v1, "message_id"

    .line 33586
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33588
    :cond_6
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->botStartParam:Ljava/lang/String;

    if-eqz p2, :cond_7

    const-string v0, "inline_query"

    .line 33589
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33591
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 33592
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 33595
    :cond_8
    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p2, :cond_b

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz p2, :cond_b

    .line 33596
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    const/4 v10, 0x2

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/ChatActivity;->access$59400(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;II)Z

    move-result p2

    if-nez p2, :cond_b

    .line 33597
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$59500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_9

    .line 33598
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$59500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->cancel(Z)V

    .line 33600
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    new-instance v4, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$5;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    :goto_1
    invoke-static {p2, v4}, Lorg/telegram/ui/ChatActivity;->access$59502(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/browser/Browser$Progress;)Lorg/telegram/messenger/browser/Browser$Progress;

    .line 33616
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$59500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/messenger/browser/Browser$Progress;

    move-result-object v0

    invoke-static {p1, p2, v1, v1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;ZZLorg/telegram/messenger/browser/Browser$Progress;)V

    :cond_b
    :goto_2
    return-void
.end method

.method public didPressOther(Lorg/telegram/ui/Cells/ChatMessageCell;FF)V
    .locals 16

    move-object/from16 v0, p0

    .line 32701
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 32702
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 32703
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_2

    .line 32704
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideoCall()Z

    move-result v4

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v5, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v7, v8}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    goto :goto_1

    .line 32707
    :cond_1
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v15

    move-object/from16 v10, p1

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/ChatActivity;->access$57000(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZZFFZ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public didPressReaction(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 33067
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_b

    .line 33071
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    :cond_1
    const/4 v10, 0x0

    .line 33072
    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 33073
    new-instance v11, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v0, v2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$2;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;)V

    const/4 v12, -0x2

    .line 33106
    invoke-static {v12, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 33109
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 33110
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const-string v6, "actionBarDefaultSubmenuBackground"

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ChatActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 33111
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 33112
    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33114
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->getReactionButton(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;

    move-result-object v13

    if-nez v13, :cond_2

    return-void

    .line 33118
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    const/16 v14, 0x1c

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 33119
    iget-object v2, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->x:I

    iget v3, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->x:I

    add-int/2addr v2, v3

    int-to-float v15, v2

    const/4 v8, 0x2

    new-array v2, v8, [I

    .line 33121
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 33122
    new-instance v7, Lorg/telegram/ui/Components/ReactedUsersListView;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v2, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$58000(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    const/16 v16, 0x0

    move-object v2, v7

    move-object v14, v7

    move-object/from16 v7, p2

    move v10, v8

    move/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/ReactedUsersListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V

    new-instance v2, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    .line 33123
    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/ReactedUsersListView;->setOnCustomEmojiSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    .line 33136
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ReactedUsersListView;->setOnProfileSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;

    move-result-object v2

    const/16 v3, 0xf0

    .line 33144
    invoke-static {v3, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 33122
    invoke-virtual {v11, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33146
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$4;

    invoke-direct {v3, v0, v11, v12, v12}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$4;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/view/View;II)V

    iput-object v3, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 33167
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 33168
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v4, 0xdc

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 33169
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 33170
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 33171
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v4, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 33172
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/16 v2, 0x3e8

    .line 33173
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v11, v4, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 33174
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 33175
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 33176
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 33178
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    .line 33179
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 33180
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v5

    const/16 v6, 0x14

    .line 33181
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    if-le v5, v6, :cond_3

    add-int/2addr v2, v5

    :cond_3
    const/16 v5, 0x1c

    .line 33185
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    float-to-int v5, v15

    const/4 v6, 0x6

    .line 33186
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v8, v6

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v8, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 33187
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v6, v10, [I

    .line 33189
    iget-object v7, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatActivity;->access$58100(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v7, 0x0

    .line 33190
    aget v6, v6, v7

    add-int/2addr v5, v6

    :cond_4
    if-ge v4, v2, :cond_6

    int-to-float v4, v4

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    cmpg-float v6, v4, v2

    if-gez v6, :cond_5

    .line 33194
    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v7, v7, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget v7, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v2, v6, v2

    if-lez v2, :cond_5

    .line 33195
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    add-float/2addr v2, v6

    iget-object v6, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v6, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    iget v6, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v6, v6

    add-float/2addr v2, v6

    sub-float/2addr v2, v4

    goto :goto_0

    .line 33197
    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v2, v4

    iget-object v4, v1, Lorg/telegram/ui/Cells/ChatMessageCell;->reactionsLayoutInBubble:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;

    iget v4, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble;->y:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->y:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$ReactionButton;->height:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    .line 33200
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$58200(Lorg/telegram/ui/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 33202
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v4, Lorg/telegram/ui/ChatActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    const/16 v7, 0x33

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8, v5}, Lorg/telegram/ui/ChatActivity;->access$58302(Lorg/telegram/ui/ChatActivity;I)I

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8, v2}, Lorg/telegram/ui/ChatActivity;->access$58402(Lorg/telegram/ui/ChatActivity;I)I

    move-result v2

    invoke-virtual {v6, v4, v7, v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 33204
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 33205
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$15100(Lorg/telegram/ui/ChatActivity;)Landroidx/recyclerview/widget/GridLayoutManagerFixed;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManagerFixed;->setCanScrollVertically(Z)V

    .line 33206
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v5, :cond_8

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    :goto_2
    invoke-static {v2, v4}, Lorg/telegram/ui/ChatActivity;->access$30402(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 33207
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v1, v3}, Lorg/telegram/ui/ChatActivity;->access$58500(Lorg/telegram/ui/ChatActivity;Landroid/view/View;Z)V

    .line 33208
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/telegram/ui/ChatActivity;->access$15300(Lorg/telegram/ui/ChatActivity;Z)V

    .line 33209
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 33210
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 33212
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 33213
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 33215
    :cond_a
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 33216
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_c

    .line 33220
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v9

    .line 33221
    iget-object v3, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/ChatActivity;->selectReaction(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;FFLorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZZ)V

    :cond_c
    :goto_3
    return-void
.end method

.method public didPressReplyMessage(Lorg/telegram/ui/Cells/ChatMessageCell;I)V
    .locals 10

    .line 33352
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33356
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33357
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void

    .line 33360
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    .line 33361
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 33365
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0, p1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Lorg/telegram/messenger/MessageObject;)V

    move v3, p2

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/ui/ChatActivity;->scrollToMessageId(IIZIZILjava/lang/Runnable;)V

    goto :goto_2

    .line 33362
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;->openReplyMessage(I)V

    .line 33363
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    :goto_2
    return-void
.end method

.method public didPressSideButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 16

    move-object/from16 v13, p0

    .line 32596
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32599
    :cond_0
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_1

    .line 32600
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    .line 32602
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    .line 32603
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 32604
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;

    move-result-object v0

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;->openReplyMessage(I)V

    .line 32605
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    goto/16 :goto_0

    .line 32606
    :cond_2
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_5

    .line 32607
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v10, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;

    if-eqz v1, :cond_4

    iget v5, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_top_id:I

    if-eqz v5, :cond_4

    .line 32608
    iget-object v2, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, -0x1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_msg_id:I

    move-object v1, v2

    move-wide v2, v3

    move-object v4, v6

    move-wide v6, v7

    move v8, v9

    move v9, v0

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/ChatActivity;->access$56000(Lorg/telegram/ui/ChatActivity;JLorg/telegram/messenger/MessageObject;IJIILorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 32610
    :cond_4
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v10}, Lorg/telegram/ui/ChatActivity;->access$56100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 32614
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 32615
    iget-object v1, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v1

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v1, :cond_6

    .line 32617
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    :cond_6
    if-nez v0, :cond_7

    .line 32621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32622
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v4, v0

    .line 32624
    iget-object v14, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v15, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;

    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$1;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 32647
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$56400(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 32648
    iget-object v0, v13, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$56500(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public didPressTime(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    .line 32671
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)V

    .line 32672
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 32675
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v0

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method public didPressTopicButton(Lorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 4

    .line 33318
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 33320
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result v0

    if-eqz v0, :cond_0

    .line 33322
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33324
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {v1, v2, v3, v0, p1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->openTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;I)V

    :cond_0
    return-void
.end method

.method public didPressUrl(Lorg/telegram/ui/Cells/ChatMessageCell;Landroid/text/style/CharacterStyle;Z)V
    .locals 2

    .line 33289
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-static {v0, p2, p3, v1, p1}, Lorg/telegram/ui/ChatActivity;->access$31400(Lorg/telegram/ui/ChatActivity;Landroid/text/style/CharacterStyle;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method

.method public didPressUserAvatar(Lorg/telegram/ui/Cells/ChatMessageCell;Lorg/telegram/tgnet/TLRPC$User;FF)V
    .locals 2

    .line 32713
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$57100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 32717
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p2, 0xa

    .line 32718
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->didPressInstantButton(Lorg/telegram/ui/Cells/ChatMessageCell;I)V

    return-void

    .line 32721
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->isThreadChat()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->openProfile(Lorg/telegram/tgnet/TLRPC$User;Z)V

    return-void

    .line 32714
    :cond_4
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2, p1, v1, p3, p4}, Lorg/telegram/ui/ChatActivity;->access$3700(Lorg/telegram/ui/ChatActivity;Landroid/view/View;ZFF)V

    return-void
.end method

.method public didPressViaBot(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/String;)V
    .locals 2

    .line 33404
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$17300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$25700(Lorg/telegram/ui/ChatActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return-void

    .line 33407
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    .line 33408
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    .line 33409
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->openKeyboard()V

    :cond_3
    return-void
.end method

.method public didPressViaBotNotInline(Lorg/telegram/ui/Cells/ChatMessageCell;J)V
    .locals 2

    .line 33395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    .line 33396
    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33397
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p2, v0, p3, p1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33398
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method public didPressVoteButtons(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/util/ArrayList;III)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Cells/ChatMessageCell;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_pollAnswer;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    if-gez p3, :cond_1

    .line 33227
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 33264
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v1, v2, v4, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendVote(Lorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/lang/Runnable;)I

    goto/16 :goto_4

    :cond_1
    :goto_0
    move-object/from16 v4, p2

    .line 33228
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 33231
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_4

    .line 33232
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v5, Lorg/telegram/ui/Components/HintView;

    iget-object v6, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x5

    iget-object v8, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v8, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-direct {v5, v6, v7, v8}, Lorg/telegram/ui/Components/HintView;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v1, v5}, Lorg/telegram/ui/ChatActivity;->access$23402(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/HintView;)Lorg/telegram/ui/Components/HintView;

    .line 33233
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 33234
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33235
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    return-void

    .line 33239
    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v5, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x33

    const/16 v10, 0x13

    const/4 v11, 0x0

    const/16 v12, 0x13

    const/4 v13, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 33241
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    if-gez p3, :cond_8

    .line 33242
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPollButtons()Ljava/util/ArrayList;

    move-result-object v1

    .line 33244
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v7, v3

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_6

    .line 33245
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;

    .line 33246
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result v8

    iget v9, v7, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$4500(Lorg/telegram/ui/ChatActivity;)F

    move-result v9

    sub-float/2addr v8, v9

    .line 33247
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v10, v7, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->x:I

    const v11, 0x4154cccd    # 13.3f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Lorg/telegram/ui/ChatActivity;->access$23202(Lorg/telegram/ui/ChatActivity;I)I

    .line 33248
    iget-object v9, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v7, v7, Lorg/telegram/ui/Cells/ChatMessageCell$PollButton;->y:I

    const/4 v10, 0x6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v7, v10

    add-int v7, v7, p5

    invoke-static {v9, v7}, Lorg/telegram/ui/ChatActivity;->access$23302(Lorg/telegram/ui/ChatActivity;I)I

    cmpl-float v7, v8, v3

    if-lez v7, :cond_5

    .line 33251
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23200(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    .line 33252
    iget-object v2, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$23300(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    move v7, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_1

    :cond_6
    move/from16 v1, p4

    move/from16 v2, p5

    :goto_2
    cmpl-float v3, v7, v3

    if-eqz v3, :cond_7

    .line 33257
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    float-to-int v2, v7

    invoke-virtual {v1, v5, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 33258
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    invoke-static {v1, p1}, Lorg/telegram/ui/ChatActivity;->access$23102(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Cells/ChatMessageCell;)Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void

    :cond_7
    move-object v3, p1

    move v5, v1

    move v6, v2

    goto :goto_3

    :cond_8
    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    .line 33262
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$23400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/HintView;->showForMessageCell(Lorg/telegram/ui/Cells/ChatMessageCell;Ljava/lang/Object;IIZ)Z

    :goto_4
    return-void
.end method

.method public didStartVideoStream(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 33415
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33416
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$59000(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public getAdminRank(J)Ljava/lang/String;
    .locals 3

    .line 33645
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_0

    .line 33646
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/telegram/messenger/MessagesController;->getAdminRank(JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 33651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_2

    .line 33652
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->TopicCreator:I

    const-string p2, "TopicCreator"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPinchToZoomHelper()Lorg/telegram/ui/PinchToZoomHelper;
    .locals 1

    .line 33688
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$29500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PinchToZoomHelper;

    move-result-object v0

    return-object v0
.end method

.method public getProgressLoadingBotButtonUrl(Lorg/telegram/ui/Cells/ChatMessageCell;)Ljava/lang/String;
    .locals 1

    .line 33387
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 33388
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48300(Lorg/telegram/ui/ChatActivity;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProgressLoadingLink(Lorg/telegram/ui/Cells/ChatMessageCell;)Landroid/text/style/CharacterStyle;
    .locals 1

    .line 33379
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 33380
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48100(Lorg/telegram/ui/ChatActivity;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTextSelectionHelper()Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;
    .locals 1

    .line 33669
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityTextSelectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public hasSelectedMessages()Z
    .locals 4

    .line 33674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/2addr v0, v2

    if-lez v0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public invalidateBlur()V
    .locals 1

    .line 33702
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->invalidateBlur()V

    return-void
.end method

.method public isAllowForkTranscribe()Z
    .locals 1

    .line 32490
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isSecretChat()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInPreviewMode()Z
    .locals 1

    .line 32495
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$55300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .line 33697
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProgressLoading(Lorg/telegram/ui/Cells/ChatMessageCell;I)Z
    .locals 1

    .line 33374
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$47900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$48000(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isReplyOrSelf()Z
    .locals 1

    .line 32531
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public keyboardIsOpened()Z
    .locals 2

    .line 33693
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$41700(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needDrawTranslateButton(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 3

    .line 32481
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 32482
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->access$3500(Lorg/telegram/ui/ChatActivity;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject;->translated:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lorg/telegram/ui/ChatActivity;->access$55100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 32485
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isMessageQuickTranslateEnabled:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$55200(Lorg/telegram/ui/ChatActivity;)Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method public needOpenWebView(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 12

    move-object v1, p0

    .line 33343
    :try_start_0
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$49300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-result-object v4

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isKeyboardVisible()Z

    move-result v11

    move-object v3, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p2

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v11}, Lorg/telegram/ui/Components/EmbedBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 33345
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public needPlayMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 4

    .line 32654
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 32658
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 32659
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$17200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    invoke-virtual {p2, v1, p1, v2, v3}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;J)Z

    move-result p1

    return p1

    :cond_1
    return v1

    .line 32655
    :cond_2
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result p2

    .line 32656
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    if-eqz p2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, p1, v1}, Lorg/telegram/ui/ChatActivity;->access$56600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Z)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaController;->setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V

    return p2
.end method

.method public needReloadPolls()V
    .locals 1

    .line 33422
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->invalidateMessagesVisiblePart()V

    return-void
.end method

.method public needShowPremiumBulletin(I)V
    .locals 6

    if-nez p1, :cond_1

    .line 33034
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)V

    .line 33035
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 33038
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x54

    const/4 v4, 0x0

    new-instance v5, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;)V

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 33043
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public onAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    .line 33712
    sget p2, Lorg/telegram/messenger/R$id;->acc_action_small_button:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$id;->acc_action_msg_options:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 33713
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$59700(Lorg/telegram/ui/ChatActivity;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    if-eqz v0, :cond_3

    .line 33714
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$59800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 33715
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$59900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->expandPreviewFragment()V

    :cond_2
    return p2

    .line 33719
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->canPerformActions()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method public onDiceFinished()V
    .locals 3

    .line 33679
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33682
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FireworksOverlay;->start()V

    .line 33683
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$37500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/FireworksOverlay;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z

    return-void
.end method

.method public runWithActivationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 32522
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public setShouldNotRepeatSticker(Lorg/telegram/messenger/MessageObject;)V
    .locals 2

    .line 33664
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$59600(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldDrawThreadProgress(Lorg/telegram/ui/Cells/ChatMessageCell;)Z
    .locals 3

    .line 32581
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getCurrentMessagesGroup()Lorg/telegram/messenger/MessageObject$GroupedMessages;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 32583
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32584
    iget-object p1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    goto :goto_0

    .line 32586
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return v1

    .line 32591
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$55900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public shouldRepeatSticker(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    .line 33659
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$59600(Lorg/telegram/ui/ChatActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public shouldShowTopicButton()Z
    .locals 1

    .line 33332
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/ChatActivity;->isTopic:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public videoTimerReached()V
    .locals 1

    .line 32666
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatMessageCellDelegate;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$56700(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
