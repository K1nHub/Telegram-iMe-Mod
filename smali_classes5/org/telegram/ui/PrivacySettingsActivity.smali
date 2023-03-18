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

.field private blockedRow:I

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

.field sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

.field private sessionsDetailRow:I

.field private sessionsRow:I

.field private voicesRow:I

.field private webSessionsRow:I


# direct methods
.method public static synthetic $r8$lambda$0K4CU20SKZE4_U9i32DaEFzi3XM(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CauMjq2asIfgBKOFPzYE3vuUAKY(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$18(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dfwz99fMO_LzMlfH1n0Uoyrt568(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$KusTqc1JfMf-sApacgO0crINd5M(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P4iel4im6NgAU3dhIROtIKer3qY(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentDestroy$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vc9rXwYEGwzPYpYb1P1ujhoM0xg(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wz_HSoqzgpREfpymkLp6IMTkhXo(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XP3DAhuCugphr47O_1tqzzUOMPc(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$loadPasswordSettings$19(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPWds3x9MVyYoUbu499JzH6ZHng(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$17(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YU5OAy_ajV62dxY_p4JcGDVYz40(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yp1t1fpOPHOHcx3a40f9jvjVgcI(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Yxm13VwT-GpH1uJ7_IScicOahSc(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eCom5AnOVY7xn_PRwv5OLVdd3zg(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gRcHZmuU-8z7f2-uQSRZKby3-oQ(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$10(Lorg/telegram/ui/Cells/TextCheckCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kyDTbjrIQwJFl2mKoYkbzT5fVsI(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lDYN46mGz5fKHCzMAVuZApOmR6E(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVkjaZwU9RcMbNjcyFcfg0bEIJc(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$16(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vGozu7zaNhJT75WUajXTcAh4-NI(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$wGOT6cC8SGaZUuIFU25Nv7WGE3Q(Lorg/telegram/ui/PrivacySettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$onFragmentCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$yVShp-6KYWxEM12ZeuPnW4V9HGM(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z4kzRdecB0_mUcEKFyDM3_lzyYU(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/PrivacySettingsActivity;->lambda$createView$11(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

    .line 152
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
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
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

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

.method static synthetic access$4200(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return p0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    return-object p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

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

    .line 813
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/AccountInstance;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ContactsController;->getPrivacyRules(I)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "P2PNobody"

    const-string v3, "LastSeenNobody"

    const/4 v4, 0x3

    if-eqz v1, :cond_1e

    .line 814
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 824
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ge v7, v11, :cond_a

    .line 825
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PrivacyRule;

    .line 826
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    if-eqz v14, :cond_2

    .line 827
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;

    .line 828
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_9

    .line 829
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

    .line 833
    :cond_1
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v10, v14

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 835
    :cond_2
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    if-eqz v14, :cond_4

    .line 836
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;

    .line 837
    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowChatParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_9

    .line 838
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

    .line 842
    :cond_3
    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v9, v14

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 844
    :cond_4
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    if-eqz v14, :cond_5

    .line 845
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;

    .line 846
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_5

    .line 847
    :cond_5
    instance-of v14, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    if-eqz v14, :cond_6

    .line 848
    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;

    .line 849
    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowUsers;->users:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v9, v11

    goto :goto_5

    :cond_6
    if-ne v8, v5, :cond_9

    .line 851
    instance-of v8, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueAllowAll;

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    goto :goto_5

    .line 853
    :cond_7
    instance-of v8, v11, Lorg/telegram/tgnet/TLRPC$TL_privacyValueDisallowAll;

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    const/4 v8, 0x2

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

    .line 903
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 905
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

    .line 909
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 911
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

    .line 877
    sget v0, Lorg/telegram/messenger/R$string;->P2PContacts:I

    const-string v1, "P2PContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    if-eqz v10, :cond_14

    if-eqz v9, :cond_14

    .line 880
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

    .line 882
    sget v0, Lorg/telegram/messenger/R$string;->P2PContactsMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "P2PContactsMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 884
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

    .line 889
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContacts:I

    const-string v1, "LastSeenContacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    if-eqz v10, :cond_18

    if-eqz v9, :cond_18

    .line 892
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

    .line 894
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenContactsMinus:I

    new-array v1, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "LastSeenContactsMinus"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 896
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

    .line 863
    sget v0, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    const-string v1, "P2PEverybody"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 865
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

    .line 869
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    const-string v1, "LastSeenEverybody"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 871
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

    .line 816
    sget v0, Lorg/telegram/messenger/R$string;->P2PNobody:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 818
    :cond_1f
    sget v0, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPassword()V
    .locals 6

    .line 764
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-static {v0}, Lorg/telegram/ui/TwoStepVerificationActivity;->initPasswordNewAlgo(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 765
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->has_secure_values:Z

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    .line 767
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 768
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    goto :goto_3

    .line 770
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz v0, :cond_5

    .line 771
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 772
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    if-ne v3, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez v5, :cond_3

    if-eqz v1, :cond_5

    .line 776
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_5

    if-eqz v5, :cond_4

    .line 780
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    .line 782
    :cond_4
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 788
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_6

    .line 789
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

    sget v1, Lcom/smedialink/common/IdFabric$CustomType;->CONTACTS_PRIVACY_SETTINGS:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$10(Lorg/telegram/ui/Cells/TextCheckCell;)V
    .locals 1

    .line 505
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    .line 506
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$createView$11(Lorg/telegram/ui/Cells/TextCheckCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 504
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$12(Lorg/telegram/ui/Cells/TextCheckCell;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 499
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 500
    iget-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v0, p3, v0

    iput-boolean v0, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v0, 0x0

    .line 501
    aget-boolean p3, p3, v0

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 502
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    const/4 v1, 0x0

    iput-object v1, p3, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 503
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 504
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$13()V
    .locals 1

    .line 531
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 532
    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapUpdate:Z

    return-void
.end method

.method private synthetic lambda$createView$14(Landroid/view/View;)V
    .locals 4

    .line 559
    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 560
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 561
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean v2, v1, v0

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    aput-boolean v2, v1, v0

    .line 562
    aget-boolean v0, v1, v0

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    return-void
.end method

.method private static synthetic lambda$createView$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$createView$16(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 577
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;-><init>()V

    .line 578
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    const/4 v0, 0x1

    aget-boolean v1, p2, v0

    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->credentials:Z

    const/4 v1, 0x0

    .line 579
    aget-boolean p2, p2, v1

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_payments_clearSavedInfo;->info:Z

    .line 580
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    const/4 v2, 0x0

    iput-object v2, p2, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 581
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 582
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    sget-object v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda18;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aget-boolean p2, p1, v1

    if-eqz p2, :cond_0

    aget-boolean p2, p1, v0

    if-eqz p2, :cond_0

    .line 587
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentShippingCleared:I

    const-string p2, "PrivacyPaymentsPaymentShippingCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 588
    :cond_0
    aget-boolean p2, p1, v1

    if-eqz p2, :cond_1

    .line 589
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsShippingInfoCleared:I

    const-string p2, "PrivacyPaymentsShippingInfoCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 590
    :cond_1
    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2

    .line 591
    sget p1, Lorg/telegram/messenger/R$string;->PrivacyPaymentsPaymentInfoCleared:I

    const-string p2, "PrivacyPaymentsPaymentInfoCleared"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 595
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

.method private synthetic lambda$createView$17(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 567
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 568
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 573
    :cond_0
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 574
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    const-string v0, "PrivacyPaymentsClearAlertTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 575
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlert:I

    const-string v0, "PrivacyPaymentsClearAlert"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 576
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v0, "ClearButton"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 597
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v0, "Cancel"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 598
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 599
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 600
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 p2, -0x1

    .line 601
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const-string p2, "dialogTextRed"

    .line 603
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$18(Landroid/content/Context;Landroid/view/View;I)V
    .locals 12

    .line 287
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    if-eq p3, v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_1
    :goto_0
    if-ne p3, v0, :cond_2

    .line 288
    sget-object v0, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    .line 289
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lorg/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 294
    :cond_3
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    if-ne p3, v0, :cond_4

    .line 295
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v0

    if-ltz v0, :cond_4

    .line 296
    new-instance v0, Lorg/telegram/ui/AutoDeleteMessagesActivity;

    invoke-direct {v0}, Lorg/telegram/ui/AutoDeleteMessagesActivity;-><init>()V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 298
    :cond_4
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-ne p3, v0, :cond_5

    .line 299
    new-instance p1, Lorg/telegram/ui/PrivacyUsersActivity;

    invoke-direct {p1}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>()V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 300
    :cond_5
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ne p3, v0, :cond_6

    .line 301
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resetFragment()V

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 303
    :cond_6
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    const/4 v1, 0x1

    if-ne p3, v0, :cond_7

    .line 304
    new-instance p1, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 305
    :cond_7
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    const/4 v2, 0x6

    const-string v3, "Cancel"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne p3, v0, :cond_e

    .line 306
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_8

    return-void

    .line 309
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result p1

    const/16 p2, 0x1f

    if-gt p1, p2, :cond_9

    const/4 p1, 0x0

    goto :goto_2

    :cond_9
    const/16 p2, 0x5d

    if-gt p1, p2, :cond_a

    const/4 p1, 0x1

    goto :goto_2

    :cond_a
    const/16 p2, 0xb6

    if-gt p1, p2, :cond_b

    const/4 p1, 0x2

    goto :goto_2

    :cond_b
    const/4 p1, 0x3

    .line 320
    :goto_2
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 321
    sget p3, Lorg/telegram/messenger/R$string;->DeleteAccountTitle:I

    const-string v0, "DeleteAccountTitle"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    new-array p3, v6, [Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/Object;

    const-string v9, "Months"

    .line 323
    invoke-static {v9, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    new-array v0, v8, [Ljava/lang/Object;

    .line 324
    invoke-static {v9, v4, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    new-array v0, v8, [Ljava/lang/Object;

    .line 325
    invoke-static {v9, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "Years"

    .line 326
    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v4

    .line 328
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 330
    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_d

    .line 333
    new-instance v4, Lorg/telegram/ui/Cells/RadioColorCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/RadioColorCell;-><init>(Landroid/content/Context;)V

    .line 334
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v4, v5, v8, v9, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const-string v5, "radioBackground"

    .line 336
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    const-string v9, "dialogRadioBackgroundChecked"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Cells/RadioColorCell;->setCheckColor(II)V

    .line 337
    aget-object v5, p3, v2

    if-ne p1, v2, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v4, v5, v9}, Lorg/telegram/ui/Cells/RadioColorCell;->setTextAndValue(Ljava/lang/CharSequence;Z)V

    .line 338
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    new-instance v5, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 374
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 375
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_c

    .line 376
    :cond_e
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    if-ne p3, v0, :cond_f

    .line 377
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v8}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 378
    :cond_f
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    if-ne p3, v0, :cond_10

    .line 379
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 380
    :cond_10
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    if-ne p3, v0, :cond_11

    .line 381
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v1}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 382
    :cond_11
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    if-ne p3, v0, :cond_12

    .line 383
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v5}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 384
    :cond_12
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    if-ne p3, v0, :cond_13

    .line 385
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v6}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 386
    :cond_13
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    const/4 v9, 0x5

    if-ne p3, v0, :cond_14

    .line 387
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p1, v9}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 388
    :cond_14
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    if-ne p3, v0, :cond_16

    .line 389
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-nez p1, :cond_15

    .line 391
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1, v4, v5}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 393
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 395
    :goto_5
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createRestrictVoiceMessagesPremiumBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 399
    :cond_15
    new-instance p1, Lorg/telegram/ui/PrivacyControlActivity;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 400
    :cond_16
    iget v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    const/4 v4, -0x1

    if-ne p3, v0, :cond_1a

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz p2, :cond_19

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    if-nez p2, :cond_17

    goto :goto_6

    .line 405
    :cond_17
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 406
    iget-object p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/16 v0, 0x2a

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    .line 407
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq p3, v0, :cond_18

    if-eq p3, v4, :cond_18

    if-eq v0, v4, :cond_18

    .line 409
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 410
    iget v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 411
    iput p3, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr v0, v1

    .line 412
    iput v0, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 413
    new-instance v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p2, v1, p3, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 416
    :cond_18
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    invoke-virtual {p3, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->EmailLoginChangeMessage:I

    .line 418
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->ChangeEmail:I

    .line 419
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 432
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 433
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_c

    :cond_19
    :goto_6
    return-void

    .line 434
    :cond_1a
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    if-ne p3, p1, :cond_1f

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-nez p1, :cond_1b

    return-void

    .line 438
    :cond_1b
    invoke-static {p1, v8}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 439
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 441
    :cond_1c
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz p2, :cond_1d

    .line 442
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationActivity;

    invoke-direct {p1}, Lorg/telegram/ui/TwoStepVerificationActivity;-><init>()V

    .line 443
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/TwoStepVerificationActivity;->setPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)V

    .line 444
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 447
    :cond_1d
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->email_unconfirmed_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_7

    :cond_1e
    const/4 v2, 0x5

    .line 452
    :goto_7
    new-instance p1, Lorg/telegram/ui/TwoStepVerificationSetupActivity;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    invoke-direct {p1, v2, p2}, Lorg/telegram/ui/TwoStepVerificationSetupActivity;-><init>(ILorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 454
    :cond_1f
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    if-ne p3, p1, :cond_20

    .line 455
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_c

    .line 456
    :cond_20
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    if-ne p3, p1, :cond_23

    .line 457
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne p1, v1, :cond_21

    .line 458
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iput v8, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    goto :goto_8

    .line 460
    :cond_21
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iput v1, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    .line 462
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

    .line 463
    instance-of p1, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p1, :cond_2e

    .line 464
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne p1, v1, :cond_22

    goto :goto_9

    :cond_22
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_c

    .line 466
    :cond_23
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    const-string v0, "dialogTextRed"

    if-ne p3, p1, :cond_25

    .line 467
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_24

    return-void

    .line 470
    :cond_24
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    sget p2, Lorg/telegram/messenger/R$string;->SyncContactsDeleteTitle:I

    const-string p3, "SyncContactsDeleteTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 472
    sget p2, Lorg/telegram/messenger/R$string;->SyncContactsDeleteText:I

    const-string p3, "SyncContactsDeleteText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 473
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 474
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 485
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 486
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 487
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    .line 489
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c

    .line 491
    :cond_25
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    if-ne p3, p1, :cond_27

    .line 492
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 493
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    if-eqz p1, :cond_26

    .line 495
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    sget p3, Lorg/telegram/messenger/R$string;->SuggestContactsTitle:I

    const-string v1, "SuggestContactsTitle"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 497
    sget p3, Lorg/telegram/messenger/R$string;->SuggestContactsAlert:I

    const-string v1, "SuggestContactsAlert"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 498
    sget p3, Lorg/telegram/messenger/R$string;->MuteDisable:I

    const-string v1, "MuteDisable"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 509
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 510
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 511
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 512
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    .line 514
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_c

    .line 518
    :cond_26
    iput-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_c

    .line 520
    :cond_27
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    if-ne p3, p1, :cond_28

    .line 521
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 522
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 523
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_c

    .line 524
    :cond_28
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    if-ne p3, p1, :cond_29

    .line 525
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    .line 526
    instance-of p3, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz p3, :cond_2e

    .line 527
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_c

    .line 529
    :cond_29
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    if-ne p3, p1, :cond_2a

    .line 530
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-static {p1, p2, p3, v8, v7}, Lorg/telegram/ui/Components/AlertsCreator;->showSecretLocationAlert(Landroid/content/Context;ILjava/lang/Runnable;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_c

    .line 534
    :cond_2a
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    if-ne p3, p1, :cond_2d

    .line 535
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertTitle:I

    const-string p3, "PrivacyPaymentsClearAlertTitle"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 537
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClearAlertText:I

    const-string p3, "PrivacyPaymentsClearAlertText"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 539
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 540
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 541
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 p3, 0x0

    :goto_a
    if-ge p3, v5, :cond_2c

    if-nez p3, :cond_2b

    .line 546
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyClearShipping:I

    const-string v9, "PrivacyClearShipping"

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 548
    :cond_2b
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyClearPayment:I

    const-string v9, "PrivacyClearPayment"

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 550
    :goto_b
    iget-object v9, p0, Lorg/telegram/ui/PrivacySettingsActivity;->clear:[Z

    aput-boolean v1, v9, p3

    .line 551
    new-instance v9, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    const/16 v11, 0x15

    invoke-direct {v9, v10, v1, v11, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 552
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 553
    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-virtual {v9, v10, v8, v11, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/16 v10, 0x32

    .line 555
    invoke-static {v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    invoke-virtual {v9, v2, v7, v1, v8}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    const-string v2, "dialogTextBlack"

    .line 557
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setTextColor(I)V

    .line 558
    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    .line 565
    :cond_2c
    sget p2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string p3, "ClearButton"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 606
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 608
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 609
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 610
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 611
    invoke-virtual {p1, v4}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    .line 613
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_c

    .line 615
    :cond_2d
    iget p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    if-ne p3, p1, :cond_2e

    .line 616
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

    :cond_2e
    :goto_c
    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V
    .locals 0

    .line 362
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 364
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 366
    :goto_0
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 367
    iput-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountUpdate:Z

    .line 368
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->setDeleteAccountTTL(I)V

    .line 369
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 360
    new-instance p4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p4, p0, p1, p3, p2}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 3

    .line 340
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 341
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 344
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/16 p1, 0x5a

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    const/16 p1, 0xb6

    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    const/16 p1, 0x16d

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 353
    :goto_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 354
    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 355
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 357
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;-><init>()V

    .line 358
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;->ttl:Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    .line 359
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    .line 360
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, v0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/tgnet/TLRPC$TL_account_setAccountTTL;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 3

    .line 420
    new-instance v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 421
    sget v1, Lorg/telegram/messenger/R$raw;->email_check_inbox:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->setAnimation(I[Ljava/lang/String;)V

    .line 422
    iget-object v1, v0, Lorg/telegram/ui/Components/Bulletin$LottieLayout;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->YourLoginEmailChangedSuccess:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x5dc

    .line 424
    invoke-static {p0, v0, v1}, Lorg/telegram/ui/Components/Bulletin;->make(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Layout;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :catch_0
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 419
    new-instance p1, Lorg/telegram/ui/LoginActivity;

    invoke-direct {p1}, Lorg/telegram/ui/LoginActivity;-><init>()V

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LoginActivity;->changeEmail(Ljava/lang/Runnable;)Lorg/telegram/ui/LoginActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createView$8()V
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 475
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 476
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 p2, 0x0

    .line 477
    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 479
    iget-boolean p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    if-eq p1, v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p1, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 483
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ContactsController;->deleteAllContacts(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$19(Lorg/telegram/tgnet/TLRPC$account_Password;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 806
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    return-void
.end method

.method private synthetic lambda$loadPasswordSettings$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 803
    check-cast p1, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 804
    new-instance p2, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Lorg/telegram/tgnet/TLRPC$account_Password;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFragmentCreate$0()V
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    if-ltz v1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onFragmentDestroy$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private loadPasswordSettings()V
    .locals 4

    .line 796
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 800
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 801
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

    .line 664
    invoke-direct {p0, v0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 668
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 670
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    add-int/lit8 v3, v1, 0x1

    .line 672
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    add-int/lit8 v1, v3, 0x1

    .line 673
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    add-int/lit8 v3, v1, 0x1

    .line 675
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    add-int/lit8 v1, v3, 0x1

    .line 676
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    add-int/lit8 v3, v1, 0x1

    .line 677
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    .line 678
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

    .line 679
    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    goto :goto_1

    .line 681
    :cond_1
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->emailLoginRow:I

    .line 683
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    if-eqz v1, :cond_3

    .line 685
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 686
    :goto_2
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    if-eq v3, v1, :cond_3

    .line 687
    sput-boolean v1, Lorg/telegram/messenger/SharedConfig;->hasEmailLogin:Z

    .line 688
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    .line 691
    :cond_3
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    add-int/lit8 v1, v3, 0x1

    .line 692
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsDetailRow:I

    add-int/lit8 v3, v1, 0x1

    .line 694
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 695
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    add-int/lit8 v3, v1, 0x1

    .line 696
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    add-int/lit8 v1, v3, 0x1

    .line 697
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    add-int/lit8 v3, v1, 0x1

    .line 698
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    add-int/lit8 v1, v3, 0x1

    .line 699
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    add-int/lit8 v3, v1, 0x1

    .line 700
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    .line 701
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    .line 702
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

    .line 705
    :cond_4
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    goto :goto_4

    .line 703
    :cond_5
    :goto_3
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->voicesRow:I

    .line 707
    :goto_4
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacyShadowRow:I

    .line 709
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

    .line 714
    :cond_6
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    .line 715
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    .line 716
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    goto :goto_6

    .line 710
    :cond_7
    :goto_5
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsHeaderRow:I

    add-int/lit8 v1, v3, 0x1

    .line 711
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsRow:I

    add-int/lit8 v3, v1, 0x1

    .line 712
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newChatsSectionRow:I

    .line 718
    :goto_6
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->advancedSectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 719
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountRow:I

    add-int/lit8 v3, v1, 0x1

    .line 720
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->deleteAccountDetailRow:I

    add-int/lit8 v1, v3, 0x1

    .line 721
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsSectionRow:I

    .line 722
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/UserConfig;->hasSecureData:Z

    if-eqz v1, :cond_8

    .line 723
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    goto :goto_7

    .line 725
    :cond_8
    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passportRow:I

    .line 727
    :goto_7
    iget v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->paymentsClearRow:I

    add-int/lit8 v1, v3, 0x1

    .line 728
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->webSessionsRow:I

    add-int/lit8 v3, v1, 0x1

    .line 729
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->botsDetailRow:I

    add-int/lit8 v1, v3, 0x1

    .line 730
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    add-int/lit8 v3, v1, 0x1

    .line 731
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    add-int/lit8 v1, v3, 0x1

    .line 732
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    add-int/lit8 v3, v1, 0x1

    .line 733
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    add-int/lit8 v1, v3, 0x1

    .line 734
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    add-int/lit8 v3, v1, 0x1

    .line 735
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretSectionRow:I

    add-int/lit8 v1, v3, 0x1

    .line 736
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretMapRow:I

    add-int/lit8 v3, v1, 0x1

    .line 737
    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretWebpageRow:I

    add-int/lit8 v1, v3, 0x1

    .line 738
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->secretDetailRow:I

    .line 740
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 741
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    .line 742
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

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeArchiveRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeCloudRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passcodeRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->securitySectionRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsDetailRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->groupsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->callsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->forwardsRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->profilePhotoRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->lastSeenRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->phoneNumberRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    iput v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->privacySectionRow:I

    const/4 v1, 0x0

    add-int/2addr v1, v2

    .line 743
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 744
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDeleteRow:I

    add-int/lit8 v1, v0, 0x1

    .line 745
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSyncRow:I

    add-int/lit8 v0, v1, 0x1

    .line 746
    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsSuggestRow:I

    add-int/lit8 v1, v0, 0x1

    .line 747
    iput v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->contactsDetailRow:I

    .line 750
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    .line 751
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->PrivacySettings:I

    const-string v3, "PrivacySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PrivacySettingsActivity$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PrivacySettingsActivity$1;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 267
    new-instance v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    .line 269
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 270
    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "windowBackgroundGray"

    .line 271
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 273
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 274
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$2;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v1, v4}, Lorg/telegram/ui/PrivacySettingsActivity$2;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 281
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 282
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 283
    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    invoke-static {v2, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 620
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 625
    sget p2, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    if-ne p1, p2, :cond_1

    .line 626
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 628
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 630
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_6

    .line 631
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 633
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    if-ne p1, p2, :cond_3

    .line 635
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 639
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->blockedRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 640
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    if-ne p1, p2, :cond_6

    .line 642
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->isContactsType()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 646
    :cond_4
    array-length p2, p3

    if-lez p2, :cond_5

    const/4 p2, 0x0

    .line 647
    aget-object p2, p3, p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 648
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p2, :cond_6

    .line 649
    iget p3, p0, Lorg/telegram/ui/PrivacySettingsActivity;->passwordRow:I

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    .line 652
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 653
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 654
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 656
    :cond_6
    :goto_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    if-ne p1, p2, :cond_7

    .line 657
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz p1, :cond_7

    .line 658
    iget p2, p0, Lorg/telegram/ui/PrivacySettingsActivity;->autoDeleteMesages:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1294
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

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "windowBackgroundWhite"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "windowBackgroundGray"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v9, 0x0

    const-string v10, "actionBarDefault"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const-string v20, "actionBarDefault"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1299
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const-string v10, "actionBarDefaultIcon"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1300
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const-string v20, "actionBarDefaultTitle"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v10, "actionBarDefaultSelector"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    const-string v20, "listSelectorSDK21"

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v3, Landroid/view/View;

    aput-object v3, v6, v11

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const-string v10, "divider"

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-string v21, "windowBackgroundWhiteBlackText"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v5, v11

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteValueText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteBlueHeader"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v7, v5, v11

    const/16 v26, 0x0

    const-string v29, "windowBackgroundGrayShadow"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText4"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    const/16 v24, 0x0

    const/16 v29, 0x0

    const-string v30, "windowBackgroundWhiteBlackText"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "windowBackgroundWhiteGrayText2"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v4, v11

    const-string v5, "checkBox"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    const-string v30, "switchTrack"

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/PrivacySettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v4, v3, v11

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v21, "switchTrackChecked"

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 157
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "custom_screen_type"

    .line 160
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->customScreenType:I

    .line 164
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->loadPrivacySettings()V

    .line 165
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getBlockedPeers(Z)V

    .line 166
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    .line 167
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    .line 168
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    .line 173
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->updateRows()V

    .line 174
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->loadPasswordSettings()V

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 178
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->loadGlobalTTl()V

    .line 183
    new-instance v0, Lorg/telegram/ui/SessionsActivity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/SessionsActivity;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    .line 184
    new-instance v3, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/PrivacySettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/SessionsActivity;->setDelegate(Lorg/telegram/ui/SessionsActivity$Delegate;)V

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SessionsActivity;->loadSessions(Z)V

    return v2
.end method

.method public onFragmentDestroy()V
    .locals 6

    .line 201
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 202
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->blockedUsersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 204
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetOrRemoveTwoStepPassword:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 205
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateGlobalAutoDeleteTimer:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 207
    iget-boolean v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSync:Z

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 208
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSync:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->syncContacts:Z

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->forceImportContacts()V

    .line 212
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
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
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 217
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentSuggest:Z

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->clearTopPeers()V

    .line 222
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/UserConfig;->suggestContacts:Z

    .line 224
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;-><init>()V

    .line 225
    iget-boolean v1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->newSuggest:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_toggleTopPeers;->enabled:Z

    .line 226
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda16;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    const/4 v0, 0x1

    .line 231
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 232
    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    iget-boolean v5, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    if-eq v4, v5, :cond_4

    .line 233
    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 235
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;-><init>()V

    .line 236
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    .line 237
    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    or-int/2addr v4, v3

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->flags:I

    .line 238
    iget-boolean v4, p0, Lorg/telegram/ui/PrivacySettingsActivity;->archiveChats:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->archive_and_mute_new_noncontact_peers:Z

    .line 239
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    sget-object v4, Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;->INSTANCE:Lorg/telegram/ui/PrivacySettingsActivity$$ExternalSyntheticLambda17;

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-eqz v3, :cond_5

    .line 244
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 920
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity;->listAdapter:Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;)Lorg/telegram/ui/PrivacySettingsActivity;
    .locals 0

    .line 756
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity;->currentPassword:Lorg/telegram/tgnet/TLRPC$account_Password;

    if-eqz p1, :cond_0

    .line 758
    invoke-direct {p0}, Lorg/telegram/ui/PrivacySettingsActivity;->initPassword()V

    :cond_0
    return-object p0
.end method
