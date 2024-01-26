.class public final Lorg/telegram/ui/Components/BulletinFactory;
.super Ljava/lang/Object;
.source "BulletinFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BulletinFactory$UndoObject;,
        Lorg/telegram/ui/Components/BulletinFactory$FileType;
    }
.end annotation


# instance fields
.field private final containerLayout:Landroid/widget/FrameLayout;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$6j8NiebGtWo4Ehq9GxXUmw96iLQ(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$2(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$81tQV2p3uMD2j4PQVXfSMpTwk8M(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aW1cj23FJ-XFdshiLtZNAcRp8GM(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$1(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h2XzaL27hRuWFzelBNvh9hOUGQY(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createContainsEmojiBulletin$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vS2jIcRk0f08I4fSuXmm1nlDPPo(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createForwardedBulletin$5(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxar1b_mrJpygjdMy_cs7Mmm3es(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->lambda$createInviteSentBulletin$4(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    return-void
.end method

.method private constructor <init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 174
    iput-object p2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryViewer;->attachedToParent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 162
    iget-object v0, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoryViewer;->getContainerForBulletin()Landroid/widget/FrameLayout;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    .line 163
    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->storyViewer:Lorg/telegram/ui/Stories/StoryViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoryViewer;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    goto :goto_1

    .line 165
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 166
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    :goto_1
    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/BulletinFactory;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 828
    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public static createAddedAsAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 998
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 999
    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserAddedAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserAddedAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1001
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createBanBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 1104
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1107
    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1108
    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    const-string v1, "UserBlocked"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1110
    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Main"

    const-string v2, "Finger 1"

    const-string v3, "Finger 2"

    const-string v4, "Finger 3"

    const-string v5, "Finger 4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1111
    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    const-string v1, "UserUnblocked"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1113
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1114
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 1139
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 1134
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createForwardedBulletin(Landroid/content/Context;Landroid/widget/FrameLayout;IJIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1040
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p6, p7}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    const/16 p0, 0x12c

    const/16 p6, 0x1e

    const/4 p7, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_5

    .line 1044
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, p3, v2

    if-nez p2, :cond_1

    if-gt p5, v1, :cond_0

    .line 1046
    sget p0, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 1048
    :cond_0
    sget p0, Lorg/telegram/messenger/R$string;->FwdMessagesToSavedMessages:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda5;

    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1050
    :goto_0
    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array p3, p7, [Ljava/lang/String;

    invoke-virtual {v0, p2, p6, p6, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    const/4 p2, -0x1

    goto/16 :goto_4

    .line 1052
    :cond_1
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1053
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-gt p5, v1, :cond_2

    .line 1055
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    new-array p4, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object p2, p4, p7

    const-string p2, "FwdMessageToGroup"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 1057
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessagesToGroup:I

    new-array p4, v1, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object p2, p4, p7

    const-string p2, "FwdMessagesToGroup"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 1060
    :cond_3
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-gt p5, v1, :cond_4

    .line 1062
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p7

    const-string p2, "FwdMessageToUser"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 1064
    :cond_4
    sget p3, Lorg/telegram/messenger/R$string;->FwdMessagesToUser:I

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, p7

    const-string p2, "FwdMessagesToUser"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1067
    :goto_1
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, p7, [Ljava/lang/String;

    invoke-virtual {v0, p3, p6, p6, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-gt p5, v1, :cond_6

    new-array p3, p7, [Ljava/lang/Object;

    const-string p4, "FwdMessageToManyChats"

    .line 1072
    invoke-static {p4, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_2

    :cond_6
    new-array p3, p7, [Ljava/lang/Object;

    const-string p4, "FwdMessagesToManyChats"

    .line 1074
    invoke-static {p4, p2, p3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1076
    :goto_2
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, p7, [Ljava/lang/String;

    invoke-virtual {v0, p3, p6, p6, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    :goto_3
    move-object v4, p2

    move p2, p0

    move-object p0, v4

    .line 1079
    :goto_4
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_7

    .line 1081
    new-instance p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    int-to-long p2, p2

    invoke-virtual {v0, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const/16 p0, 0x5dc

    .line 1085
    invoke-static {p1, v0, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createInviteSentBulletin(Landroid/content/Context;Landroid/widget/FrameLayout;IJIII)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1006
    new-instance p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0, p6, p7}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    const/16 p0, 0x12c

    const/4 p6, 0x1

    const/16 p7, 0x1e

    const/4 v0, 0x0

    if-gt p2, p6, :cond_2

    .line 1010
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v1, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, p3, v1

    if-nez p2, :cond_0

    .line 1011
    sget p0, Lorg/telegram/messenger/R$string;->InvLinkToSavedMessages:I

    const-string p2, "InvLinkToSavedMessages"

    invoke-static {p2, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    .line 1012
    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    new-array p3, v0, [Ljava/lang/String;

    invoke-virtual {p5, p2, p7, p7, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    const/4 p2, -0x1

    goto/16 :goto_2

    .line 1014
    :cond_0
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1015
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long p3, p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    .line 1016
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToGroup:I

    new-array p4, p6, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    aput-object p2, p4, v0

    const-string p2, "InvLinkToGroup"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 1018
    :cond_1
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 1019
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToUser:I

    new-array p4, p6, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    const-string p2, "InvLinkToUser"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1021
    :goto_0
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, v0, [Ljava/lang/String;

    invoke-virtual {p5, p3, p7, p7, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_1

    .line 1025
    :cond_2
    sget p3, Lorg/telegram/messenger/R$string;->InvLinkToChats:I

    new-array p4, p6, [Ljava/lang/Object;

    new-array p6, v0, [Ljava/lang/Object;

    const-string v1, "Chats"

    invoke-static {v1, p2, p6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    const-string p2, "InvLinkToChats"

    invoke-static {p2, p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 1026
    sget p3, Lorg/telegram/messenger/R$raw;->forward:I

    new-array p4, v0, [Ljava/lang/String;

    invoke-virtual {p5, p3, p7, p7, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    :goto_1
    move-object v3, p2

    move p2, p0

    move-object p0, v3

    .line 1029
    :goto_2
    iget-object p3, p5, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p2, :cond_3

    .line 1031
    new-instance p0, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;

    invoke-direct {p0, p5}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V

    int-to-long p2, p2

    invoke-virtual {p5, p0, p2, p3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const/16 p0, 0x5dc

    .line 1035
    invoke-static {p1, p5, p0}, Lorg/telegram/ui/Components/Bulletin;->make(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 854
    invoke-static {p0, p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 859
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-string p3, "Hours"

    const-string v1, "NotificationsMutedForHint"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 867
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move p2, v3

    goto :goto_1

    .line 892
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 888
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsUnmutedHint:I

    const-string p2, "NotificationsUnmutedHint"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    move p2, v2

    move v3, p2

    goto :goto_1

    .line 884
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedHint:I

    const-string p2, "NotificationsMutedHint"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 880
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v3, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "Days"

    invoke-static {v5, p3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 876
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v3, [Ljava/lang/Object;

    const/16 v4, 0x8

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 872
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsMutedForHint:I

    new-array p2, v3, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p3, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v1, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move p2, v3

    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 896
    sget p2, Lorg/telegram/messenger/R$raw;->mute_for:I

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    .line 898
    sget p2, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p3, "Body Main"

    const-string v1, "Body Top"

    const-string v2, "Line"

    const-string v3, "Curve Big"

    const-string v4, "Curve Small"

    filled-new-array {p3, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_2

    .line 900
    :cond_7
    sget p2, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p3, "BODY"

    const-string v1, "Wibe Big"

    const-string v2, "Wibe Big 3"

    const-string v3, "Wibe Small"

    filled-new-array {p3, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 903
    :goto_2
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 904
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 909
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 910
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NotificationsMutedHintChats"

    .line 912
    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "NotificationsUnmutedHintChats"

    .line 913
    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 910
    :goto_0
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 916
    sget p1, Lorg/telegram/messenger/R$raw;->ic_mute:I

    const-string p2, "Body Main"

    const-string p3, "Body Top"

    const-string v1, "Line"

    const-string v2, "Curve Big"

    const-string v3, "Curve Small"

    filled-new-array {p2, p3, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    .line 918
    :cond_1
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unmute:I

    const-string p2, "BODY"

    const-string p3, "Wibe Big"

    const-string v1, "Wibe Big 3"

    const-string v2, "Wibe Small"

    filled-new-array {p2, p3, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    :goto_1
    const/16 p1, 0x5dc

    .line 920
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    const/4 v0, 0x0

    .line 925
    invoke-static {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 1144
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private static createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 1154
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1155
    sget v1, Lorg/telegram/messenger/R$raw;->ic_pin:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    :goto_0
    const-string v2, "Pin"

    const-string v3, "Line"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-le p5, v1, :cond_1

    .line 1158
    iget-object v2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->plural_messages_pinned:I

    invoke-static {v3, p5}, Lorg/telegram/messenger/LocaleController;->formatPluralStringInternal(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1160
    :cond_1
    iget-object p5, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_2

    const-string v2, "MessagePinnedHint"

    goto :goto_1

    :cond_2
    const-string v2, "MessageUnpinnedHint"

    :goto_1
    if-eqz p1, :cond_3

    sget v3, Lorg/telegram/messenger/R$string;->MessagePinnedHint:I

    goto :goto_2

    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->MessageUnpinnedHint:I

    :goto_2
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez p1, :cond_4

    .line 1162
    new-instance p5, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p5, v2, v1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p5, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_4
    if-eqz p1, :cond_5

    const/16 p1, 0x5dc

    goto :goto_4

    :cond_5
    const/16 p1, 0x1388

    .line 1164
    :goto_4
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createPromoteToAdminBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 990
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 991
    sget v1, Lorg/telegram/messenger/R$raw;->ic_admin:I

    const-string v2, "Shield"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 992
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->UserSetAsAdminHint:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "UserSetAsAdminHint"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 993
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 1090
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1091
    sget v1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v2, "Hand"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1093
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$User;->deleted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1094
    sget p1, Lorg/telegram/messenger/R$string;->HiddenName:I

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "HiddenName"

    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1096
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1098
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v3, Lorg/telegram/messenger/R$string;->UserRemovedFromChatHint:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const-string p1, "UserRemovedFromChatHint"

    invoke-static {p1, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1099
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;IZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 985
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-le p1, v0, :cond_0

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_2
    sget-object p2, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p2, p1, p3, p4}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZII)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 980
    invoke-static {p0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Landroid/widget/FrameLayout;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 975
    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSaveToGalleryBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 0

    .line 970
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->VIDEO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->PHOTO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createSoundEnabledBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 1169
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    .line 1180
    sget p1, Lorg/telegram/messenger/R$string;->SoundOffHint:I

    const-string p2, "SoundOffHint"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    move p2, v1

    goto :goto_0

    .line 1184
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1176
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->SoundOnHint:I

    const-string v2, "SoundOnHint"

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_2

    .line 1188
    sget p2, Lorg/telegram/messenger/R$raw;->sound_on:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    goto :goto_1

    .line 1190
    :cond_2
    sget p2, Lorg/telegram/messenger/R$raw;->sound_off:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1193
    :goto_1
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1194
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinAllMessagesBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;IZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 938
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 940
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 952
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 953
    sget v1, Lorg/telegram/messenger/R$raw;->ic_unpin:I

    const-string v2, "Pin"

    const-string v3, "Line"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 954
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "MessagesUnpinned"

    invoke-static {v4, p1, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_2

    .line 957
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget p2, Lorg/telegram/messenger/R$string;->pinned_messages_pin_panel_hidden_bulletin:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 959
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 964
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    .line 965
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method public static createUnpinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1149
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 838
    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLayoutContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 841
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->containerLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 842
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 845
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    :cond_3
    return-object v0
.end method

.method public static global()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 2

    .line 68
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$0(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 611
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$1(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V
    .locals 0

    .line 629
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/Bulletin;->onLoaded(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$2(ILorg/telegram/ui/Components/Bulletin;JLorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 4

    if-eqz p4, :cond_2

    .line 617
    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-eqz p4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 619
    sget p0, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object p4, v1, v0

    const-string p4, "TopicContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    .line 621
    sget p0, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object p4, v1, v0

    const-string p4, "StoryContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 623
    :cond_1
    sget p0, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object p4, v1, v0

    const-string p4, "MessageContainsEmojiPackSingle"

    invoke-static {p4, p0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    goto :goto_0

    .line 626
    :cond_2
    sget p0, Lorg/telegram/messenger/R$string;->AddEmojiNotFound:I

    const-string p4, "AddEmojiNotFound"

    invoke-static {p4, p0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 628
    :goto_0
    new-instance p4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;

    invoke-direct {p4, p1, p0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Bulletin;Ljava/lang/CharSequence;)V

    const-wide/16 p0, 0x1

    const-wide/16 v0, 0x2ee

    .line 630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    sub-long/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 628
    invoke-static {p4, p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$createContainsEmojiBulletin$3(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .locals 0

    .line 642
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$createForwardedBulletin$5(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1082
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z

    return-void
.end method

.method private static synthetic lambda$createInviteSentBulletin$4(Lorg/telegram/ui/Components/Bulletin$LottieLayout;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1032
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z

    return-void
.end method

.method public static of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 57
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public static of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;
    .locals 1

    .line 53
    new-instance v0, Lorg/telegram/ui/Components/BulletinFactory;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/BulletinFactory;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method


# virtual methods
.method public createBanBulletin(Z)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    .line 1119
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_0

    .line 1122
    sget p1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    const-string v1, "Hand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1123
    sget p1, Lorg/telegram/messenger/R$string;->UserBlocked:I

    const-string v1, "UserBlocked"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1125
    :cond_0
    sget p1, Lorg/telegram/messenger/R$raw;->ic_unban:I

    const-string v1, "Main"

    const-string v2, "Finger 1"

    const-string v3, "Finger 2"

    const-string v4, "Finger 3"

    const-string v5, "Finger 4"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 1126
    sget p1, Lorg/telegram/messenger/R$string;->UserUnblocked:I

    const-string v1, "UserUnblocked"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1128
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 1129
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCaptionLimitBulletin(ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    .line 716
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 717
    sget v1, Lorg/telegram/messenger/R$raw;->caption_limit:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "ChannelCaptionLimitPremiumPromo"

    .line 718
    invoke-static {v3, p1, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v3, 0x2a

    .line 720
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 721
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, v6, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 722
    new-instance p1, Lorg/telegram/ui/Components/BulletinFactory$1;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/BulletinFactory$1;-><init>(Lorg/telegram/ui/Components/BulletinFactory;Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, -0x1

    const/16 p2, 0x21

    invoke-virtual {v1, p1, v4, v3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 734
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 735
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 736
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    .line 737
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createChatsBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/telegram/ui/Components/Bulletin;"
        }
    .end annotation

    .line 428
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz p1, :cond_5

    move v1, v2

    move v4, v1

    .line 431
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    goto :goto_2

    .line 434
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLObject;

    if-eqz v5, :cond_2

    .line 436
    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 437
    iget-object v6, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v7, v4, -0x1

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v6, v7, v8, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 441
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 442
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 443
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    .line 445
    :cond_4
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 446
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_5
    move v4, v2

    .line 449
    :goto_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    if-eqz p3, :cond_7

    .line 452
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 453
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 454
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 457
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 458
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    .line 459
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 460
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    .line 461
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 463
    :cond_6
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 467
    :cond_7
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 468
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 469
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_9

    rsub-int/lit8 p1, v4, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x4a

    .line 471
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    .line 472
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_8

    .line 473
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 475
    :cond_8
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 479
    :cond_9
    :goto_4
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p1, :cond_a

    .line 480
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    sub-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0xc

    rsub-int/lit8 p2, v4, 0x20

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    const/16 p1, 0x1388

    .line 483
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createContainsEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;ILorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/ui/Components/Bulletin;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            "I",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Lorg/telegram/tgnet/TLRPC$InputStickerSet;",
            ">;)",
            "Lorg/telegram/ui/Components/Bulletin;"
        }
    .end annotation

    .line 585
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 589
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v2

    const-string v4, "ViewAction"

    const-string v5, "StoryContainsEmojiPackSingle"

    const-string v6, "MessageContainsEmojiPackSingle"

    const-string v7, "TopicContainsEmojiPackSingle"

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    .line 590
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    .line 636
    sget p2, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v7, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-ne p2, v8, :cond_3

    .line 638
    sget p2, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v5, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_0

    .line 640
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v6, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 642
    :goto_0
    sget v1, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    const-string v2, "<{LOADING}>"

    if-ne p2, v3, :cond_5

    .line 594
    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v6, Lorg/telegram/messenger/R$string;->TopicContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v7, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne p2, v8, :cond_6

    .line 596
    new-instance v6, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->StoryContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v5, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v5, v6

    goto :goto_2

    .line 598
    :cond_6
    new-instance v5, Landroid/text/SpannableStringBuilder;

    sget v7, Lorg/telegram/messenger/R$string;->MessageContainsEmojiPackSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v6, v7, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 602
    :goto_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7

    .line 603
    new-instance v3, Lorg/telegram/ui/Components/LoadingSpan;

    const/16 v6, 0x64

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v6, v7, v8}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    add-int/lit8 v6, v2, 0xb

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v2, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    iget-object v6, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 605
    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    const/16 v7, 0x20

    invoke-static {v6, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 606
    invoke-static {v2, v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/16 v7, 0x48

    invoke-static {v2, v7}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    .line 604
    invoke-virtual {v3, v6, v2}, Lorg/telegram/ui/Components/LoadingSpan;->setColors(II)V

    goto :goto_3

    :cond_7
    move-object v3, v1

    .line 609
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 611
    sget v2, Lorg/telegram/messenger/R$string;->ViewAction:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3, v0}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    invoke-virtual {p0, p1, v5, v2, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    if-eqz v3, :cond_8

    .line 612
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    if-eqz p3, :cond_8

    .line 613
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->getLayout()Lorg/telegram/ui/Components/Bulletin$Layout;

    move-result-object p3

    check-cast p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    iget-object p3, p3, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v3, p3}, Lorg/telegram/ui/Components/LoadingSpan;->setView(Landroid/view/View;)V

    .line 615
    :cond_8
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p3

    new-instance v2, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;

    invoke-direct {v2, p2, p1, v6, v7}, Lorg/telegram/ui/Components/BulletinFactory$$ExternalSyntheticLambda6;-><init>(ILorg/telegram/ui/Components/Bulletin;J)V

    invoke-virtual {p3, v0, v1, v9, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 782
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 787
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p2

    if-nez p2, :cond_0

    .line 788
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 790
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 791
    sget v0, Lorg/telegram/messenger/R$raw;->copy:I

    const-string v1, "NULL ROTATION"

    const-string v2, "Back"

    const-string v3, "Front"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {p2, v0, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 792
    iget-object v0, p2, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 793
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 777
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createCopyLinkBulletin(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 817
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    .line 820
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 821
    sget p2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    const-string v1, "Wibe"

    const-string v2, "Circle"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, p2, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 822
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 823
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createCopyLinkBulletin(ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 798
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Bulletin$EmptyBulletin;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "LinkCopied"

    const-string v1, "Circle"

    const-string v2, "Wibe"

    const/16 v3, 0x24

    if-eqz p1, :cond_1

    .line 802
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4, p2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 803
    sget p2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v3, v3, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 804
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v0, Lorg/telegram/messenger/R$string;->LinkCopiedPrivateInfo:I

    const-string v1, "LinkCopiedPrivateInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xabe

    .line 806
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1

    .line 808
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 809
    sget p2, Lorg/telegram/messenger/R$raw;->voip_invite:I

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v3, v3, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 810
    iget-object p2, p1, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->LinkCopied:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x5dc

    .line 811
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;III)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 670
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 677
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p5, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    goto :goto_0

    .line 679
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v0, p3, p5}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 681
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$100(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$200(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 682
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$300(Lorg/telegram/ui/Components/BulletinFactory$FileType;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$400(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 684
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType;->access$000(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;->access$400(Lorg/telegram/ui/Components/BulletinFactory$FileType$Icon;)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setIconPaddingBottom(I)V

    :cond_1
    const/16 p1, 0x5dc

    .line 686
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 658
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;IIILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x1

    .line 653
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 520
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 521
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 524
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 525
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 527
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 528
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 529
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 547
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 548
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 551
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 552
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 553
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 555
    :cond_1
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 p2, 0x41600000    # 14.0f

    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 557
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 558
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 559
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    .line 560
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createEmojiLoadingBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 564
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 565
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 568
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 569
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 570
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 572
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 574
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 575
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LoadingLottieLayout;->textLoadingView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 576
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    .line 577
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 694
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 695
    sget p2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 696
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 698
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    .line 699
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createErrorBulletinSubtitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 2

    .line 768
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 769
    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 770
    iget-object p3, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 772
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createImageBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 191
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 192
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$Layout;->setBackground(II)V

    .line 193
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 194
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 196
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 197
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 198
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {p2, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 199
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 200
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setWrapWidth()V

    const/16 p1, 0x1388

    .line 201
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createReportSent(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 662
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 663
    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 664
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v1, Lorg/telegram/messenger/R$string;->ReportChatSent:I

    const-string v2, "ReportChatSent"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x5dc

    .line 665
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 741
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 742
    sget v1, Lorg/telegram/messenger/R$raw;->voip_muted:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 743
    sget v1, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesPremiumOnly:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 744
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v4, 0x2a

    .line 745
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v5, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    .line 747
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v6, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 748
    new-instance v1, Lorg/telegram/ui/Components/BulletinFactory$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/BulletinFactory$2;-><init>(Lorg/telegram/ui/Components/BulletinFactory;)V

    add-int/lit8 v4, v4, -0x1

    const/16 v6, 0x21

    invoke-virtual {v3, v1, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 761
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 763
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0xabe

    .line 764
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    return-object v0
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/16 v0, 0x24

    .line 178
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 216
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 217
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 219
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    .line 221
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v1

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    const-string v7, " "

    .line 223
    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 221
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 228
    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 231
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_4

    const/16 p1, 0x5dc

    goto :goto_2

    :cond_4
    const/16 p1, 0xabe

    :goto_2
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;II)Lorg/telegram/ui/Components/Bulletin;
    .locals 8

    .line 236
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 237
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 239
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    instance-of v2, p2, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v3, 0xa

    .line 241
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v5, v1

    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    if-lt v5, p3, :cond_1

    add-int/lit8 v6, v4, 0x1

    const-string v7, " "

    .line 243
    invoke-virtual {v2, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 241
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_2
    move-object p2, v2

    .line 248
    :cond_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 250
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 251
    invoke-direct {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 255
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    .line 256
    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 257
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 276
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 278
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 283
    :goto_0
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 284
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 285
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 286
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 287
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v3, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    .line 289
    invoke-direct {p0, v0, p4}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 267
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/16 v2, 0x24

    .line 268
    invoke-virtual {v0, p1, v2, v2, v1}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 269
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    .line 272
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 7

    .line 263
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_0
    const/16 v0, 0xabe

    :goto_0
    move v5, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 303
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 304
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 307
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 308
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 328
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 329
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->titleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLottieLayout;->subtitleTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0xabe

    .line 333
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleBulletinWithIconSize(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 182
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 183
    invoke-virtual {v0, p1, p3, p3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(III[Ljava/lang/String;)V

    .line 184
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 186
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 187
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x14

    if-ge p1, p2, :cond_0

    const/16 p1, 0x5dc

    goto :goto_0

    :cond_0
    const/16 p1, 0xabe

    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSimpleLargeBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 205
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 206
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    .line 207
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 211
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$TwoLineLayout;->subtitleTextView:Landroid/widget/TextView;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x1388

    .line 212
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createStaticEmojiBulletin(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5

    .line 533
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 534
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const/16 v3, 0x24

    .line 537
    invoke-virtual {v0, p1, v3, v3, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(Lorg/telegram/tgnet/TLRPC$Document;II[Ljava/lang/String;)V

    .line 538
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->stopAnimation()V

    .line 539
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 542
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0xabe

    .line 543
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1

    const/4 v0, 0x0

    .line 703
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createSuccessBulletin(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;
    .locals 3

    .line 707
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 708
    sget p2, Lorg/telegram/messenger/R$raw;->contact_check:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 709
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 711
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 p1, 0x5dc

    .line 712
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUndoBulletin(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin;
    .locals 4

    .line 346
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 347
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 349
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 350
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setTimer()V

    .line 351
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3, v2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v1, Lorg/telegram/messenger/R$string;->Undo:I

    const-string v2, "Undo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    const/16 p1, 0x1388

    .line 352
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersAddedBulletin(Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Bulletin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ")",
            "Lorg/telegram/ui/Components/Bulletin;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 488
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 490
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 491
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    const-string v0, "**"

    if-eqz p2, :cond_1

    .line 492
    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToChannel:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "HasBeenAddedToChannel"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 494
    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->HasBeenAddedToGroup:I

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "HasBeenAddedToGroup"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 497
    :cond_2
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 498
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "AddedMembersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    .line 500
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "AddedSubscribersToChannel"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    .line 503
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lorg/telegram/ui/Components/Bulletin;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public createUsersBulletin(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/telegram/ui/Components/BulletinFactory$UndoObject;)Lorg/telegram/ui/Components/Bulletin;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/ui/Components/BulletinFactory$UndoObject;",
            ")",
            "Lorg/telegram/ui/Components/Bulletin;"
        }
    .end annotation

    .line 360
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/ui/Components/Bulletin$UsersLayout;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x4

    if-eqz p1, :cond_5

    move v4, v2

    move v5, v4

    .line 363
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    const/4 v6, 0x3

    if-lt v5, v6, :cond_1

    goto :goto_2

    .line 366
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    if-eqz v6, :cond_2

    .line 368
    iget-object v7, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Components/AvatarsImageView;->setCount(I)V

    .line 369
    iget-object v7, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    add-int/lit8 v8, v5, -0x1

    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v7, v8, v9, v6}, Lorg/telegram/ui/Components/AvatarsImageView;->setObject(IILorg/telegram/tgnet/TLObject;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_4

    .line 373
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 374
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 375
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    .line 377
    :cond_4
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 378
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleY(F)V

    goto :goto_3

    :cond_5
    move v5, v2

    .line 381
    :goto_3
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AvatarsImageView;->commitTransition(Z)V

    if-eqz p3, :cond_8

    .line 385
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 386
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 387
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 390
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 391
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_b

    rsub-int/lit8 p1, v5, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x46

    .line 392
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ne v5, v3, :cond_6

    .line 394
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 396
    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_7

    .line 397
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 399
    :cond_7
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_4

    .line 403
    :cond_8
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 404
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 405
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object p1, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_b

    rsub-int/lit8 p1, v5, 0x3

    mul-int/lit8 p1, p1, 0xc

    rsub-int/lit8 p1, p1, 0x46

    .line 407
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ne v5, v3, :cond_9

    .line 409
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 410
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 412
    :cond_9
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_a

    .line 413
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 415
    :cond_a
    iget-object p2, v0, Lorg/telegram/ui/Components/Bulletin$UsersLayout;->textView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_b
    :goto_4
    if-eqz p4, :cond_c

    .line 421
    new-instance p1, Lorg/telegram/ui/Components/Bulletin$UndoButton;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BulletinFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/BulletinFactory;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v3, p3}, Lorg/telegram/ui/Components/Bulletin$UndoButton;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p2, Lorg/telegram/messenger/R$string;->Undo:I

    const-string p3, "Undo"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    iget-object p2, p4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onUndo:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setUndoAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    iget-object p2, p4, Lorg/telegram/ui/Components/BulletinFactory$UndoObject;->onAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Bulletin$UndoButton;->setDelayedAction(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/Bulletin$UndoButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Bulletin$ButtonLayout;->setButton(Lorg/telegram/ui/Components/Bulletin$Button;)V

    :cond_c
    const/16 p1, 0x1388

    .line 424
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->create(Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    return-object p1
.end method

.method public showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 76
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_0

    .line 79
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->UnknownError:I

    const-string v0, "UnknownError"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :goto_0
    return-void
.end method
