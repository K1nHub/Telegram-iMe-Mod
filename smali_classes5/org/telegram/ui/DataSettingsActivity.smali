.class public Lorg/telegram/ui/DataSettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DataSettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
    }
.end annotation


# static fields
.field private static final observers:[I


# instance fields
.field private autoplayGifsRow:I

.field private autoplayHeaderRow:I

.field private autoplaySectionRow:I

.field private autoplayVideoRow:I

.field private backupSaveAutoRow:I

.field private backupSaveManuallyRow:I

.field private backupSection2Row:I

.field private backupSectionRow:I

.field private callsSection2Row:I

.field private callsSectionRow:I

.field private clearDraftsRow:I

.field private clearDraftsSectionRow:I

.field private dataUsageRow:I

.field private enableAllStreamInfoRow:I

.field private enableAllStreamRow:I

.field private enableCacheStreamRow:I

.field private enableMkvRow:I

.field private enableStreamRow:I

.field private filesOriginalNameSavingEnabledRow:I

.field private listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mediaDownloadSection2Row:I

.field private mediaDownloadSectionRow:I

.field private mobileRow:I

.field private progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private proxyRow:I

.field private proxySection2Row:I

.field private proxySectionRow:I

.field private quickRepliesRow:I

.field private resetDownloadRow:I

.field private roamingRow:I

.field private rowCount:I

.field private saveToGalleryChannelsRow:I

.field private saveToGalleryDividerRow:I

.field private saveToGalleryGroupsRow:I

.field private saveToGalleryPeerRow:I

.field private saveToGallerySectionRow:I

.field private storageDirs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private storageNumRow:I

.field private storageUsageLoading:Z

.field private storageUsageRow:I

.field private storageUsageSize:J

.field private streamSectionRow:I

.field private updateStorageUsageAnimated:Z

.field private updateVoipUseLessData:Z

.field private usageSection2Row:I

.field private usageSectionRow:I

.field private useLessDataForCallsRow:I

.field private wifiRow:I


# direct methods
.method public static synthetic $r8$lambda$-yycQm5KdAHtLNPRFvk7nZtP2D8(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$4(Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4TsOo7LhDPM6I3D3BK-5Y3hRXsk(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$loadCacheSize$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$4mvi4J2oPhDtcbFM7Zmb0Hdq2JE(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$setStorageDirectory$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$G4OhHHB4aAn-MlsQtgiAG8OwNKQ(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_MPfLDZWHN3cX2K3m1tvHymVy4(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/Runnable;JLjava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$loadCacheSize$1(Ljava/lang/Runnable;JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TwLk2hGSbqWawta5_lu0iXHYwPo(Lorg/telegram/ui/DataSettingsActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVK7ApJ21jy5QtDAzsqvDsi6sgs(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$5(Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_jTQRO5EC7bTEfWrbVTkgy76QM4(Lorg/telegram/ui/DataSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$e9TKc7lhAvQD0y8CtHJLtsP-BP0(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qJljBAj1E9bF_dVX27TVV3Zb1bA(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$9(Landroid/content/Context;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$zodG_6w0zVk8UluzLMNYZXIz94M(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DataSettingsActivity;->lambda$createView$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 76
    sget v1, Lorg/telegram/messenger/NotificationCenter;->backupDidUpload:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    .line 131
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    .line 132
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    .line 133
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    .line 134
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    .line 137
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 71
    iget-object p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/DataSettingsActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSectionRow:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayHeaderRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSection2Row:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->autoplaySectionRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->setStorageDirectory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/DataSettingsActivity;)I
    .locals 0

    .line 71
    iget p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/DataSettingsActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/DataSettingsActivity;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/DataSettingsActivity;)J
    .locals 2

    .line 71
    iget-wide v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    return-wide v0
.end method

.method private synthetic lambda$createView$2()V
    .locals 3

    .line 382
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/BackupController;->backup(Z)V

    .line 383
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 384
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private synthetic lambda$createView$3(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 476
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$Global$Default;->isFilesOriginalNameSavingEnabled()Z

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->setFilesOriginalNameSavingEnabled(Z)V

    .line 477
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 483
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    if-nez v0, :cond_0

    .line 486
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 487
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "mobilePreset"

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 490
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 491
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "wifiPreset"

    goto :goto_1

    .line 494
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 495
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v4, "roamingPreset"

    .line 498
    :goto_1
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    .line 499
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v3

    iput-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 500
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentMobilePreset:I

    const-string v3, "currentMobilePreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 501
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentWifiPreset:I

    const-string v3, "currentWifiPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 502
    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    iput v1, v3, Lorg/telegram/messenger/DownloadController;->currentRoamingPreset:I

    const-string v3, "currentRoamingPreset"

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 503
    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    move p1, p2

    :goto_2
    if-ge p1, v1, :cond_3

    .line 508
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 510
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 511
    invoke-direct {p0, p2}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$createView$4(Landroid/content/SharedPreferences;ILandroid/content/DialogInterface;I)V
    .locals 3

    const/4 p3, 0x3

    const/4 v0, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v2, :cond_3

    if-eq p4, v0, :cond_1

    if-eq p4, p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    move p3, v2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_0
    if-eq p3, v1, :cond_4

    .line 561
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p4, "VoipDataSaving"

    invoke-interface {p1, p4, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 562
    iput-boolean v2, p0, Lorg/telegram/ui/DataSettingsActivity;->updateVoipUseLessData:Z

    .line 564
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_5

    .line 565
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$createView$5(Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V
    .locals 1

    .line 627
    sget-object p4, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {p4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    if-nez p2, :cond_0

    .line 629
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    sget p4, Lorg/telegram/messenger/R$string;->DecreaseSpeed:I

    const-string v0, "DecreaseSpeed"

    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 631
    sget p4, Lorg/telegram/messenger/R$string;->SdCardAlert:I

    const-string v0, "SdCardAlert"

    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 632
    sget p4, Lorg/telegram/messenger/R$string;->Proceed:I

    const-string v0, "Proceed"

    invoke-static {v0, p4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$3;

    invoke-direct {v0, p0, p1, p3}, Lorg/telegram/ui/DataSettingsActivity$3;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {p2, p4, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 639
    sget p1, Lorg/telegram/messenger/R$string;->Back:I

    const-string p3, "Back"

    invoke-static {p3, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 640
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->setStorageDirectory(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$6()V
    .locals 2

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->clearAllDrafts(Z)V

    return-void
.end method

.method private synthetic lambda$createView$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 688
    new-instance p1, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$8(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 687
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_clearAllDrafts;-><init>()V

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/content/Context;Landroid/view/View;IFF)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-string v5, "/storage/emulated/"

    .line 356
    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    const/4 v7, 0x1

    if-ne v3, v6, :cond_0

    .line 357
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    xor-int/2addr v1, v7

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setFilesOriginalNameSavingEnabled(Z)V

    .line 358
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCheckCell;->toggleCheckBox()V

    .line 359
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_f

    .line 360
    :cond_0
    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    if-ne v3, v6, :cond_2

    .line 361
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 362
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isInSwitch(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v4

    xor-int/2addr v4, v7

    invoke-virtual {v2, v4}, Lcom/iMe/fork/controller/BackupController;->setAutoBackupEnabled(Z)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/BackupController;->resetLastAutoBackupTime()V

    .line 365
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 366
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/BackupController;->saveConfig()V

    goto/16 :goto_f

    .line 369
    :cond_1
    invoke-static {}, Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;->newInstanceForAutoBackupSettings()Lcom/iMe/fork/ui/fragment/ChooseIntervalSettingsActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_f

    .line 371
    :cond_2
    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    const/4 v8, 0x0

    const-string v9, "Cancel"

    if-ne v3, v6, :cond_3

    .line 372
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    sget v3, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    .line 373
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->backup_settings_save_manually_alert:I

    .line 374
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 375
    invoke-static {v9, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->Save:I

    const-string v7, "Save"

    .line 376
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-static {v1, v2, v3, v8}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_f

    .line 389
    :cond_3
    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    const/16 v10, 0x4c

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v3, v6, :cond_2c

    iget v13, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-eq v3, v13, :cond_2c

    iget v13, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    if-ne v3, v13, :cond_4

    goto/16 :goto_d

    .line 407
    :cond_4
    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-eq v3, v6, :cond_22

    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    if-eq v3, v6, :cond_22

    iget v6, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v3, v6, :cond_5

    goto/16 :goto_9

    .line 467
    :cond_5
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    const/4 v6, -0x1

    if-ne v3, v4, :cond_8

    .line 468
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 471
    :cond_6
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlertTitle:I

    const-string v3, "ResetAutomaticMediaDownloadAlertTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 473
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownloadAlert:I

    const-string v3, "ResetAutomaticMediaDownloadAlert"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 474
    sget v2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v3, "Reset"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 513
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 514
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 515
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 516
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 518
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    :cond_7
    :goto_0
    return-void

    .line 520
    :cond_8
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ne v3, v4, :cond_9

    .line 521
    new-instance v1, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {v1}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_f

    .line 522
    :cond_9
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    if-ne v3, v4, :cond_e

    .line 523
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 525
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v2

    const-string v4, "VoipDataSaving"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_d

    if-eq v2, v12, :cond_c

    if-eq v2, v13, :cond_b

    :cond_a
    move v2, v14

    goto :goto_1

    :cond_b
    move v2, v7

    goto :goto_1

    :cond_c
    move v2, v13

    goto :goto_1

    :cond_d
    move v2, v12

    .line 539
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v11, [Ljava/lang/String;

    sget v6, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    const-string v8, "UseLessDataNever"

    .line 540
    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    sget v6, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    const-string v8, "UseLessDataOnRoaming"

    .line 541
    invoke-static {v8, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    sget v6, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    const-string v7, "UseLessDataOnMobile"

    .line 542
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    sget v6, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    const-string v7, "UseLessDataAlways"

    .line 543
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    sget v6, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    const-string v7, "VoipUseLessData"

    .line 544
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0, v1, v3}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/SharedPreferences;I)V

    .line 539
    invoke-static {v4, v5, v6, v2, v7}, Lorg/telegram/ui/Components/AlertsCreator;->createSingleChoiceDialog(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setVisibleDialog(Landroid/app/Dialog;)V

    .line 569
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_f

    .line 570
    :cond_e
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    if-ne v3, v4, :cond_f

    .line 571
    new-instance v1, Lorg/telegram/ui/DataUsage2Activity;

    invoke-direct {v1}, Lorg/telegram/ui/DataUsage2Activity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_f

    .line 572
    :cond_f
    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    if-ne v3, v4, :cond_19

    .line 574
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v7, :cond_10

    .line 575
    invoke-static/range {p0 .. p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->info:I

    sget v3, Lorg/telegram/messenger/R$string;->data_settings_storage_path_no_flash_drive:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 579
    :cond_10
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    sget v3, Lorg/telegram/messenger/R$string;->StoragePath:I

    const-string v4, "StoragePath"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 581
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 583
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 585
    iget-object v4, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 586
    sget-object v6, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 587
    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v14

    :goto_2
    if-ge v10, v6, :cond_12

    .line 588
    iget-object v13, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 589
    sget-object v15, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_11

    move-object v4, v13

    goto :goto_3

    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 598
    :cond_12
    :goto_3
    :try_start_0
    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v12, :cond_14

    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    iget-object v10, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v6, v10, :cond_13

    goto :goto_4

    :cond_13
    move v6, v14

    goto :goto_5

    :catch_0
    :cond_14
    :goto_4
    move v6, v7

    .line 601
    :goto_5
    iget-object v10, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v13, v14

    :goto_6
    if-ge v13, v10, :cond_18

    .line 602
    iget-object v15, v0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 603
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 604
    new-instance v7, Lorg/telegram/ui/Cells/LanguageCell;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Cells/LanguageCell;-><init>(Landroid/content/Context;)V

    .line 605
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v7, v12, v14, v1, v14}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 606
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 608
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v6, :cond_15

    if-nez v1, :cond_15

    .line 610
    sget v12, Lorg/telegram/messenger/R$string;->StoragePathFreeValueExternal:I

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v11, 0x1

    aput-object v8, v14, v11

    const-string v15, "StoragePathFreeValueExternal"

    invoke-static {v15, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_15
    const/4 v11, 0x1

    if-eqz v1, :cond_16

    .line 613
    sget v12, Lorg/telegram/messenger/R$string;->StoragePathFreeInternal:I

    new-array v14, v11, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const-string v15, "StoragePathFreeInternal"

    invoke-static {v15, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_7

    :cond_16
    const/16 v17, 0x0

    .line 615
    sget v12, Lorg/telegram/messenger/R$string;->StoragePathFreeExternal:I

    new-array v14, v11, [Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v17

    const-string v11, "StoragePathFreeExternal"

    invoke-static {v11, v12, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :goto_7
    if-eqz v1, :cond_17

    .line 620
    sget v11, Lorg/telegram/messenger/R$string;->InternalStorage:I

    const-string v14, "InternalStorage"

    goto :goto_8

    :cond_17
    sget v11, Lorg/telegram/messenger/R$string;->SdCard:I

    const-string v14, "SdCard"

    :goto_8
    invoke-static {v14, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 619
    invoke-virtual {v7, v11, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/telegram/ui/Cells/LanguageCell;->setLanguageSelected(ZZ)V

    .line 624
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 625
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 626
    new-instance v11, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0, v8, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 649
    :cond_18
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v9, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 650
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_f

    .line 651
    :cond_19
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    if-ne v3, v1, :cond_1a

    .line 652
    new-instance v1, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v1}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_f

    .line 653
    :cond_1a
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    if-ne v3, v1, :cond_1b

    .line 654
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMedia()V

    .line 655
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 656
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 657
    :cond_1b
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    if-ne v3, v1, :cond_1c

    .line 658
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamAllVideo()V

    .line 659
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 660
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 661
    :cond_1c
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    if-ne v3, v1, :cond_1d

    .line 662
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleStreamMkv()V

    .line 663
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 664
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 665
    :cond_1d
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    if-ne v3, v1, :cond_1e

    .line 666
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleSaveStreamMedia()V

    .line 667
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 668
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 669
    :cond_1e
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->quickRepliesRow:I

    if-ne v3, v1, :cond_1f

    .line 670
    new-instance v1, Lorg/telegram/ui/QuickRepliesSettingsActivity;

    invoke-direct {v1}, Lorg/telegram/ui/QuickRepliesSettingsActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_f

    .line 671
    :cond_1f
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->autoplayGifsRow:I

    if-ne v3, v1, :cond_20

    .line 672
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayGifs()V

    .line 673
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_32

    .line 674
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 676
    :cond_20
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->autoplayVideoRow:I

    if-ne v3, v1, :cond_21

    .line 677
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleAutoplayVideo()V

    .line 678
    instance-of v1, v2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v1, :cond_32

    .line 679
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_f

    .line 681
    :cond_21
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    if-ne v3, v1, :cond_32

    .line 683
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureClearDraftsTitle:I

    const-string v3, "AreYouSureClearDraftsTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 685
    sget v2, Lorg/telegram/messenger/R$string;->AreYouSureClearDrafts:I

    const-string v3, "AreYouSureClearDrafts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 686
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v3, "Delete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 690
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v9, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 691
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    .line 692
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 693
    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_32

    .line 695
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 408
    :cond_22
    :goto_9
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_23

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-lez v1, :cond_24

    :cond_23
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v1, v5

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_29

    .line 409
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v4, v0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    .line 411
    move-object v1, v2

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 412
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->isChecked()Z

    move-result v4

    .line 419
    iget v5, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne v3, v5, :cond_25

    .line 420
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 421
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v7, "mobilePreset"

    const-string v8, "currentMobilePreset"

    const/4 v12, 0x0

    goto :goto_a

    .line 425
    :cond_25
    iget v5, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v3, v5, :cond_26

    .line 426
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 427
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v7, "wifiPreset"

    const-string v8, "currentWifiPreset"

    const/4 v12, 0x1

    goto :goto_a

    .line 432
    :cond_26
    iget v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 433
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    const-string v7, "roamingPreset"

    const-string v8, "currentRoamingPreset"

    :goto_a
    if-nez v4, :cond_27

    .line 438
    iget-boolean v9, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v9, :cond_27

    .line 439
    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DownloadController$Preset;->set(Lorg/telegram/messenger/DownloadController$Preset;)V

    goto :goto_b

    .line 441
    :cond_27
    iget-boolean v6, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    const/4 v9, 0x1

    xor-int/2addr v6, v9

    iput-boolean v6, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 443
    :goto_b
    iget v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 444
    invoke-virtual {v5}, Lorg/telegram/messenger/DownloadController$Preset;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v6, v8, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 448
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setChecked(Z)V

    .line 449
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 451
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 453
    :cond_28
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    .line 454
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/telegram/messenger/DownloadController;->savePresetToServer(I)V

    const/4 v1, 0x0

    .line 455
    invoke-direct {v0, v1}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    goto/16 :goto_f

    :cond_29
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 458
    iget v2, v0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    if-ne v3, v2, :cond_2a

    move v7, v1

    goto :goto_c

    .line 460
    :cond_2a
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    if-ne v3, v1, :cond_2b

    move v7, v5

    goto :goto_c

    :cond_2b
    move v7, v12

    .line 465
    :goto_c
    new-instance v1, Lorg/telegram/ui/DataAutoDownloadActivity;

    invoke-direct {v1, v7}, Lorg/telegram/ui/DataAutoDownloadActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_f

    :cond_2c
    :goto_d
    move v5, v7

    if-ne v3, v6, :cond_2d

    move v7, v12

    goto :goto_e

    .line 393
    :cond_2d
    iget v1, v0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    if-ne v3, v1, :cond_2e

    const/4 v7, 0x4

    goto :goto_e

    :cond_2e
    move v7, v5

    .line 398
    :goto_e
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_2f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-lez v1, :cond_30

    :cond_2f
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_31

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_31

    .line 399
    :cond_30
    invoke-static {v7}, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->getSettings(I)Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->toggle()V

    .line 400
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    goto :goto_f

    .line 402
    :cond_31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 403
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    new-instance v2, Lorg/telegram/ui/SaveToGallerySettingsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/SaveToGallerySettingsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_32
    :goto_f
    return-void
.end method

.method private synthetic lambda$loadCacheSize$0()V
    .locals 1

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 260
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz v0, :cond_0

    .line 261
    invoke-direct {p0, v0}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$loadCacheSize$1(Ljava/lang/Runnable;JLjava/lang/Long;)V
    .locals 3

    .line 268
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 269
    iget-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    const-wide/16 p1, 0x78

    cmp-long p1, v1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/DataSettingsActivity;->updateStorageUsageAnimated:Z

    .line 270
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageSize:J

    .line 271
    iput-boolean v0, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageLoading:Z

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz p1, :cond_2

    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    if-ltz p1, :cond_2

    .line 273
    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setStorageDirectory$10()V
    .locals 0

    .line 718
    invoke-static {}, Lorg/telegram/ui/CacheControlActivity;->resetCalculatedTotalSIze()V

    .line 719
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->loadCacheSize()V

    return-void
.end method

.method private loadCacheSize()V
    .locals 4

    .line 258
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    const-wide/16 v1, 0x64

    .line 264
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 267
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DataSettingsActivity;Ljava/lang/Runnable;J)V

    invoke-static {v3}, Lorg/telegram/ui/CacheControlActivity;->calculateTotalSize(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private rebind(I)V
    .locals 3

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 283
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 284
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 287
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private rebindAll()V
    .locals 5

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 297
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 298
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 299
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private setStorageDirectory(Ljava/lang/String;)V
    .locals 1

    .line 711
    sput-object p1, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    .line 712
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 714
    sput-boolean p1, Lorg/telegram/messenger/SharedConfig;->readOnlyStorageDirAlertShowed:Z

    .line 716
    :cond_0
    iget p1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    invoke-direct {p0, p1}, Lorg/telegram/ui/DataSettingsActivity;->rebind(I)V

    .line 717
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageLoader;->checkMediaPaths(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 172
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSectionRow:I

    add-int/lit8 v3, v1, 0x1

    .line 173
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageUsageRow:I

    add-int/lit8 v1, v3, 0x1

    .line 174
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->dataUsageRow:I

    const/4 v1, -0x1

    .line 175
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 176
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 177
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRootDirs()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageDirs:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 179
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 183
    :cond_0
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    if-ne v3, v1, :cond_1

    .line 184
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->storageNumRow:I

    .line 186
    :cond_1
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->filesOriginalNameSavingEnabledRow:I

    add-int/lit8 v3, v4, 0x1

    .line 188
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->usageSection2Row:I

    add-int/lit8 v4, v3, 0x1

    .line 190
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSectionRow:I

    add-int/lit8 v3, v4, 0x1

    .line 191
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveAutoRow:I

    add-int/lit8 v4, v3, 0x1

    .line 192
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSaveManuallyRow:I

    add-int/lit8 v3, v4, 0x1

    .line 193
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->backupSection2Row:I

    add-int/lit8 v4, v3, 0x1

    .line 195
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSectionRow:I

    add-int/lit8 v3, v4, 0x1

    .line 196
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->mobileRow:I

    add-int/lit8 v4, v3, 0x1

    .line 197
    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->wifiRow:I

    add-int/lit8 v3, v4, 0x1

    .line 198
    iput v3, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    .line 199
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getDownloadController()Lorg/telegram/messenger/DownloadController;

    move-result-object v3

    .line 200
    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 201
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->lowPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v5, v3, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v5, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 202
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->mediumPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v5, v3, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v5, v5, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v5, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    .line 203
    invoke-virtual {v3}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DownloadController$Preset;->equals(Lorg/telegram/messenger/DownloadController$Preset;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/telegram/messenger/DownloadController;->highPreset:Lorg/telegram/messenger/DownloadController$Preset;

    invoke-virtual {v4}, Lorg/telegram/messenger/DownloadController$Preset;->isEnabled()Z

    move-result v4

    iget-object v3, v3, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v3, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-ne v4, v3, :cond_2

    move v0, v2

    .line 205
    :cond_2
    iget v3, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 206
    :cond_3
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    .line 207
    iget-object v4, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v4, :cond_6

    if-nez p1, :cond_6

    if-gez v3, :cond_4

    if-ltz v0, :cond_4

    .line 209
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    iget v2, p0, Lorg/telegram/ui/DataSettingsActivity;->resetDownloadRow:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_1

    :cond_4
    if-ltz v3, :cond_5

    if-gez v0, :cond_5

    .line 212
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->roamingRow:I

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_5
    move p1, v2

    .line 218
    :cond_6
    :goto_1
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->mediaDownloadSection2Row:I

    add-int/lit8 v0, v2, 0x1

    .line 220
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGallerySectionRow:I

    add-int/lit8 v2, v0, 0x1

    .line 221
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryPeerRow:I

    add-int/lit8 v0, v2, 0x1

    .line 222
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryGroupsRow:I

    add-int/lit8 v2, v0, 0x1

    .line 223
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryChannelsRow:I

    add-int/lit8 v0, v2, 0x1

    .line 224
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->saveToGalleryDividerRow:I

    add-int/lit8 v2, v0, 0x1

    .line 230
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->streamSectionRow:I

    add-int/lit8 v0, v2, 0x1

    .line 231
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableStreamRow:I

    .line 232
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v0, 0x1

    .line 233
    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    add-int/lit8 v0, v2, 0x1

    .line 234
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    goto :goto_2

    .line 236
    :cond_7
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamRow:I

    .line 237
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableMkvRow:I

    .line 239
    :goto_2
    iget v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->enableAllStreamInfoRow:I

    .line 241
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->enableCacheStreamRow:I

    add-int/lit8 v0, v2, 0x1

    .line 242
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSectionRow:I

    add-int/lit8 v1, v0, 0x1

    .line 243
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->useLessDataForCallsRow:I

    add-int/lit8 v0, v1, 0x1

    .line 245
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->callsSection2Row:I

    add-int/lit8 v1, v0, 0x1

    .line 246
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySectionRow:I

    add-int/lit8 v0, v1, 0x1

    .line 247
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->proxyRow:I

    add-int/lit8 v1, v0, 0x1

    .line 248
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->proxySection2Row:I

    add-int/lit8 v0, v1, 0x1

    .line 249
    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsRow:I

    add-int/lit8 v1, v0, 0x1

    .line 250
    iput v1, p0, Lorg/telegram/ui/DataSettingsActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/DataSettingsActivity;->clearDraftsSectionRow:I

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 253
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$string;->DataSettings:I

    const-string v2, "DataSettings"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/DataSettingsActivity$1;-><init>(Lorg/telegram/ui/DataSettingsActivity;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 335
    new-instance v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    .line 337
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 338
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 341
    new-instance v3, Lorg/telegram/ui/DataSettingsActivity$2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$2;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 350
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 351
    iget-object v3, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 352
    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x33

    const/4 v4, -0x1

    invoke-static {v4, v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/DataSettingsActivity;->listAdapter:Lorg/telegram/ui/DataSettingsActivity$ListAdapter;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DataSettingsActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 700
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const-wide/16 v2, 0x15e

    .line 701
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 702
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 703
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 704
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 705
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 707
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 92
    sget p2, Lorg/telegram/messenger/NotificationCenter;->backupDidUpload:I

    if-ne p1, p2, :cond_2

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DataSettingsActivity;->progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 99
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->info:I

    sget p3, Lorg/telegram/messenger/R$string;->cloud_albums_undo_forward_cloud:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1090
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/TextSettingsCell;

    const/4 v11, 0x0

    aput-object v2, v5, v11

    const-class v2, Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v12, 0x1

    aput-object v2, v5, v12

    const/4 v2, 0x2

    const-class v6, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v6, v5, v2

    const/4 v2, 0x3

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v5, v2

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
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

    .line 1095
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move-object v3, v2

    move/from16 v10, v20

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v4, v3, v11

    const-string v4, "textView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v5

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v7, v6, v11

    const-string v7, "valueTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v25

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v6

    move/from16 v29, v8

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v6, v3, v11

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v12, [Ljava/lang/Class;

    const-class v13, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    aput-object v13, v10, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v25

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v10

    move/from16 v29, v30

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v12, [Ljava/lang/Class;

    const-class v13, Landroid/view/View;

    aput-object v13, v10, v11

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v10, v3, v11

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v20, v10

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v14, v13, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v13

    move/from16 v26, v5

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v14, v13, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object/from16 v34, v13

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v13, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v13, v3, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v12, [Ljava/lang/Class;

    const-class v14, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v14, v13, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v13

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v11

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v8

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v7, v5, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v22

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    move/from16 v26, v9

    invoke-direct/range {v18 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v11

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    move/from16 v21, v30

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method protected onDialogDismiss(Landroid/app/Dialog;)V
    .locals 0

    .line 725
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->checkAutodownloadSettings()V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 160
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 162
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 163
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DownloadController;->loadAutoDownloadConfig(Z)V

    .line 164
    invoke-direct {p0, v1}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return v1
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 308
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 309
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/DataSettingsActivity;->observers:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    const/4 v0, 0x1

    .line 310
    sput-boolean v0, Lorg/telegram/ui/CacheControlActivity;->canceled:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 730
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 731
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->loadCacheSize()V

    .line 732
    invoke-direct {p0}, Lorg/telegram/ui/DataSettingsActivity;->rebindAll()V

    const/4 v0, 0x0

    .line 733
    invoke-direct {p0, v0}, Lorg/telegram/ui/DataSettingsActivity;->updateRows(Z)V

    return-void
.end method
