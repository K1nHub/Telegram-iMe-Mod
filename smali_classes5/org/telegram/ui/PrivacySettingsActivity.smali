.class public Lorg/telegram/ui/PrivacySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PrivacySettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
    }
.end annotation


# instance fields
.field private advancedSectionRow:I

.field private archiveChats:Z

.field private autoDeleteMesages:I

.field private bioRow:I

.field private blockedRow:I

.field private botsAndWebsitesShadowRow:I

.field private botsDetailRow:I

.field private botsSectionRow:I

.field private callsRow:I

.field private clear:[Z

.field private contactsDeleteRow:I

.field private contactsDetailRow:I

.field private contactsSectionRow:I

.field private contactsSuggestRow:I

.field private contactsSyncRow:I

.field private currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

.field private currentSuggest:Z

.field private currentSync:Z

.field private customScreenType:I

.field private deleteAccountDetailRow:I

.field private deleteAccountRow:I

.field private deleteAccountUpdate:Z

.field private devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

.field private emailLoginRow:I

.field private forwardsRow:I

.field private groupsDetailRow:I

.field private groupsRow:I

.field private lastSeenRow:I

.field private listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private newChatsHeaderRow:I

.field private newChatsRow:I

.field private newChatsSectionRow:I

.field private newSuggest:Z

.field private newSync:Z

.field private passcodeArchiveRow:I

.field private passcodeCloudRow:I

.field private passcodeRow:I

.field private passportRow:I

.field private passwordRow:I

.field private paymentsClearRow:I

.field private phoneNumberRow:I

.field private privacySectionRow:I

.field private privacyShadowRow:I

.field private profilePhotoRow:I

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private rowCount:I

.field private secretDetailRow:I

.field private secretMapRow:I

.field private secretMapUpdate:Z

.field private secretSectionRow:I

.field private secretWebpageRow:I

.field private securitySectionRow:I

.field private sessionsDetailRow:I

.field private sessionsRow:I

.field private voicesRow:I

.field private webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

.field private webSessionsRow:I


# direct methods
.method public static synthetic $r8$lambda$2Muso-Zpt2bSxf45TLxRqo6JUTQ(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ZSmqL4pBXc39hMUJeg-G8LOZZ8(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7GpenKo66x3X61fBl5lfPDKlBks(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$7cwFQpa4UknO2rk7V8hcb1ligrU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentDestroy$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8pdBsblZl9_kPlSQHmd1eGaWGzU(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ADauZYLFRr7n0eYlHlUC5HOrEn0(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHGeiT8E8r8hZQNlpGPSSNVQchY(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NEHDVBCYR5lGlSqQygBBpqaDR8o(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P6weEDD_ppdkVSDURyjXWZcXXM0(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$11(Lorg/telegram/ui/Cells/TextCheckCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QsMqilggKHjTsat_FYQXvb3QQbM(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPWds3x9MVyYoUbu499JzH6ZHng(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_iG2ZvB5lt0xRCk-9BCiZWpxX2U(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$18(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a_zH4FyHK3HiOUFFYAzCyFgpssI(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$dbp7kBKenX7aNeLlYpOdR8C6-AI(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e7cBBaJ-3ixfEMf6266v6pyiXN8(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$13(Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCom5AnOVY7xn_PRwv5OLVdd3zg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oQ2bR119pKL_X8xaN5K__nqpwZE(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$pC7MefsXf4pM15_kp8iU4s2ZhjQ(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$20(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tFLSilrV1BIQwspDklFIaaM_Nkw(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$19(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGOT6cC8SGaZUuIFU25Nv7WGE3Q(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yEPDyoAX53DoWbT1NpvK2881XQo(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ycLkP3Vk2N-aq4zZ3RvUga3k9FQ(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacySettingsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array p1, p1, [Z

    .line 154
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return p0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/SessionsActivity;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method public static formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;
    .locals 16

    move/from16 v0, p1

    .line 843
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "P2PNobody"

    const-string v3, "LastSeenNobody"

    const/4 v4, 0x3

    if-eqz v1, :cond_1e

    .line 844
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v5

    move v7, v6

    move v9, v7

    move v10, v9

    .line 854
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v7, v11, :cond_a

    .line 855
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 856
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    if-eqz v14, :cond_2

    .line 857
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    .line 858
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v6

    :goto_1
    if-ge v13, v12, :cond_9

    .line 859
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    if-nez v14, :cond_1

    goto :goto_2

    .line 863
    :cond_1
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v10, v14

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 865
    :cond_2
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    if-eqz v14, :cond_4

    .line 866
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    .line 867
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v6

    :goto_3
    if-ge v13, v12, :cond_9

    .line 868
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v15, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v14

    if-nez v14, :cond_3

    goto :goto_4

    .line 872
    :cond_3
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v9, v14

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 874
    :cond_4
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v14, :cond_5

    .line 875
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .line 876
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    .line 877
    :cond_5
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v14, :cond_6

    .line 878
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .line 879
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_5

    :cond_6
    if-ne v8, v5, :cond_9

    .line 881
    instance-of v8, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v8, :cond_7

    move v8, v6

    goto :goto_5

    .line 883
    :cond_7
    instance-of v8, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v8, :cond_8

    move v8, v13

    goto :goto_5

    :cond_8
    move v8, v12

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_a
    if-eqz v8, :cond_1a

    if-ne v8, v5, :cond_b

    if-lez v9, :cond_b

    goto/16 :goto_8

    :cond_b
    if-eq v8, v12, :cond_12

    if-ne v8, v5, :cond_c

    if-lez v9, :cond_c

    if-lez v10, :cond_c

    goto :goto_7

    :cond_c
    if-eq v8, v13, :cond_e

    if-lez v10, :cond_d

    goto :goto_6

    :cond_d
    const-string v0, "unknown"

    return-object v0

    :cond_e
    :goto_6
    if-ne v0, v4, :cond_10

    if-nez v10, :cond_f

    .line 933
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 935
    :cond_f
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobodyPlus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "P2PNobodyPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    if-nez v10, :cond_11

    .line 939
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 941
    :cond_11
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobodyPlus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "LastSeenNobodyPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    :goto_7
    if-ne v0, v4, :cond_16

    if-nez v10, :cond_13

    if-nez v9, :cond_13

    .line 907
    sget v0, Lorg/telegram/messenger/R$string;->P2PContacts:I

    const-string v1, "P2PContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    if-eqz v10, :cond_14

    if-eqz v9, :cond_14

    .line 910
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsMinusPlus:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, "P2PContactsMinusPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    if-eqz v9, :cond_15

    .line 912
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "P2PContactsMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 914
    :cond_15
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsPlus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "P2PContactsPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    if-nez v10, :cond_17

    if-nez v9, :cond_17

    .line 919
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContacts:I

    const-string v1, "LastSeenContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-eqz v10, :cond_18

    if-eqz v9, :cond_18

    .line 922
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsMinusPlus:I

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    const-string v2, "LastSeenContactsMinusPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    if-eqz v9, :cond_19

    .line 924
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "LastSeenContactsMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 926
    :cond_19
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsPlus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "LastSeenContactsPlus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    :goto_8
    if-ne v0, v4, :cond_1c

    if-nez v9, :cond_1b

    .line 893
    sget v0, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    const-string v1, "P2PEverybody"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 895
    :cond_1b
    sget v0, Lorg/telegram/messenger/R$string;->P2PEverybodyMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "P2PEverybodyMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    if-nez v9, :cond_1d

    .line 899
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    const-string v1, "LastSeenEverybody"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 901
    :cond_1d
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybodyMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "LastSeenEverybodyMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_9
    if-ne v0, v4, :cond_1f

    .line 846
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 848
    :cond_1f
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPassword()V
    .locals 6

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 795
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    if-eqz v0, :cond_0

    .line 796
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    .line 797
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 798
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    goto :goto_3

    .line 800
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz v0, :cond_5

    .line 801
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 802
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    if-ne v3, v4, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez v0, :cond_2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v5, :cond_3

    if-eqz v1, :cond_5

    .line 806
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    .line 808
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_5

    if-eqz v5, :cond_4

    .line 810
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    .line 812
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 818
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_6

    .line 819
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private isContactsType()Z
    .locals 2

    .line 89
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->customScreenType:I

    sget v1, Lcom/iMe/common/IdFabric$CustomType;->CONTACTS_PRIVACY_SETTINGS:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$10(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 492
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 493
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 494
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 496
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    if-eq p1, v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 498
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->deleteAllContacts(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 1

    .line 522
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    .line 523
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 521
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$13(Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 516
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 517
    iget-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v0, p3, v0

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v0, 0x0

    .line 518
    aget-boolean p3, p3, v0

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 519
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    const/4 v1, 0x0

    iput-object v1, p3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 521
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$14()V
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return-void
.end method

.method private synthetic lambda$createView$15(Landroid/view/View;)V
    .locals 4

    .line 576
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 577
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 578
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean v2, v1, v0

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 579
    aget-boolean v0, v1, v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private static synthetic lambda$createView$16(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$17(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 594
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 595
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v1, p2, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v1, 0x0

    .line 596
    aget-boolean p2, p2, v1

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 597
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 598
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 599
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean p2, p1, v1

    if-eqz p2, :cond_0

    aget-boolean p2, p1, v0

    if-eqz p2, :cond_0

    .line 604
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentShippingCleared:I

    const-string p2, "PrivacyPaymentsPaymentShippingCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 605
    :cond_0
    aget-boolean p2, p1, v1

    if-eqz p2, :cond_1

    .line 606
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsShippingInfoCleared:I

    const-string p2, "PrivacyPaymentsShippingInfoCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 607
    :cond_1
    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2

    .line 608
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentInfoCleared:I

    const-string p2, "PrivacyPaymentsPaymentInfoCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 612
    :goto_0
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 584
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 588
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 590
    :cond_0
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    const-string v0, "PrivacyPaymentsClearAlertTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 592
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlert:I

    const-string v0, "PrivacyPaymentsClearAlert"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 593
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v0, "ClearButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 614
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 615
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 616
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 617
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 618
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 620
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$19(Landroid/content/Context;Landroid/view/View;I)V
    .locals 11

    .line 301
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    if-eq p3, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_1
    :goto_0
    if-ne p3, v0, :cond_2

    .line 302
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    .line 303
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 308
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    if-ne p3, v0, :cond_4

    .line 309
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v0

    if-ltz v0, :cond_4

    .line 310
    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 312
    :cond_4
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-ne p3, v0, :cond_5

    .line 313
    new-instance p1, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 314
    :cond_5
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ne p3, v0, :cond_6

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resetFragment()V

    .line 316
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 317
    :cond_6
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    if-ne p3, v0, :cond_7

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resetFragment()V

    .line 319
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 320
    :cond_7
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    const/4 v1, 0x6

    const-string v2, "Cancel"

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p3, v0, :cond_e

    .line 321
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 324
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_9

    move p1, v7

    goto :goto_2

    :cond_9
    const/16 p2, 0x5d

    if-gt p1, p2, :cond_a

    move p1, v8

    goto :goto_2

    :cond_a
    const/16 p2, 0xb6

    if-gt p1, p2, :cond_b

    move p1, v4

    goto :goto_2

    :cond_b
    move p1, v3

    .line 335
    :goto_2
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    sget p3, Lorg/telegram/messenger/R$string;->DeleteAccountTitle:I

    const-string v0, "DeleteAccountTitle"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array p3, v5, [Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/Object;

    const-string v9, "Months"

    .line 338
    invoke-static {v9, v8, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v7

    new-array v0, v7, [Ljava/lang/Object;

    .line 339
    invoke-static {v9, v3, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    new-array v0, v7, [Ljava/lang/Object;

    .line 340
    invoke-static {v9, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "Years"

    .line 341
    invoke-static {v1, v8, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    .line 343
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 344
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 345
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move v1, v7

    :goto_3
    if-ge v1, v5, :cond_d

    .line 348
    new-instance v3, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v4, v7, v9, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 351
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_radioBackground:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogRadioBackgroundChecked:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-virtual {v3, v4, v9}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 352
    aget-object v4, p3, v1

    if-ne p1, v1, :cond_c

    move v9, v8

    goto :goto_4

    :cond_c
    move v9, v7

    :goto_4
    invoke-virtual {v3, v4, v9}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 353
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 354
    new-instance v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 389
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 390
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_b

    .line 391
    :cond_e
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    if-ne p3, v0, :cond_f

    .line 392
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v7}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 393
    :cond_f
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    if-ne p3, v0, :cond_10

    .line 394
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 395
    :cond_10
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    if-ne p3, v0, :cond_11

    .line 396
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v8}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 397
    :cond_11
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    if-ne p3, v0, :cond_12

    .line 398
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v4}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 399
    :cond_12
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    if-ne p3, v0, :cond_13

    .line 400
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v5}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 401
    :cond_13
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    if-ne p3, v0, :cond_14

    .line 402
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 403
    :cond_14
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    const/4 v9, 0x5

    if-ne p3, v0, :cond_15

    .line 404
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v9}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 405
    :cond_15
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    if-ne p3, v0, :cond_17

    .line 406
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_16

    .line 408
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 410
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 412
    :goto_5
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 416
    :cond_16
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 417
    :cond_17
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    const/4 v3, -0x1

    if-ne p3, v0, :cond_1b

    .line 418
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz p2, :cond_1a

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    if-nez p2, :cond_18

    goto :goto_6

    .line 422
    :cond_18
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 423
    iget-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/16 v0, 0x2a

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq p3, v0, :cond_19

    if-eq p3, v3, :cond_19

    if-eq v0, v3, :cond_19

    .line 426
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 427
    iget v2, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 428
    iput p3, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr v0, v8

    .line 429
    iput v0, v1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 430
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p2, v2, p3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 433
    :cond_19
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->EmailLoginChangeMessage:I

    .line 435
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ChangeEmail:I

    .line 436
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 449
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_b

    :cond_1a
    :goto_6
    return-void

    .line 451
    :cond_1b
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    if-ne p3, p1, :cond_20

    .line 452
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-nez p1, :cond_1c

    return-void

    .line 455
    :cond_1c
    invoke-static {p1, v7}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 456
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v8}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 458
    :cond_1d
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz p2, :cond_1e

    .line 459
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 460
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 461
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 464
    :cond_1e
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_7

    :cond_1f
    move v1, v9

    .line 469
    :goto_7
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {p1, v1, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 471
    :cond_20
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    if-ne p3, p1, :cond_21

    .line 472
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_b

    .line 473
    :cond_21
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    if-ne p3, p1, :cond_24

    .line 474
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne p1, v8, :cond_22

    .line 475
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iput v7, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_8

    .line 477
    :cond_22
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iput v8, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 479
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget p3, p3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    const-string v0, "secretWebpage2"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 480
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2f

    .line 481
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne p1, v8, :cond_23

    move v7, v8

    :cond_23
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 483
    :cond_24
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    if-ne p3, p1, :cond_26

    .line 484
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    .line 487
    :cond_25
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    sget p2, Lorg/telegram/messenger/R$string;->SyncContactsDeleteTitle:I

    const-string p3, "SyncContactsDeleteTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 489
    sget p2, Lorg/telegram/messenger/R$string;->SyncContactsDeleteText:I

    const-string p3, "SyncContactsDeleteText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 490
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 491
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 502
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 503
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 504
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2f

    .line 506
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 508
    :cond_26
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    if-ne p3, p1, :cond_28

    .line 509
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 510
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    if-eqz p1, :cond_27

    .line 512
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    sget p3, Lorg/telegram/messenger/R$string;->SuggestContactsTitle:I

    const-string v0, "SuggestContactsTitle"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    sget p3, Lorg/telegram/messenger/R$string;->SuggestContactsAlert:I

    const-string v0, "SuggestContactsAlert"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 515
    sget p3, Lorg/telegram/messenger/R$string;->MuteDisable:I

    const-string v0, "MuteDisable"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 526
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 527
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 528
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 529
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2f

    .line 531
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_b

    .line 535
    :cond_27
    iput-boolean v8, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    invoke-virtual {p2, v8}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 537
    :cond_28
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    if-ne p3, p1, :cond_29

    .line 538
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 539
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    xor-int/2addr p1, v8

    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 540
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 541
    :cond_29
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    if-ne p3, p1, :cond_2a

    .line 542
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    xor-int/2addr p1, v8

    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    .line 543
    instance-of p3, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_2f

    .line 544
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_b

    .line 546
    :cond_2a
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    if-ne p3, p1, :cond_2b

    .line 547
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-static {p1, p2, p3, v7, v6}, Lorg/telegram/ui/Components/AlertsCreator;->showSecretLocationAlert(Landroid/content/Context;ILjava/lang/Runnable;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_b

    .line 551
    :cond_2b
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    if-ne p3, p1, :cond_2e

    .line 552
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 553
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    const-string p3, "PrivacyPaymentsClearAlertTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 554
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertText:I

    const-string p3, "PrivacyPaymentsClearAlertText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 556
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {p2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 558
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move p3, v7

    :goto_9
    if-ge p3, v4, :cond_2d

    if-nez p3, :cond_2c

    .line 563
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyClearShipping:I

    const-string v1, "PrivacyClearShipping"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 565
    :cond_2c
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyClearPayment:I

    const-string v1, "PrivacyClearPayment"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 567
    :goto_a
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aput-boolean v8, v1, p3

    .line 568
    new-instance v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    const/16 v10, 0x15

    invoke-direct {v1, v9, v8, v10, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 569
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 570
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v1, v9, v7, v10, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v9, 0x32

    .line 572
    invoke-static {v3, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {p2, v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    invoke-virtual {v1, v0, v6, v8, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 574
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 575
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    .line 582
    :cond_2d
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string p3, "ClearButton"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 623
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 625
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 626
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 627
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 628
    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2f

    .line 630
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_b

    .line 632
    :cond_2e
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    if-ne p3, p1, :cond_2f

    .line 633
    new-instance p1, Lorg/telegram/ui/PassportActivity;

    const/4 v1, 0x5

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/PassportActivity;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_account_authorizationForm;Lorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2f
    :goto_b
    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0

    .line 377
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 379
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 381
    :goto_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 382
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    .line 383
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    .line 384
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 375
    new-instance p4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$6(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 3

    .line 355
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 356
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 359
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const/16 p1, 0xb6

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    :cond_3
    move p1, v1

    .line 368
    :goto_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 369
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 370
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 372
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;-><init>()V

    .line 373
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 374
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    .line 375
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$7()V
    .locals 3

    .line 437
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 438
    sget v1, Lorg/telegram/messenger/R$raw;->email_check_inbox:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 439
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->YourLoginEmailChangedSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5dc

    .line 441
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 444
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 436
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LoginActivity;-><init>()V

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LoginActivity;->changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$9()V
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$20(Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 836
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$21(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 833
    check-cast p1, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 834
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$0()V
    .locals 2

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ltz v1, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$1()V
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v0

    .line 198
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    if-gez v1, :cond_0

    if-lez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$3(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private loadPasswordSettings()V
    .locals 4

    .line 826
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 830
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 831
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    const/16 v3, 0xa

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateRows()V
    .locals 1

    const/4 v0, 0x1

    .line 681
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 685
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 687
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    add-int/lit8 v3, v1, 0x1

    .line 688
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    add-int/lit8 v1, v3, 0x1

    .line 689
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    add-int/lit8 v3, v1, 0x1

    .line 690
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    add-int/lit8 v1, v3, 0x1

    .line 692
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    add-int/lit8 v3, v1, 0x1

    .line 693
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    .line 695
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_0
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    if-eqz v5, :cond_1

    :goto_0
    add-int/lit8 v5, v3, 0x1

    .line 696
    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    goto :goto_1

    .line 698
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 700
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-eqz v1, :cond_3

    .line 702
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    .line 703
    :goto_2
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    if-eq v3, v1, :cond_3

    .line 704
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    .line 705
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 708
    :cond_3
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    add-int/lit8 v1, v3, 0x1

    .line 709
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    add-int/lit8 v3, v1, 0x1

    .line 711
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 712
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    add-int/lit8 v3, v1, 0x1

    .line 713
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    add-int/lit8 v1, v3, 0x1

    .line 714
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    add-int/lit8 v3, v1, 0x1

    .line 715
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    add-int/lit8 v1, v3, 0x1

    .line 716
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    add-int/lit8 v3, v1, 0x1

    .line 717
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    add-int/lit8 v1, v3, 0x1

    .line 718
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    .line 719
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    .line 720
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 723
    :cond_4
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    goto :goto_4

    .line 721
    :cond_5
    :goto_3
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    .line 725
    :goto_4
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    .line 727
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->autoarchiveAvailable:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 732
    :cond_6
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    .line 733
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    .line 734
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    goto :goto_6

    .line 728
    :cond_7
    :goto_5
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    add-int/lit8 v1, v3, 0x1

    .line 729
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    add-int/lit8 v3, v1, 0x1

    .line 730
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    .line 736
    :goto_6
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 737
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    add-int/lit8 v3, v1, 0x1

    .line 738
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    add-int/lit8 v1, v3, 0x1

    .line 739
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    .line 740
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    if-eqz v1, :cond_8

    .line 741
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    goto :goto_7

    .line 743
    :cond_8
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    .line 745
    :goto_7
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v1

    if-lez v1, :cond_9

    .line 747
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    add-int/lit8 v1, v3, 0x1

    .line 748
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    .line 749
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    goto :goto_8

    .line 751
    :cond_9
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    .line 752
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    .line 753
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsAndWebsitesShadowRow:I

    .line 755
    :goto_8
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 756
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    add-int/lit8 v3, v1, 0x1

    .line 757
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    add-int/lit8 v1, v3, 0x1

    .line 758
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    add-int/lit8 v3, v1, 0x1

    .line 759
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    add-int/lit8 v1, v3, 0x1

    .line 760
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    add-int/lit8 v3, v1, 0x1

    .line 761
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    add-int/lit8 v1, v3, 0x1

    .line 762
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    add-int/lit8 v3, v1, 0x1

    .line 763
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    .line 765
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 766
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    .line 767
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->bioRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    const/4 v1, 0x0

    add-int/2addr v1, v2

    .line 774
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    add-int/lit8 v0, v1, 0x1

    .line 775
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    add-int/lit8 v1, v0, 0x1

    .line 776
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    add-int/lit8 v0, v1, 0x1

    .line 777
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    .line 780
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 781
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 270
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    const-string v3, "PrivacySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 281
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    .line 283
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 284
    check-cast v0, Landroid/widget/FrameLayout;

    .line 285
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 287
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 288
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v1, v4}, Lorg/telegram/ui/PrivacySettingsActivity$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 295
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 296
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 297
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 637
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 642
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, p2, :cond_1

    .line 643
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 645
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 647
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_6

    .line 648
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 650
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 652
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 656
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 657
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_6

    .line 659
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 663
    :cond_4
    array-length p2, p3

    if-lez p2, :cond_5

    const/4 p2, 0x0

    .line 664
    aget-object p2, p3, p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 665
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_6

    .line 666
    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 669
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 670
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 671
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 673
    :cond_6
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    if-ne p1, p2, :cond_7

    .line 674
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p1, :cond_7

    .line 675
    iget p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1322
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x3

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v26

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v31

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v29, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v5

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v29, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v5, v11

    sget v34, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    const/16 v31, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v5

    invoke-direct/range {v27 .. v34}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v31

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v29, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v4

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 160
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "custom_screen_type"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->customScreenType:I

    .line 167
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getBlockedPeers(Z)V

    .line 169
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 176
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 177
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 180
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 184
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->loadGlobalTTl()V

    .line 186
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    .line 187
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SessionsActivity;->setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->devicesActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    .line 194
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    .line 195
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SessionsActivity;->setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return v2
.end method

.method public onFragmentDestroy()V
    .locals 6

    .line 215
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 216
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 218
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 219
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 221
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SyncContactsAdded:I

    const-string v4, "SyncContactsAdded"

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 231
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 236
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    .line 238
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    .line 239
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move v0, v3

    .line 245
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 246
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iget-boolean v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    if-eq v4, v5, :cond_4

    .line 247
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 249
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;-><init>()V

    .line 250
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    .line 251
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    .line 252
    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 253
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-eqz v3, :cond_5

    .line 258
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 950
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 951
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 952
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/ui/PrivacySettingsActivity;
    .locals 0

    .line 786
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz p1, :cond_0

    .line 788
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    :cond_0
    return-object p0
.end method
